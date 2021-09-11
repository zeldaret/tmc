	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124808:: @ 08124808
	.incbin "objectA6/gUnk_08124808.bin"

gUnk_0812481C:: @ 0812481C
	.4byte gUnk_08124808
	.4byte 00000000
