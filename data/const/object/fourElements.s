	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124898:: @ 08124898
	.4byte sub_080A01E0
	.4byte sub_080A0290
	.4byte sub_080A02CC
	.4byte sub_080A034C
	.4byte sub_080A0390
	.4byte sub_080A03B8
	.4byte sub_080A03E8

gUnk_081248B4:: @ 081248B4
	.incbin "baserom.gba", 0x1248B4, 0x0000008
