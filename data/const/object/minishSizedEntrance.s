	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08122254:: @ 08122254
	.4byte sub_08090EC0
	.4byte sub_08090F00

gUnk_0812225C:: @ 0812225C
	.incbin "baserom.gba", 0x12225C, 0x0000008
