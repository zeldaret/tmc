	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812283C:: @ 0812283C
	.4byte sub_08092EEC
	.4byte sub_08092F68
	.4byte sub_080930F4
	.4byte sub_08093178
	.4byte nullsub_120

gUnk_08122850:: @ 08122850
	.incbin "baserom.gba", 0x122850, 0x0000012

gUnk_08122862:: @ 08122862
	.incbin "baserom.gba", 0x122862, 0x0000012

gUnk_08122874:: @ 08122874
	.incbin "baserom.gba", 0x122874, 0x0000012

gUnk_08122886:: @ 08122886
	.incbin "baserom.gba", 0x122886, 0x0000012

gUnk_08122898:: @ 08122898
	.incbin "baserom.gba", 0x122898, 0x0000010
