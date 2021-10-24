	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_Crow_0:: @ 080CE9B0
	.include "animations/gSpriteAnimations_Crow_0.s"

gSpriteAnimations_Crow_1:: @ 080CE9B5
	.include "animations/gSpriteAnimations_Crow_1.s"

gSpriteAnimations_Crow_2:: @ 080CE9BA
	.include "animations/gSpriteAnimations_Crow_2.s"

gSpriteAnimations_Crow_3:: @ 080CE9CB
	.include "animations/gSpriteAnimations_Crow_3.s"

gSpriteAnimations_Crow_4:: @ 080CE9DC
	.include "animations/gSpriteAnimations_Crow_4.s"

gSpriteAnimations_Crow_5:: @ 080CE9ED
	.include "animations/gSpriteAnimations_Crow_5.s"

gSpriteAnimations_Crow:: @ 080CEA00
	.4byte gSpriteAnimations_Crow_0
	.4byte gSpriteAnimations_Crow_1
	.4byte gSpriteAnimations_Crow_2
	.4byte gSpriteAnimations_Crow_3
	.4byte gSpriteAnimations_Crow_4
	.4byte gSpriteAnimations_Crow_5
	.4byte 00000000
