	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
 @   .align 2

gSpriteAnimations_Pita_0:: @ 0810C445
	.include "animations/gSpriteAnimations_Pita_0.s"

gSpriteAnimations_Pita_4:: @ 0810C44A
	.include "animations/gSpriteAnimations_Pita_4.s"

gSpriteAnimations_Pita:: @ 0810C468
	.4byte gSpriteAnimations_Pita_0
	.4byte gSpriteAnimations_Pita_0
	.4byte gSpriteAnimations_Pita_0
	.4byte gSpriteAnimations_Pita_0
	.4byte gSpriteAnimations_Pita_4
	.4byte gSpriteAnimations_Pita_4
	.4byte gSpriteAnimations_Pita_4
	.4byte gSpriteAnimations_Pita_4
	.4byte 00000000
