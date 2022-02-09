	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Armos_0:: @ 080CE16C
	.include "animations/gSpriteAnimations_Armos_0.s"

gSpriteAnimations_Armos_1:: @ 080CE185
	.include "animations/gSpriteAnimations_Armos_1.s"

gSpriteAnimations_Armos_2:: @ 080CE19E
	.include "animations/gSpriteAnimations_Armos_2.s"

gSpriteAnimations_Armos_3:: @ 080CE1B7
	.include "animations/gSpriteAnimations_Armos_3.s"

gSpriteAnimations_Armos_4:: @ 080CE1D0
	.include "animations/gSpriteAnimations_Armos_4.s"

gSpriteAnimations_Armos_5:: @ 080CE205
	.include "animations/gSpriteAnimations_Armos_5.s"

gSpriteAnimations_Armos_6:: @ 080CE246
	.include "animations/gSpriteAnimations_Armos_6.s"

gSpriteAnimations_Armos_7:: @ 080CE25E
	.include "animations/gSpriteAnimations_Armos_7.s"

gSpriteAnimations_Armos:: @ 080CE264
	.4byte gSpriteAnimations_Armos_0
	.4byte gSpriteAnimations_Armos_1
	.4byte gSpriteAnimations_Armos_2
	.4byte gSpriteAnimations_Armos_3
	.4byte gSpriteAnimations_Armos_4
	.4byte gSpriteAnimations_Armos_5
	.4byte gSpriteAnimations_Armos_6
	.4byte gSpriteAnimations_Armos_7
	.4byte 00000000
