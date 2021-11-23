	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Pinwheel_0:: @ 08125068
	.include "animations/gSpriteAnimations_Pinwheel_0.s"

gSpriteAnimations_Pinwheel:: @ 0812507C
	.4byte gSpriteAnimations_Pinwheel_0
	.4byte 00000000
