	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Mama_4:: @ 081137B0
	.include "animations/gSpriteAnimations_Mama_4.s"

gSpriteAnimations_Mama_0:: @ 081137E9
	.include "animations/gSpriteAnimations_Mama_0.s"

gSpriteAnimations_Mama_1:: @ 08113892
	.include "animations/gSpriteAnimations_Mama_1.s"

gSpriteAnimations_Mama_2:: @ 08113897
	.include "animations/gSpriteAnimations_Mama_2.s"

gSpriteAnimations_Mama_3:: @ 081138B0
	.include "animations/gSpriteAnimations_Mama_3.s"

gSpriteAnimations_Mama:: @ 081138B8
	.4byte gSpriteAnimations_Mama_0
	.4byte gSpriteAnimations_Mama_1
	.4byte gSpriteAnimations_Mama_2
	.4byte gSpriteAnimations_Mama_3
	.4byte gSpriteAnimations_Mama_4
	.4byte gSpriteAnimations_Mama_4
	.4byte gSpriteAnimations_Mama_4
	.4byte gSpriteAnimations_Mama_4
	.4byte 00000000
