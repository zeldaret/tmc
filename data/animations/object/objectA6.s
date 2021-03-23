	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124808:: @ 08124808
	.incbin "baserom.gba", 0x124808, 0x0000014

gUnk_0812481C:: @ 0812481C
	.4byte gUnk_08124808
	.4byte 00000000
