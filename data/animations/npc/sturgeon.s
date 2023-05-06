	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Sturgeon_4:: @ 0810FB24
	.include "animations/gSpriteAnimations_Sturgeon_4.s"

gSpriteAnimations_Sturgeon_5:: @ 0810FB39
	.include "animations/gSpriteAnimations_Sturgeon_5.s"

gSpriteAnimations_Sturgeon_6:: @ 0810FB4E
	.include "animations/gSpriteAnimations_Sturgeon_6.s"

gSpriteAnimations_Sturgeon_7:: @ 0810FB63
	.include "animations/gSpriteAnimations_Sturgeon_7.s"

gSpriteAnimations_Sturgeon_0:: @ 0810FB78
	.include "animations/gSpriteAnimations_Sturgeon_0.s"

gSpriteAnimations_Sturgeon_1:: @ 0810FB7D
	.include "animations/gSpriteAnimations_Sturgeon_1.s"

gSpriteAnimations_Sturgeon_2:: @ 0810FB82
	.include "animations/gSpriteAnimations_Sturgeon_2.s"

gSpriteAnimations_Sturgeon_3:: @ 0810FB87
	.include "animations/gSpriteAnimations_Sturgeon_3.s"

gSpriteAnimations_Sturgeon_8:: @ 0810FB8C
	.include "animations/gSpriteAnimations_Sturgeon_8.s"

gSpriteAnimations_Sturgeon_9:: @ 0810FBAD
	.include "animations/gSpriteAnimations_Sturgeon_9.s"

gSpriteAnimations_Sturgeon:: @ 0810FBD0
	.4byte gSpriteAnimations_Sturgeon_0
	.4byte gSpriteAnimations_Sturgeon_1
	.4byte gSpriteAnimations_Sturgeon_2
	.4byte gSpriteAnimations_Sturgeon_3
	.4byte gSpriteAnimations_Sturgeon_4
	.4byte gSpriteAnimations_Sturgeon_5
	.4byte gSpriteAnimations_Sturgeon_6
	.4byte gSpriteAnimations_Sturgeon_7
	.4byte gSpriteAnimations_Sturgeon_8
	.4byte gSpriteAnimations_Sturgeon_9
	.4byte 00000000
