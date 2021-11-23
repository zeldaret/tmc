	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_Townsperson_0:: @ 0810BD00
	.include "animations/gSpriteAnimations_Townsperson_0.s"

gSpriteAnimations_Townsperson_1:: @ 0810BD05
	.include "animations/gSpriteAnimations_Townsperson_1.s"

gSpriteAnimations_Townsperson_2:: @ 0810BD0A
	.include "animations/gSpriteAnimations_Townsperson_2.s"

gSpriteAnimations_Townsperson_3:: @ 0810BD0F
	.include "animations/gSpriteAnimations_Townsperson_3.s"

gSpriteAnimations_Townsperson_4:: @ 0810BD14
	.include "animations/gSpriteAnimations_Townsperson_4.s"

gSpriteAnimations_Townsperson_5:: @ 0810BD25
	.include "animations/gSpriteAnimations_Townsperson_5.s"

gSpriteAnimations_Townsperson_6:: @ 0810BD36
	.include "animations/gSpriteAnimations_Townsperson_6.s"

gSpriteAnimations_Townsperson_7:: @ 0810BD47
	.include "animations/gSpriteAnimations_Townsperson_7.s"

gSpriteAnimations_Townsperson:: @ 0810BD58
	.4byte gSpriteAnimations_Townsperson_0
	.4byte gSpriteAnimations_Townsperson_1
	.4byte gSpriteAnimations_Townsperson_2
	.4byte gSpriteAnimations_Townsperson_3
	.4byte gSpriteAnimations_Townsperson_4
	.4byte gSpriteAnimations_Townsperson_5
	.4byte gSpriteAnimations_Townsperson_6
	.4byte gSpriteAnimations_Townsperson_7
	.4byte 00000000
