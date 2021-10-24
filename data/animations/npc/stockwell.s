	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Stockwell_1:: @ 0810FDE8
	.include "animations/gSpriteAnimations_Stockwell_1.s"

gSpriteAnimations_Stockwell_0:: @ 0810FDED
	.include "animations/gSpriteAnimations_Stockwell_0.s"

gSpriteAnimations_Stockwell_3:: @ 0810FDF2
	.include "animations/gSpriteAnimations_Stockwell_3.s"

gSpriteAnimations_Stockwell_4:: @ 0810FDF7
	.include "animations/gSpriteAnimations_Stockwell_4.s"

gSpriteAnimations_Stockwell_5:: @ 0810FE03
	.include "animations/gSpriteAnimations_Stockwell_5.s"

gSpriteAnimations_Stockwell_6:: @ 0810FE1F
	.include "animations/gSpriteAnimations_Stockwell_6.s"

gSpriteAnimations_Stockwell_7:: @ 0810FE68
	.include "animations/gSpriteAnimations_Stockwell_7.s"

gSpriteAnimations_Stockwell:: @ 0810FE90
	.4byte gSpriteAnimations_Stockwell_0
	.4byte gSpriteAnimations_Stockwell_1
	.4byte gSpriteAnimations_Stockwell_0
	.4byte gSpriteAnimations_Stockwell_3
	.4byte gSpriteAnimations_Stockwell_4
	.4byte gSpriteAnimations_Stockwell_5
	.4byte gSpriteAnimations_Stockwell_6
	.4byte gSpriteAnimations_Stockwell_7
