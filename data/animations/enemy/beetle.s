	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_Beetle_0:: @ 080CB5EC
	.include "animations/gSpriteAnimations_Beetle_0.s"

gSpriteAnimations_Beetle_1:: @ 080CB600
	.include "animations/gSpriteAnimations_Beetle_1.s"

gSpriteAnimations_Beetle_2:: @ 080CB61C
	.include "animations/gSpriteAnimations_Beetle_2.s"

gSpriteAnimations_Beetle_3:: @ 080CB62D
	.include "animations/gSpriteAnimations_Beetle_3.s"

gSpriteAnimations_Beetle_4:: @ 080CB645
	.include "animations/gSpriteAnimations_Beetle_4.s"

gSpriteAnimations_Beetle_5:: @ 080CB65D
	.include "animations/gSpriteAnimations_Beetle_5.s"

gSpriteAnimations_Beetle_6:: @ 080CB671
	.include "animations/gSpriteAnimations_Beetle_6.s"

gSpriteAnimations_Beetle:: @ 080CB67C
	.4byte gSpriteAnimations_Beetle_0
	.4byte gSpriteAnimations_Beetle_1
	.4byte gSpriteAnimations_Beetle_2
	.4byte gSpriteAnimations_Beetle_3
	.4byte gSpriteAnimations_Beetle_4
	.4byte gSpriteAnimations_Beetle_5
	.4byte gSpriteAnimations_Beetle_6
	.4byte 00000000
