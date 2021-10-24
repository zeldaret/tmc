	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object98_0:: @ 08124194
	.include "animations/gSpriteAnimations_Object98_0.s"

gSpriteAnimations_Object98_1:: @ 081241DC
	.include "animations/gSpriteAnimations_Object98_1.s"

gSpriteAnimations_Object98_2:: @ 08124224
	.include "animations/gSpriteAnimations_Object98_2.s"

gSpriteAnimations_Object98_3:: @ 0812426C
	.include "animations/gSpriteAnimations_Object98_3.s"

gSpriteAnimations_Object98:: @ 081242B4
	.4byte gSpriteAnimations_Object98_0
	.4byte gSpriteAnimations_Object98_1
	.4byte gSpriteAnimations_Object98_2
	.4byte gSpriteAnimations_Object98_3
	.4byte 00000000
