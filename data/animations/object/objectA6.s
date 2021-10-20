	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124808:: @ 08124808
	.incbin "objectA6/gUnk_08124808.bin"

gSpriteAnimations_ObjectA6:: @ 0812481C
	.4byte gUnk_08124808
	.4byte 00000000
