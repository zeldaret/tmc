	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Rope_0:: @ 080CE47C
	.include "animations/gSpriteAnimations_Rope_0.s"

gSpriteAnimations_Rope_1:: @ 080CE48D
	.include "animations/gSpriteAnimations_Rope_1.s"

gSpriteAnimations_Rope_2:: @ 080CE49E
	.include "animations/gSpriteAnimations_Rope_2.s"

gSpriteAnimations_Rope_3:: @ 080CE4AF
	.include "animations/gSpriteAnimations_Rope_3.s"

gSpriteAnimations_Rope_4:: @ 080CE4C0
	.include "animations/gSpriteAnimations_Rope_4.s"

gSpriteAnimations_Rope_5:: @ 080CE4D1
	.include "animations/gSpriteAnimations_Rope_5.s"

gSpriteAnimations_Rope_6:: @ 080CE4E2
	.include "animations/gSpriteAnimations_Rope_6.s"

gSpriteAnimations_Rope_7:: @ 080CE4F3
	.include "animations/gSpriteAnimations_Rope_7.s"

gSpriteAnimations_Rope:: @ 080CE50C
	.4byte gSpriteAnimations_Rope_0
	.4byte gSpriteAnimations_Rope_1
	.4byte gSpriteAnimations_Rope_2
	.4byte gSpriteAnimations_Rope_3
	.4byte gSpriteAnimations_Rope_4
	.4byte gSpriteAnimations_Rope_5
	.4byte gSpriteAnimations_Rope_6
	.4byte gSpriteAnimations_Rope_7
	.4byte 00000000
