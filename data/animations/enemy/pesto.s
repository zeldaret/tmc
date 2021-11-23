	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_Pesto_0:: @ 080CBF30
	.include "animations/gSpriteAnimations_Pesto_0.s"

gSpriteAnimations_Pesto_1:: @ 080CBF39
	.include "animations/gSpriteAnimations_Pesto_1.s"

gSpriteAnimations_Pesto_2:: @ 080CBF42
	.include "animations/gSpriteAnimations_Pesto_2.s"

gSpriteAnimations_Pesto_3:: @ 080CBF4B
	.include "animations/gSpriteAnimations_Pesto_3.s"

gSpriteAnimations_Pesto_4:: @ 080CBF54
	.include "animations/gSpriteAnimations_Pesto_4.s"

gSpriteAnimations_Pesto_5:: @ 080CBF5D
	.include "animations/gSpriteAnimations_Pesto_5.s"

gSpriteAnimations_Pesto_6:: @ 080CBF66
	.include "animations/gSpriteAnimations_Pesto_6.s"

gSpriteAnimations_Pesto_7:: @ 080CBF6F
	.include "animations/gSpriteAnimations_Pesto_7.s"

gSpriteAnimations_Pesto:: @ 080CBF78
	.4byte gSpriteAnimations_Pesto_0
	.4byte gSpriteAnimations_Pesto_1
	.4byte gSpriteAnimations_Pesto_2
	.4byte gSpriteAnimations_Pesto_3
	.4byte gSpriteAnimations_Pesto_4
	.4byte gSpriteAnimations_Pesto_5
	.4byte gSpriteAnimations_Pesto_6
	.4byte gSpriteAnimations_Pesto_7
	.4byte 00000000
