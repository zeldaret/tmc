	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A494:: @ 0812A494
	.4byte sub_080AB074
	.4byte sub_080AB170
	.4byte sub_080AB170
	.4byte sub_080AB170
	.4byte sub_080AB26C

gUnk_0812A4A8:: @ 0812A4A8
	.incbin "baserom.gba", 0x12A4A8, 0x0000020
