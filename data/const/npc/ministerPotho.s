	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110644:: @ 08110644
	.4byte sub_080667E4
	.4byte sub_08066808
	.4byte sub_0806685C

gUnk_08110650:: @ 08110650
	.incbin "baserom.gba", 0x110650, 0x0000008
