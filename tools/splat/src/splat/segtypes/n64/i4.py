import n64img.image

from .img import N64SegImg


class N64SegI4(N64SegImg):
    def __init__(self, *args, **kwargs):
        kwargs["img_cls"] = n64img.image.I4
        super().__init__(*args, **kwargs)
