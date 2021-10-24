	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_WizzrobeFire_0:: @ 080CDFE8
	.include "animations/gSpriteAnimations_WizzrobeFire_0.s"

gSpriteAnimations_WizzrobeFire_1:: @ 080CDFF5
	.include "animations/gSpriteAnimations_WizzrobeFire_1.s"

gSpriteAnimations_WizzrobeFire_2:: @ 080CE002
	.include "animations/gSpriteAnimations_WizzrobeFire_2.s"

gSpriteAnimations_WizzrobeFire_3:: @ 080CE00F
	.include "animations/gSpriteAnimations_WizzrobeFire_3.s"

gSpriteAnimations_WizzrobeFire_4:: @ 080CE01C
	.include "animations/gSpriteAnimations_WizzrobeFire_4.s"

gSpriteAnimations_WizzrobeFire_5:: @ 080CE029
	.include "animations/gSpriteAnimations_WizzrobeFire_5.s"

gSpriteAnimations_WizzrobeFire_6:: @ 080CE036
	.include "animations/gSpriteAnimations_WizzrobeFire_6.s"

gSpriteAnimations_WizzrobeFire_7:: @ 080CE043
	.include "animations/gSpriteAnimations_WizzrobeFire_7.s"

gSpriteAnimations_WizzrobeFire:: @ 080CE050
	.4byte gSpriteAnimations_WizzrobeFire_0
	.4byte gSpriteAnimations_WizzrobeFire_1
	.4byte gSpriteAnimations_WizzrobeFire_2
	.4byte gSpriteAnimations_WizzrobeFire_3
	.4byte gSpriteAnimations_WizzrobeFire_4
	.4byte gSpriteAnimations_WizzrobeFire_5
	.4byte gSpriteAnimations_WizzrobeFire_6
	.4byte gSpriteAnimations_WizzrobeFire_7
	.4byte 00000000
