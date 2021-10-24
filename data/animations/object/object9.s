	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object9_0:: @ 0811F760
	.include "animations/gSpriteAnimations_Object9_0.s"

gSpriteAnimations_Object9_1:: @ 0811F795
	.include "animations/gSpriteAnimations_Object9_1.s"

gSpriteAnimations_Object9:: @ 0811F7CC
	.4byte gSpriteAnimations_Object9_0
	.4byte gSpriteAnimations_Object9_1
	.4byte 00000000
