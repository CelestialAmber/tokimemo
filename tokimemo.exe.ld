SECTIONS
{
    __romPos = 0;
    _gp = 0x800F0D90;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        header_DATA_START = .;
        header = .;
        build/asm/header.o(.data);
        header_DATA_END = .;
        header_DATA_SIZE = ABSOLUTE(header_DATA_END - header_DATA_START);
    }
    __romPos += SIZEOF(.header);
    header_ROM_END = __romPos;
    header_VRAM_END = .;

    _80_ROM_START = __romPos;
    _80_VRAM = ADDR(._80);
    ._80 : AT(_80_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        _80_DATA_START = .;
        _80 = .;
        build/assets/80.o(.data);
        _80_DATA_END = .;
        _80_DATA_SIZE = ABSOLUTE(_80_DATA_END - _80_DATA_START);
    }
    __romPos += SIZEOF(._80);
    _80_ROM_END = __romPos;
    _80_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80041000 : AT(main_ROM_START) SUBALIGN(2)
    {
        FILL(0x00000000);
        main_TEXT_START = .;
        build/asm/main.o(.text);
        build/asm/2480.o(.text);
        build/asm/2F50.o(.text);
        build/asm/4160.o(.text);
        build/asm/4C00.o(.text);
        build/asm/60D0.o(.text);
        build/asm/7090.o(.text);
        build/asm/8B40.o(.text);
        build/asm/9B60.o(.text);
        build/asm/A8D0.o(.text);
        build/asm/B0F0.o(.text);
        build/asm/BF50.o(.text);
        build/asm/F2D0.o(.text);
        build/asm/F490.o(.text);
        build/asm/13230.o(.text);
        build/asm/133E0.o(.text);
        build/asm/15E70.o(.text);
        build/asm/15F60.o(.text);
        build/asm/188A0.o(.text);
        build/asm/19290.o(.text);
        build/asm/195A0.o(.text);
        build/asm/19B00.o(.text);
        build/asm/21140.o(.text);
        build/asm/22670.o(.text);
        build/asm/27760.o(.text);
        build/asm/2B1A0.o(.text);
        build/asm/2C3D0.o(.text);
        build/asm/34BE0.o(.text);
        build/asm/38270.o(.text);
        build/asm/393A0.o(.text);
        build/asm/45850.o(.text);
        build/asm/461A0.o(.text);
        build/asm/467B0.o(.text);
        build/asm/47A60.o(.text);
        build/asm/47AE0.o(.text);
        build/asm/47B70.o(.text);
        build/asm/486D0.o(.text);
        build/asm/48790.o(.text);
        build/asm/49100.o(.text);
        build/asm/4A940.o(.text);
        build/asm/4A9D0.o(.text);
        build/asm/4AA30.o(.text);
        build/asm/4AA50.o(.text);
        build/asm/4AA90.o(.text);
        build/asm/4AB10.o(.text);
        build/asm/4B6E0.o(.text);
        build/asm/4B790.o(.text);
        build/asm/4BDF0.o(.text);
        build/asm/4BF00.o(.text);
        build/asm/4C000.o(.text);
        build/asm/4F1D0.o(.text);
        build/asm/4F570.o(.text);
        build/asm/4F920.o(.text);
        build/asm/501E0.o(.text);
        build/asm/503A0.o(.text);
        build/asm/50400.o(.text);
        build/asm/50480.o(.text);
        build/asm/504A0.o(.text);
        build/asm/504C0.o(.text);
        build/asm/505A0.o(.text);
        build/asm/50880.o(.text);
        build/asm/50960.o(.text);
        build/asm/50D70.o(.text);
        build/asm/511E0.o(.text);
        build/asm/51210.o(.text);
        build/asm/513A0.o(.text);
        build/asm/51970.o(.text);
        build/asm/51FB0.o(.text);
        build/asm/542D0.o(.text);
        build/asm/543C0.o(.text);
        build/asm/545F0.o(.text);
        build/asm/54820.o(.text);
        build/asm/54840.o(.text);
        build/asm/549E0.o(.text);
        build/asm/54B10.o(.text);
        build/asm/54D10.o(.text);
        build/asm/54E20.o(.text);
        build/asm/54EA0.o(.text);
        build/asm/56D80.o(.text);
        build/asm/56F70.o(.text);
        build/asm/57E00.o(.text);
        build/asm/57EC0.o(.text);
        build/asm/57FD0.o(.text);
        build/asm/585D0.o(.text);
        build/asm/58B60.o(.text);
        build/asm/58C80.o(.text);
        build/asm/58D20.o(.text);
        build/asm/58DD0.o(.text);
        build/asm/58DE0.o(.text);
        build/asm/58E40.o(.text);
        build/asm/58E70.o(.text);
        build/asm/59370.o(.text);
        build/asm/594F0.o(.text);
        build/asm/59D30.o(.text);
        build/asm/5A300.o(.text);
        build/asm/5A5A0.o(.text);
        build/asm/5A970.o(.text);
        build/asm/5ABC0.o(.text);
        build/asm/5C2B0.o(.text);
        build/asm/5C360.o(.text);
        build/asm/5C390.o(.text);
        build/asm/5C3C0.o(.text);
        build/asm/5C3D0.o(.text);
        build/asm/5C970.o(.text);
        build/asm/5C9A0.o(.text);
        build/asm/5CAE0.o(.text);
        build/asm/5CB70.o(.text);
        build/asm/5D930.o(.text);
        build/asm/5D9F0.o(.text);
        build/asm/5E060.o(.text);
        build/asm/5E130.o(.text);
        build/asm/5E370.o(.text);
        build/asm/5F0B0.o(.text);
        build/asm/5F170.o(.text);
        build/asm/621A0.o(.text);
        build/asm/62B20.o(.text);
        build/asm/62D40.o(.text);
        build/asm/641A0.o(.text);
        build/asm/64660.o(.text);
        build/asm/64780.o(.text);
        build/asm/64900.o(.text);
        build/asm/65240.o(.text);
        build/asm/65C60.o(.text);
        build/asm/661C0.o(.text);
        build/asm/66790.o(.text);
        build/asm/66D40.o(.text);
        build/asm/681A0.o(.text);
        build/asm/68840.o(.text);
        build/asm/68FB0.o(.text);
        build/asm/6A520.o(.text);
        build/asm/6AFD0.o(.text);
        build/asm/6C0B0.o(.text);
        build/asm/6CCA0.o(.text);
        build/asm/6D9B0.o(.text);
        build/asm/6E6C0.o(.text);
        build/asm/6F540.o(.text);
        build/asm/70660.o(.text);
        build/asm/708A0.o(.text);
        build/asm/70AE0.o(.text);
        build/asm/70E50.o(.text);
        build/asm/71580.o(.text);
        build/asm/71D90.o(.text);
        build/asm/72CA0.o(.text);
        build/asm/732C0.o(.text);
        build/asm/73A00.o(.text);
        build/asm/73AD0.o(.text);
        build/asm/73C30.o(.text);
        build/asm/73F60.o(.text);
        build/asm/74E50.o(.text);
        build/asm/74EE0.o(.text);
        build/asm/74F00.o(.text);
        build/asm/75100.o(.text);
        . = ALIGN(., 16);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_RODATA_START = .;
        build/asm/main.o(.rodata);
        build/asm/2480.o(.rodata);
        build/asm/2F50.o(.rodata);
        build/asm/4160.o(.rodata);
        build/asm/4C00.o(.rodata);
        build/asm/60D0.o(.rodata);
        build/asm/7090.o(.rodata);
        build/asm/8B40.o(.rodata);
        build/asm/9B60.o(.rodata);
        build/asm/A8D0.o(.rodata);
        build/asm/B0F0.o(.rodata);
        build/asm/BF50.o(.rodata);
        build/asm/F2D0.o(.rodata);
        build/asm/F490.o(.rodata);
        build/asm/13230.o(.rodata);
        build/asm/133E0.o(.rodata);
        build/asm/15E70.o(.rodata);
        build/asm/15F60.o(.rodata);
        build/asm/188A0.o(.rodata);
        build/asm/19290.o(.rodata);
        build/asm/195A0.o(.rodata);
        build/asm/19B00.o(.rodata);
        build/asm/21140.o(.rodata);
        build/asm/22670.o(.rodata);
        build/asm/27760.o(.rodata);
        build/asm/2B1A0.o(.rodata);
        build/asm/2C3D0.o(.rodata);
        build/asm/34BE0.o(.rodata);
        build/asm/38270.o(.rodata);
        build/asm/393A0.o(.rodata);
        build/asm/45850.o(.rodata);
        build/asm/461A0.o(.rodata);
        build/asm/467B0.o(.rodata);
        build/asm/47A60.o(.rodata);
        build/asm/47AE0.o(.rodata);
        build/asm/47B70.o(.rodata);
        build/asm/486D0.o(.rodata);
        build/asm/48790.o(.rodata);
        build/asm/49100.o(.rodata);
        build/asm/4A940.o(.rodata);
        build/asm/4A9D0.o(.rodata);
        build/asm/4AA30.o(.rodata);
        build/asm/4AA50.o(.rodata);
        build/asm/4AA90.o(.rodata);
        build/asm/4AB10.o(.rodata);
        build/asm/4B6E0.o(.rodata);
        build/asm/4B790.o(.rodata);
        build/asm/4BDF0.o(.rodata);
        build/asm/4BF00.o(.rodata);
        build/asm/4C000.o(.rodata);
        build/asm/4F1D0.o(.rodata);
        build/asm/4F570.o(.rodata);
        build/asm/4F920.o(.rodata);
        build/asm/501E0.o(.rodata);
        build/asm/503A0.o(.rodata);
        build/asm/50400.o(.rodata);
        build/asm/50480.o(.rodata);
        build/asm/504A0.o(.rodata);
        build/asm/504C0.o(.rodata);
        build/asm/505A0.o(.rodata);
        build/asm/50880.o(.rodata);
        build/asm/50960.o(.rodata);
        build/asm/50D70.o(.rodata);
        build/asm/511E0.o(.rodata);
        build/asm/51210.o(.rodata);
        build/asm/513A0.o(.rodata);
        build/asm/51970.o(.rodata);
        build/asm/51FB0.o(.rodata);
        build/asm/542D0.o(.rodata);
        build/asm/543C0.o(.rodata);
        build/asm/545F0.o(.rodata);
        build/asm/54820.o(.rodata);
        build/asm/54840.o(.rodata);
        build/asm/549E0.o(.rodata);
        build/asm/54B10.o(.rodata);
        build/asm/54D10.o(.rodata);
        build/asm/54E20.o(.rodata);
        build/asm/54EA0.o(.rodata);
        build/asm/56D80.o(.rodata);
        build/asm/56F70.o(.rodata);
        build/asm/57E00.o(.rodata);
        build/asm/57EC0.o(.rodata);
        build/asm/57FD0.o(.rodata);
        build/asm/585D0.o(.rodata);
        build/asm/58B60.o(.rodata);
        build/asm/58C80.o(.rodata);
        build/asm/58D20.o(.rodata);
        build/asm/58DD0.o(.rodata);
        build/asm/58DE0.o(.rodata);
        build/asm/58E40.o(.rodata);
        build/asm/58E70.o(.rodata);
        build/asm/59370.o(.rodata);
        build/asm/594F0.o(.rodata);
        build/asm/59D30.o(.rodata);
        build/asm/5A300.o(.rodata);
        build/asm/5A5A0.o(.rodata);
        build/asm/5A970.o(.rodata);
        build/asm/5ABC0.o(.rodata);
        build/asm/5C2B0.o(.rodata);
        build/asm/5C360.o(.rodata);
        build/asm/5C390.o(.rodata);
        build/asm/5C3C0.o(.rodata);
        build/asm/5C3D0.o(.rodata);
        build/asm/5C970.o(.rodata);
        build/asm/5C9A0.o(.rodata);
        build/asm/5CAE0.o(.rodata);
        build/asm/5CB70.o(.rodata);
        build/asm/5D930.o(.rodata);
        build/asm/5D9F0.o(.rodata);
        build/asm/5E060.o(.rodata);
        build/asm/5E130.o(.rodata);
        build/asm/5E370.o(.rodata);
        build/asm/5F0B0.o(.rodata);
        build/asm/5F170.o(.rodata);
        build/asm/621A0.o(.rodata);
        build/asm/62B20.o(.rodata);
        build/asm/62D40.o(.rodata);
        build/asm/641A0.o(.rodata);
        build/asm/64660.o(.rodata);
        build/asm/64780.o(.rodata);
        build/asm/64900.o(.rodata);
        build/asm/65240.o(.rodata);
        build/asm/65C60.o(.rodata);
        build/asm/661C0.o(.rodata);
        build/asm/66790.o(.rodata);
        build/asm/66D40.o(.rodata);
        build/asm/681A0.o(.rodata);
        build/asm/68840.o(.rodata);
        build/asm/68FB0.o(.rodata);
        build/asm/6A520.o(.rodata);
        build/asm/6AFD0.o(.rodata);
        build/asm/6C0B0.o(.rodata);
        build/asm/6CCA0.o(.rodata);
        build/asm/6D9B0.o(.rodata);
        build/asm/6E6C0.o(.rodata);
        build/asm/6F540.o(.rodata);
        build/asm/70660.o(.rodata);
        build/asm/708A0.o(.rodata);
        build/asm/70AE0.o(.rodata);
        build/asm/70E50.o(.rodata);
        build/asm/71580.o(.rodata);
        build/asm/71D90.o(.rodata);
        build/asm/72CA0.o(.rodata);
        build/asm/732C0.o(.rodata);
        build/asm/73A00.o(.rodata);
        build/asm/73AD0.o(.rodata);
        build/asm/73C30.o(.rodata);
        build/asm/73F60.o(.rodata);
        build/asm/74E50.o(.rodata);
        build/asm/74EE0.o(.rodata);
        build/asm/74F00.o(.rodata);
        build/asm/75100.o(.rodata);
        build/asm/data/75290.rodata.o(.rodata);
        build/asm/data/75730.rodata.o(.rodata);
        build/asm/data/75A50.rodata.o(.rodata);
        build/asm/data/75A70.rodata.o(.rodata);
        build/asm/data/75A90.rodata.o(.rodata);
        build/asm/data/75B10.rodata.o(.rodata);
        build/asm/data/75B30.rodata.o(.rodata);
        build/asm/data/75BB0.rodata.o(.rodata);
        build/asm/data/75BC0.rodata.o(.rodata);
        build/asm/data/75DB0.rodata.o(.rodata);
        build/asm/data/75DD0.rodata.o(.rodata);
        build/asm/data/76EC0.rodata.o(.rodata);
        build/asm/data/77100.rodata.o(.rodata);
        build/asm/data/774B0.rodata.o(.rodata);
        build/asm/data/77550.rodata.o(.rodata);
        build/asm/data/778E0.rodata.o(.rodata);
        build/asm/data/77DF0.rodata.o(.rodata);
        build/asm/data/77FC0.rodata.o(.rodata);
        build/asm/data/78420.rodata.o(.rodata);
        build/asm/data/78460.rodata.o(.rodata);
        build/asm/data/78470.rodata.o(.rodata);
        build/asm/data/78490.rodata.o(.rodata);
        build/asm/data/78940.rodata.o(.rodata);
        build/asm/data/78B20.rodata.o(.rodata);
        build/asm/data/78B40.rodata.o(.rodata);
        build/asm/data/78D90.rodata.o(.rodata);
        build/asm/data/78E90.rodata.o(.rodata);
        . = ALIGN(., 16);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
        main_DATA_START = .;
        main = .;
        build/asm/main.o(.data);
        _2480 = .;
        build/asm/2480.o(.data);
        _2F50 = .;
        build/asm/2F50.o(.data);
        _4160 = .;
        build/asm/4160.o(.data);
        _4C00 = .;
        build/asm/4C00.o(.data);
        _60D0 = .;
        build/asm/60D0.o(.data);
        _7090 = .;
        build/asm/7090.o(.data);
        _8B40 = .;
        build/asm/8B40.o(.data);
        _9B60 = .;
        build/asm/9B60.o(.data);
        A8D0 = .;
        build/asm/A8D0.o(.data);
        B0F0 = .;
        build/asm/B0F0.o(.data);
        BF50 = .;
        build/asm/BF50.o(.data);
        F2D0 = .;
        build/asm/F2D0.o(.data);
        F490 = .;
        build/asm/F490.o(.data);
        _13230 = .;
        build/asm/13230.o(.data);
        _133E0 = .;
        build/asm/133E0.o(.data);
        _15E70 = .;
        build/asm/15E70.o(.data);
        _15F60 = .;
        build/asm/15F60.o(.data);
        _188A0 = .;
        build/asm/188A0.o(.data);
        _19290 = .;
        build/asm/19290.o(.data);
        _195A0 = .;
        build/asm/195A0.o(.data);
        _19B00 = .;
        build/asm/19B00.o(.data);
        _21140 = .;
        build/asm/21140.o(.data);
        _22670 = .;
        build/asm/22670.o(.data);
        _27760 = .;
        build/asm/27760.o(.data);
        _2B1A0 = .;
        build/asm/2B1A0.o(.data);
        _2C3D0 = .;
        build/asm/2C3D0.o(.data);
        _34BE0 = .;
        build/asm/34BE0.o(.data);
        _38270 = .;
        build/asm/38270.o(.data);
        _393A0 = .;
        build/asm/393A0.o(.data);
        _45850 = .;
        build/asm/45850.o(.data);
        _461A0 = .;
        build/asm/461A0.o(.data);
        _467B0 = .;
        build/asm/467B0.o(.data);
        _47A60 = .;
        build/asm/47A60.o(.data);
        _47AE0 = .;
        build/asm/47AE0.o(.data);
        _47B70 = .;
        build/asm/47B70.o(.data);
        _486D0 = .;
        build/asm/486D0.o(.data);
        _48790 = .;
        build/asm/48790.o(.data);
        _49100 = .;
        build/asm/49100.o(.data);
        _4A940 = .;
        build/asm/4A940.o(.data);
        _4A9D0 = .;
        build/asm/4A9D0.o(.data);
        _4AA30 = .;
        build/asm/4AA30.o(.data);
        _4AA50 = .;
        build/asm/4AA50.o(.data);
        _4AA90 = .;
        build/asm/4AA90.o(.data);
        _4AB10 = .;
        build/asm/4AB10.o(.data);
        _4B6E0 = .;
        build/asm/4B6E0.o(.data);
        _4B790 = .;
        build/asm/4B790.o(.data);
        _4BDF0 = .;
        build/asm/4BDF0.o(.data);
        _4BF00 = .;
        build/asm/4BF00.o(.data);
        _4C000 = .;
        build/asm/4C000.o(.data);
        _4F1D0 = .;
        build/asm/4F1D0.o(.data);
        _4F570 = .;
        build/asm/4F570.o(.data);
        _4F920 = .;
        build/asm/4F920.o(.data);
        _501E0 = .;
        build/asm/501E0.o(.data);
        _503A0 = .;
        build/asm/503A0.o(.data);
        _50400 = .;
        build/asm/50400.o(.data);
        _50480 = .;
        build/asm/50480.o(.data);
        _504A0 = .;
        build/asm/504A0.o(.data);
        _504C0 = .;
        build/asm/504C0.o(.data);
        _505A0 = .;
        build/asm/505A0.o(.data);
        _50880 = .;
        build/asm/50880.o(.data);
        _50960 = .;
        build/asm/50960.o(.data);
        _50D70 = .;
        build/asm/50D70.o(.data);
        _511E0 = .;
        build/asm/511E0.o(.data);
        _51210 = .;
        build/asm/51210.o(.data);
        _513A0 = .;
        build/asm/513A0.o(.data);
        _51970 = .;
        build/asm/51970.o(.data);
        _51FB0 = .;
        build/asm/51FB0.o(.data);
        _542D0 = .;
        build/asm/542D0.o(.data);
        _543C0 = .;
        build/asm/543C0.o(.data);
        _545F0 = .;
        build/asm/545F0.o(.data);
        _54820 = .;
        build/asm/54820.o(.data);
        _54840 = .;
        build/asm/54840.o(.data);
        _549E0 = .;
        build/asm/549E0.o(.data);
        _54B10 = .;
        build/asm/54B10.o(.data);
        _54D10 = .;
        build/asm/54D10.o(.data);
        _54E20 = .;
        build/asm/54E20.o(.data);
        _54EA0 = .;
        build/asm/54EA0.o(.data);
        _56D80 = .;
        build/asm/56D80.o(.data);
        _56F70 = .;
        build/asm/56F70.o(.data);
        _57E00 = .;
        build/asm/57E00.o(.data);
        _57EC0 = .;
        build/asm/57EC0.o(.data);
        _57FD0 = .;
        build/asm/57FD0.o(.data);
        _585D0 = .;
        build/asm/585D0.o(.data);
        _58B60 = .;
        build/asm/58B60.o(.data);
        _58C80 = .;
        build/asm/58C80.o(.data);
        _58D20 = .;
        build/asm/58D20.o(.data);
        _58DD0 = .;
        build/asm/58DD0.o(.data);
        _58DE0 = .;
        build/asm/58DE0.o(.data);
        _58E40 = .;
        build/asm/58E40.o(.data);
        _58E70 = .;
        build/asm/58E70.o(.data);
        _59370 = .;
        build/asm/59370.o(.data);
        _594F0 = .;
        build/asm/594F0.o(.data);
        _59D30 = .;
        build/asm/59D30.o(.data);
        _5A300 = .;
        build/asm/5A300.o(.data);
        _5A5A0 = .;
        build/asm/5A5A0.o(.data);
        _5A970 = .;
        build/asm/5A970.o(.data);
        _5ABC0 = .;
        build/asm/5ABC0.o(.data);
        _5C2B0 = .;
        build/asm/5C2B0.o(.data);
        _5C360 = .;
        build/asm/5C360.o(.data);
        _5C390 = .;
        build/asm/5C390.o(.data);
        _5C3C0 = .;
        build/asm/5C3C0.o(.data);
        _5C3D0 = .;
        build/asm/5C3D0.o(.data);
        _5C970 = .;
        build/asm/5C970.o(.data);
        _5C9A0 = .;
        build/asm/5C9A0.o(.data);
        _5CAE0 = .;
        build/asm/5CAE0.o(.data);
        _5CB70 = .;
        build/asm/5CB70.o(.data);
        _5D930 = .;
        build/asm/5D930.o(.data);
        _5D9F0 = .;
        build/asm/5D9F0.o(.data);
        _5E060 = .;
        build/asm/5E060.o(.data);
        _5E130 = .;
        build/asm/5E130.o(.data);
        _5E370 = .;
        build/asm/5E370.o(.data);
        _5F0B0 = .;
        build/asm/5F0B0.o(.data);
        _5F170 = .;
        build/asm/5F170.o(.data);
        _621A0 = .;
        build/asm/621A0.o(.data);
        _62B20 = .;
        build/asm/62B20.o(.data);
        _62D40 = .;
        build/asm/62D40.o(.data);
        _641A0 = .;
        build/asm/641A0.o(.data);
        _64660 = .;
        build/asm/64660.o(.data);
        _64780 = .;
        build/asm/64780.o(.data);
        _64900 = .;
        build/asm/64900.o(.data);
        _65240 = .;
        build/asm/65240.o(.data);
        _65C60 = .;
        build/asm/65C60.o(.data);
        _661C0 = .;
        build/asm/661C0.o(.data);
        _66790 = .;
        build/asm/66790.o(.data);
        _66D40 = .;
        build/asm/66D40.o(.data);
        _681A0 = .;
        build/asm/681A0.o(.data);
        _68840 = .;
        build/asm/68840.o(.data);
        _68FB0 = .;
        build/asm/68FB0.o(.data);
        _6A520 = .;
        build/asm/6A520.o(.data);
        _6AFD0 = .;
        build/asm/6AFD0.o(.data);
        _6C0B0 = .;
        build/asm/6C0B0.o(.data);
        _6CCA0 = .;
        build/asm/6CCA0.o(.data);
        _6D9B0 = .;
        build/asm/6D9B0.o(.data);
        _6E6C0 = .;
        build/asm/6E6C0.o(.data);
        _6F540 = .;
        build/asm/6F540.o(.data);
        _70660 = .;
        build/asm/70660.o(.data);
        _708A0 = .;
        build/asm/708A0.o(.data);
        _70AE0 = .;
        build/asm/70AE0.o(.data);
        _70E50 = .;
        build/asm/70E50.o(.data);
        _71580 = .;
        build/asm/71580.o(.data);
        _71D90 = .;
        build/asm/71D90.o(.data);
        _72CA0 = .;
        build/asm/72CA0.o(.data);
        _732C0 = .;
        build/asm/732C0.o(.data);
        _73A00 = .;
        build/asm/73A00.o(.data);
        _73AD0 = .;
        build/asm/73AD0.o(.data);
        _73C30 = .;
        build/asm/73C30.o(.data);
        _73F60 = .;
        build/asm/73F60.o(.data);
        _74E50 = .;
        build/asm/74E50.o(.data);
        _74EE0 = .;
        build/asm/74EE0.o(.data);
        _74F00 = .;
        build/asm/74F00.o(.data);
        _75100 = .;
        build/asm/75100.o(.data);
        _78F10_data = .;
        build/asm/data/78F10.data.o(.data);
        . = ALIGN(., 16);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(2)
    {
        FILL(0x00000000);
        main_BSS_START = .;
        build/asm/main.o(.bss);
        build/asm/2480.o(.bss);
        build/asm/2F50.o(.bss);
        build/asm/4160.o(.bss);
        build/asm/4C00.o(.bss);
        build/asm/60D0.o(.bss);
        build/asm/7090.o(.bss);
        build/asm/8B40.o(.bss);
        build/asm/9B60.o(.bss);
        build/asm/A8D0.o(.bss);
        build/asm/B0F0.o(.bss);
        build/asm/BF50.o(.bss);
        build/asm/F2D0.o(.bss);
        build/asm/F490.o(.bss);
        build/asm/13230.o(.bss);
        build/asm/133E0.o(.bss);
        build/asm/15E70.o(.bss);
        build/asm/15F60.o(.bss);
        build/asm/188A0.o(.bss);
        build/asm/19290.o(.bss);
        build/asm/195A0.o(.bss);
        build/asm/19B00.o(.bss);
        build/asm/21140.o(.bss);
        build/asm/22670.o(.bss);
        build/asm/27760.o(.bss);
        build/asm/2B1A0.o(.bss);
        build/asm/2C3D0.o(.bss);
        build/asm/34BE0.o(.bss);
        build/asm/38270.o(.bss);
        build/asm/393A0.o(.bss);
        build/asm/45850.o(.bss);
        build/asm/461A0.o(.bss);
        build/asm/467B0.o(.bss);
        build/asm/47A60.o(.bss);
        build/asm/47AE0.o(.bss);
        build/asm/47B70.o(.bss);
        build/asm/486D0.o(.bss);
        build/asm/48790.o(.bss);
        build/asm/49100.o(.bss);
        build/asm/4A940.o(.bss);
        build/asm/4A9D0.o(.bss);
        build/asm/4AA30.o(.bss);
        build/asm/4AA50.o(.bss);
        build/asm/4AA90.o(.bss);
        build/asm/4AB10.o(.bss);
        build/asm/4B6E0.o(.bss);
        build/asm/4B790.o(.bss);
        build/asm/4BDF0.o(.bss);
        build/asm/4BF00.o(.bss);
        build/asm/4C000.o(.bss);
        build/asm/4F1D0.o(.bss);
        build/asm/4F570.o(.bss);
        build/asm/4F920.o(.bss);
        build/asm/501E0.o(.bss);
        build/asm/503A0.o(.bss);
        build/asm/50400.o(.bss);
        build/asm/50480.o(.bss);
        build/asm/504A0.o(.bss);
        build/asm/504C0.o(.bss);
        build/asm/505A0.o(.bss);
        build/asm/50880.o(.bss);
        build/asm/50960.o(.bss);
        build/asm/50D70.o(.bss);
        build/asm/511E0.o(.bss);
        build/asm/51210.o(.bss);
        build/asm/513A0.o(.bss);
        build/asm/51970.o(.bss);
        build/asm/51FB0.o(.bss);
        build/asm/542D0.o(.bss);
        build/asm/543C0.o(.bss);
        build/asm/545F0.o(.bss);
        build/asm/54820.o(.bss);
        build/asm/54840.o(.bss);
        build/asm/549E0.o(.bss);
        build/asm/54B10.o(.bss);
        build/asm/54D10.o(.bss);
        build/asm/54E20.o(.bss);
        build/asm/54EA0.o(.bss);
        build/asm/56D80.o(.bss);
        build/asm/56F70.o(.bss);
        build/asm/57E00.o(.bss);
        build/asm/57EC0.o(.bss);
        build/asm/57FD0.o(.bss);
        build/asm/585D0.o(.bss);
        build/asm/58B60.o(.bss);
        build/asm/58C80.o(.bss);
        build/asm/58D20.o(.bss);
        build/asm/58DD0.o(.bss);
        build/asm/58DE0.o(.bss);
        build/asm/58E40.o(.bss);
        build/asm/58E70.o(.bss);
        build/asm/59370.o(.bss);
        build/asm/594F0.o(.bss);
        build/asm/59D30.o(.bss);
        build/asm/5A300.o(.bss);
        build/asm/5A5A0.o(.bss);
        build/asm/5A970.o(.bss);
        build/asm/5ABC0.o(.bss);
        build/asm/5C2B0.o(.bss);
        build/asm/5C360.o(.bss);
        build/asm/5C390.o(.bss);
        build/asm/5C3C0.o(.bss);
        build/asm/5C3D0.o(.bss);
        build/asm/5C970.o(.bss);
        build/asm/5C9A0.o(.bss);
        build/asm/5CAE0.o(.bss);
        build/asm/5CB70.o(.bss);
        build/asm/5D930.o(.bss);
        build/asm/5D9F0.o(.bss);
        build/asm/5E060.o(.bss);
        build/asm/5E130.o(.bss);
        build/asm/5E370.o(.bss);
        build/asm/5F0B0.o(.bss);
        build/asm/5F170.o(.bss);
        build/asm/621A0.o(.bss);
        build/asm/62B20.o(.bss);
        build/asm/62D40.o(.bss);
        build/asm/641A0.o(.bss);
        build/asm/64660.o(.bss);
        build/asm/64780.o(.bss);
        build/asm/64900.o(.bss);
        build/asm/65240.o(.bss);
        build/asm/65C60.o(.bss);
        build/asm/661C0.o(.bss);
        build/asm/66790.o(.bss);
        build/asm/66D40.o(.bss);
        build/asm/681A0.o(.bss);
        build/asm/68840.o(.bss);
        build/asm/68FB0.o(.bss);
        build/asm/6A520.o(.bss);
        build/asm/6AFD0.o(.bss);
        build/asm/6C0B0.o(.bss);
        build/asm/6CCA0.o(.bss);
        build/asm/6D9B0.o(.bss);
        build/asm/6E6C0.o(.bss);
        build/asm/6F540.o(.bss);
        build/asm/70660.o(.bss);
        build/asm/708A0.o(.bss);
        build/asm/70AE0.o(.bss);
        build/asm/70E50.o(.bss);
        build/asm/71580.o(.bss);
        build/asm/71D90.o(.bss);
        build/asm/72CA0.o(.bss);
        build/asm/732C0.o(.bss);
        build/asm/73A00.o(.bss);
        build/asm/73AD0.o(.bss);
        build/asm/73C30.o(.bss);
        build/asm/73F60.o(.bss);
        build/asm/74E50.o(.bss);
        build/asm/74EE0.o(.bss);
        build/asm/74F00.o(.bss);
        build/asm/75100.o(.bss);
        . = ALIGN(., 16);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    . = ALIGN(., 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
