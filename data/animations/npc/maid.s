	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_Maid_0:: @ 0810F8E4
	.include "animations/gSpriteAnimations_Maid_0.s"

gSpriteAnimations_Maid_1:: @ 0810F8E9
	.include "animations/gSpriteAnimations_Maid_1.s"

gSpriteAnimations_Maid_2:: @ 0810F8EE
	.include "animations/gSpriteAnimations_Maid_2.s"

gSpriteAnimations_Maid_3:: @ 0810F8F3
	.include "animations/gSpriteAnimations_Maid_3.s"

gSpriteAnimations_Maid_4:: @ 0810F8F8
	.include "animations/gSpriteAnimations_Maid_4.s"

gSpriteAnimations_Maid_5:: @ 0810F909
	.include "animations/gSpriteAnimations_Maid_5.s"

gSpriteAnimations_Maid_6:: @ 0810F91A
	.include "animations/gSpriteAnimations_Maid_6.s"

gSpriteAnimations_Maid_7:: @ 0810F92B
	.include "animations/gSpriteAnimations_Maid_7.s"

gSpriteAnimations_Maid_8:: @ 0810F93C
	.include "animations/gSpriteAnimations_Maid_8.s"

gSpriteAnimations_Maid:: @ 0810F944
	.4byte gSpriteAnimations_Maid_0
	.4byte gSpriteAnimations_Maid_1
	.4byte gSpriteAnimations_Maid_2
	.4byte gSpriteAnimations_Maid_3
	.4byte gSpriteAnimations_Maid_4
	.4byte gSpriteAnimations_Maid_5
	.4byte gSpriteAnimations_Maid_6
	.4byte gSpriteAnimations_Maid_7
	.4byte gSpriteAnimations_Maid_8
	.4byte 00000000
