	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08122128:: @ 08122128
	.incbin "baserom.gba", 0x122128, 0x000000A
	.incbin "baserom.gba", 0x122132, 0x0000066

gUnk_08122198:: @ 08122198
	.incbin "baserom.gba", 0x122198, 0x0000010

gUnk_081221A8:: @ 081221A8
	.incbin "baserom.gba", 0x1221A8, 0x0000010

gUnk_081221B8:: @ 081221B8
	.incbin "baserom.gba", 0x1221B8, 0x0000010

gUnk_081221C8:: @ 081221C8
	.incbin "baserom.gba", 0x1221C8, 0x0000010

gUnk_081221D8:: @ 081221D8
	.incbin "baserom.gba", 0x1221D8, 0x0000010

gUnk_081221E8:: @ 081221E8
	.incbin "baserom.gba", 0x1221E8, 0x0000010

gUnk_081221F8:: @ 081221F8
	.incbin "baserom.gba", 0x1221F8, 0x0000010

gUnk_08122208:: @ 08122208
	.incbin "baserom.gba", 0x122208, 0x0000010

gUnk_08122218:: @ 08122218
	.4byte sub_080905B8
	.4byte sub_080909E8

gUnk_08122220:: @ 08122220
	.4byte gUnk_08122128
	.4byte gUnk_08122198
	.4byte gUnk_081221A8
	.4byte gUnk_081221B8
	.4byte gUnk_081221C8
	.4byte gUnk_081221D8
	.4byte gUnk_081221E8
	.4byte gUnk_081221F8
	.4byte gUnk_08122208

gUnk_08122244:: @ 08122244
	.incbin "baserom.gba", 0x122244, 0x0000010
