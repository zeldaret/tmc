	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Bird_1_0:: @ 08123F0C
	.include "animations/gSpriteAnimations_Bird_1_0.s"

gSpriteAnimations_Bird_1:: @ 08123F20
	.4byte gSpriteAnimations_Bird_1_0
	.include "animations/gSpriteAnimations_Bird_1.s"

gSpriteAnimations_Bird_0_0:: @ 08123F28
	.include "animations/gSpriteAnimations_Bird_0_0.s"

gSpriteAnimations_Bird_0_1:: @ 08123F49
	.include "animations/gSpriteAnimations_Bird_0_1.s"

gSpriteAnimations_Bird_0_2:: @ 08123F62
	.include "animations/gSpriteAnimations_Bird_0_2.s"

gSpriteAnimations_Bird_0_3:: @ 08123F7B
	.include "animations/gSpriteAnimations_Bird_0_3.s"

gSpriteAnimations_Bird:: @ 08123F9C
	.4byte gSpriteAnimations_Bird_0_0
	.4byte gSpriteAnimations_Bird_0_1
	.4byte gSpriteAnimations_Bird_0_2
	.4byte gSpriteAnimations_Bird_0_3
	.4byte 00000000
