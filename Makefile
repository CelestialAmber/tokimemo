TOKIMEMO_BASENAME    := tokimemo

BUILD_DIR       := build
TOOLS_DIR       := tools

TOKIMEMO_DIR         := $(TOKIMEMO_BASENAME)

TOKIMEMO_ASM_DIR     := asm/$(TOKIMEMO_DIR)
TOKIMEMO_ASM_DIRS    := $(TOKIMEMO_ASM_DIR)

TOKIMEMO_C_DIR       := src/$(TOKIMEMO_DIR)
TOKIMEMO_C_DIRS      := $(TOKIMEMO_C_DIR)

TOKIMEMO_ASSETS_DIR  := assets/$(TOKIMEMO_DIR)
TOKIMEMO_BIN_DIRS    := $(TOKIMEMO_ASSETS_DIR)

TOKIMEMO_TARGET      := $(BUILD_DIR)/$(TOKIMEMO_BASENAME).exe

TOKIMEMO_S_FILES     := $(foreach dir,$(TOKIMEMO_ASM_DIRS),$(wildcard $(dir)/*.s))
TOKIMEMO_C_FILES     := $(foreach dir,$(TOKIMEMO_C_DIRS),$(wildcard $(dir)/*.c))
TOKIMEMO_BIN_FILES   := $(foreach dir,$(TOKIMEMO_BIN_DIRS),$(wildcard $(dir)/*.bin))

ESA_O_FILES     := $(foreach file,$(TOKIMEMO_S_FILES),$(BUILD_DIR)/$(file).o) \
                   $(foreach file,$(TOKIMEMO_C_FILES),$(BUILD_DIR)/$(file).o) \
                   $(foreach file,$(TOKIMEMO_BIN_FILES),$(BUILD_DIR)/$(file).o)

MAKE            := make
PYTHON          := python3
SED             := sed
GREP            := grep
MODERN_GCC      := gcc

CPP             := cpp -E

CROSS           := mips-linux-gnu-

# CC              := $(TOOLS_DIR)/gcc-2.95.2/cc1 -quiet -meb -mcpu=r3000 -mgpopt -mgpOPT -msoft-float -msplit-addresses -mno-abicalls -fno-builtin -fsigned-char
# CC              := wine $(TOOLS_DIR)/psyq/psyq4.6/CC1PSX.EXE -quiet

GCC_INCLUDES    := -Iinclude
GCC             := $(TOOLS_DIR)/gcc-2.95.2/gcc -pipe -c -B$(TOOLS_DIR)/gcc-2.95.2/ $(GCC_INCLUDES)

AS              := $(CROSS)as -EL -32 -march=r3000 -mtune=r3000 -msoft-float -no-pad-sections -Iinclude/
LD              := $(CROSS)ld -EL
OBJCOPY         := $(CROSS)objcopy

SPLAT           := $(PYTHON) $(TOOLS_DIR)/splat/split.py

# flags

SDATA_LIMIT     := -G8
OPT_FLAGS       := -O2

AS_SDATA_LIMIT  := -G0

CPP_INCLUDES    := -Iinclude
CPP_FLAGS       := -undef -Wall -lang-c
CPP_FLAGS       += -Dmips -D__GNUC__=2 -D__OPTIMIZE__ -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D__EXTENSIONS__ -D_MIPSEL -D__CHAR_UNSIGNED__ -D_LANGUAGE_C -DLANGUAGE_C
CPP_FLAGS       += $(CPP_INCLUDES)

CC_FLAGS        := -mrnames -mel -mgpopt -mgpOPT -mgas -msoft-float -msplit-addresses -mno-abicalls -fno-builtin -fsigned-char -gcoff

CHECK_WARNINGS  := -Wall -Wextra -Wno-format-security -Wno-unknown-pragmas -Wno-unused-parameter -Wno-unused-variable -Wno-missing-braces -Wno-int-conversion
CC_CHECK        := $(MODERN_GCC) -fsyntax-only -fno-builtin -fsigned-char -std=gnu90 -m32 $(CHECK_WARNINGS) $(CPP_FLAGS)

AS_FLAGS        := -Wa,-EL,-march=r3000,-mtune=r3000,-msoft-float,-no-pad-sections,-Iinclude


OBJCOPY_FLAGS   := -O binary

TOKIMEMO_LD_FLAGS    := -Map $(TOKIMEMO_TARGET).map -T $(TOKIMEMO_BASENAME).ld \
                   -T undefined_syms_auto.$(TOKIMEMO_BASENAME).txt -T undefined_funcs_auto.$(TOKIMEMO_BASENAME).txt -T undefined_syms.$(TOKIMEMO_BASENAME).txt \
                   --no-check-sections $(LD_FLAGS_EXTRA)

# overrides

# recipes

default: all

all: dirs verify

dirs:
	$(foreach dir,$(TOKIMEMO_ASM_DIRS) $(TOKIMEMO_BIN_DIRS) $(TOKIMEMO_C_DIRS),$(shell mkdir -p $(BUILD_DIR)/$(dir)))

check: $(TOKIMEMO_BASENAME).ok
verify: $(TOKIMEMO_TARGET).ok

extract: $(TOKIMEMO_BASENAME).yaml
	$(SPLAT) $<

clean:
	rm -rf $(BUILD_DIR) $(TOKIMEMO_ASM_DIR) $(TOKIMEMO_ASSETS_DIR)

$(TOKIMEMO_TARGET).dat: $(TOKIMEMO_TARGET).elf
	$(OBJCOPY) $(OBJCOPY_FLAGS) $< $@

$(TOKIMEMO_TARGET).elf: $(ESA_O_FILES)
	$(LD) $(TOKIMEMO_LD_FLAGS) -o $@

$(BUILD_DIR)/%.s.o: %.s
	$(AS) $(AS_SDATA_LIMIT) -o $@ $<

$(BUILD_DIR)/%.bin.o: %.bin
	$(LD) -r -b binary -o $@ $<

$(BUILD_DIR)/%.c.o: %.c
	@$(CC_CHECK) $<
	$(GCC) $(CC_FLAGS) $(SDATA_LIMIT) $(OPT_FLAGS) $(AS_FLAGS),$(SDATA_LIMIT) $< -o $@

# $(BUILD_DIR)/%.c.o: %.c
# 	@$(CC_CHECK) $<
# 	$(CPP) $(CPP_FLAGS) $(CPP_TARGET) $< | $(CC) $(CC_FLAGS) $(OPT_FLAGS) -o $@.s_
# 	$(PYTHON) tools/maspsx/maspsx.py $@.s_ > $@.s
# 	$(AS) $(AS_FLAGS) $@.s -o $@

%.ok: %.dat
	@echo "$$(cat $(notdir $(<:.dat=)).sha1)  $<" | sha1sum --check
	@touch $@

$(BUILD_DIR)/%.a: %.a
	@mkdir -p $$(dirname $@)
	@cp $< $@

# keep .obj files
.SECONDARY:

.PHONY: all clean default
SHELL = /bin/bash -e -o pipefail