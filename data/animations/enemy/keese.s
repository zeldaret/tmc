	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_Keese_0:: @ 080CB706
	.include "animations/gSpriteAnimations_Keese_0.s"

gSpriteAnimations_Keese_1:: @ 080CB71E
	.include "animations/gSpriteAnimations_Keese_1.s"

gSpriteAnimations_Keese:: @ 080CB728
	.4byte gSpriteAnimations_Keese_0
	.4byte gSpriteAnimations_Keese_1
	.4byte 00000000
