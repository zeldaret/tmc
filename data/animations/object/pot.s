	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Pot_0:: @ 0811F0DC
	.include "animations/gSpriteAnimations_Pot_0.s"

gSpriteAnimations_Pot_1:: @ 0811F0E1
	.include "animations/gSpriteAnimations_Pot_1.s"

gSpriteAnimations_Pot_2:: @ 0811F0E6
	.include "animations/gSpriteAnimations_Pot_2.s"

gSpriteAnimations_Pot_3:: @ 0811F0EB
	.include "animations/gSpriteAnimations_Pot_3.s"

gSpriteAnimations_Pot_4:: @ 0811F0F0
	.include "animations/gSpriteAnimations_Pot_4.s"

gSpriteAnimations_Pot_5:: @ 0811F0F5
	.include "animations/gSpriteAnimations_Pot_5.s"

gSpriteAnimations_Pot_6:: @ 0811F0FA
	.include "animations/gSpriteAnimations_Pot_6.s"

gSpriteAnimations_Pot_7:: @ 0811F0FF
	.include "animations/gSpriteAnimations_Pot_7.s"

gSpriteAnimations_Pot_8:: @ 0811F104
	.include "animations/gSpriteAnimations_Pot_8.s"

gSpriteAnimations_Pot_9:: @ 0811F109
	.include "animations/gSpriteAnimations_Pot_9.s"

gSpriteAnimations_Pot_10:: @ 0811F10E
	.include "animations/gSpriteAnimations_Pot_10.s"

gSpriteAnimations_Pot_11:: @ 0811F113
	.include "animations/gSpriteAnimations_Pot_11.s"

gSpriteAnimations_Pot:: @ 0811F118
	.4byte gSpriteAnimations_Pot_0
	.4byte gSpriteAnimations_Pot_1
	.4byte gSpriteAnimations_Pot_2
	.4byte gSpriteAnimations_Pot_3
	.4byte gSpriteAnimations_Pot_4
	.4byte gSpriteAnimations_Pot_5
	.4byte gSpriteAnimations_Pot_6
	.4byte gSpriteAnimations_Pot_7
	.4byte gSpriteAnimations_Pot_8
	.4byte gSpriteAnimations_Pot_9
	.4byte gSpriteAnimations_Pot_10
	.4byte gSpriteAnimations_Pot_11
	.4byte 00000000
