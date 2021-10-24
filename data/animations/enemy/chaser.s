	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_Chaser_0:: @ 080CD2A8
	.include "animations/gSpriteAnimations_Chaser_0.s"

gSpriteAnimations_Chaser_1:: @ 080CD2AC
	.include "animations/gSpriteAnimations_Chaser_1.s"

gSpriteAnimations_Chaser_2:: @ 080CD2BD
	.include "animations/gSpriteAnimations_Chaser_2.s"

gSpriteAnimations_Chaser:: @ 080CD2C8
	.4byte gSpriteAnimations_Chaser_0
	.4byte gSpriteAnimations_Chaser_1
	.4byte gSpriteAnimations_Chaser_2
	.4byte 00000000
