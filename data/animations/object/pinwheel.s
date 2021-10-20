	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08125068:: @ 08125068
	.incbin "pinwheel/gUnk_08125068.bin"

gSpriteAnimations_Pinwheel:: @ 0812507C
	.4byte gUnk_08125068
	.4byte 00000000
