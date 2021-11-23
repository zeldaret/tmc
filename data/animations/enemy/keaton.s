	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Keaton_0:: @ 080CE818
	.include "animations/gSpriteAnimations_Keaton_0.s"

gSpriteAnimations_Keaton_1:: @ 080CE829
	.include "animations/gSpriteAnimations_Keaton_1.s"

gSpriteAnimations_Keaton_2:: @ 080CE83A
	.include "animations/gSpriteAnimations_Keaton_2.s"

gSpriteAnimations_Keaton_3:: @ 080CE84B
	.include "animations/gSpriteAnimations_Keaton_3.s"

gSpriteAnimations_Keaton_4:: @ 080CE85C
	.include "animations/gSpriteAnimations_Keaton_4.s"

gSpriteAnimations_Keaton_5:: @ 080CE86D
	.include "animations/gSpriteAnimations_Keaton_5.s"

gSpriteAnimations_Keaton_6:: @ 080CE87E
	.include "animations/gSpriteAnimations_Keaton_6.s"

gSpriteAnimations_Keaton_7:: @ 080CE88F
	.include "animations/gSpriteAnimations_Keaton_7.s"

gSpriteAnimations_Keaton_8:: @ 080CE8A0
	.include "animations/gSpriteAnimations_Keaton_8.s"

gSpriteAnimations_Keaton_9:: @ 080CE8C9
	.include "animations/gSpriteAnimations_Keaton_9.s"

gSpriteAnimations_Keaton_10:: @ 080CE8F2
	.include "animations/gSpriteAnimations_Keaton_10.s"

gSpriteAnimations_Keaton_11:: @ 080CE91B
	.include "animations/gSpriteAnimations_Keaton_11.s"

gSpriteAnimations_Keaton:: @ 080CE944
	.4byte gSpriteAnimations_Keaton_0
	.4byte gSpriteAnimations_Keaton_1
	.4byte gSpriteAnimations_Keaton_2
	.4byte gSpriteAnimations_Keaton_3
	.4byte gSpriteAnimations_Keaton_4
	.4byte gSpriteAnimations_Keaton_5
	.4byte gSpriteAnimations_Keaton_6
	.4byte gSpriteAnimations_Keaton_7
	.4byte gSpriteAnimations_Keaton_8
	.4byte gSpriteAnimations_Keaton_9
	.4byte gSpriteAnimations_Keaton_10
	.4byte gSpriteAnimations_Keaton_11
	.4byte 00000000
