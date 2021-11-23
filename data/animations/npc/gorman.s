	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Gorman_0:: @ 08111CBC
	.include "animations/gSpriteAnimations_Gorman_0.s"

gSpriteAnimations_Gorman_1:: @ 08111CC1
	.include "animations/gSpriteAnimations_Gorman_1.s"

gSpriteAnimations_Gorman_2:: @ 08111CC6
	.include "animations/gSpriteAnimations_Gorman_2.s"

gSpriteAnimations_Gorman_3:: @ 08111CCB
	.include "animations/gSpriteAnimations_Gorman_3.s"

gSpriteAnimations_Gorman_4:: @ 08111CD0
	.include "animations/gSpriteAnimations_Gorman_4.s"

gSpriteAnimations_Gorman_6:: @ 08111CE9
	.include "animations/gSpriteAnimations_Gorman_6.s"

gSpriteAnimations_Gorman_7:: @ 08111D02
	.include "animations/gSpriteAnimations_Gorman_7.s"

gSpriteAnimations_Gorman_5:: @ 08111D1B
	.include "animations/gSpriteAnimations_Gorman_5.s"

gSpriteAnimations_Gorman:: @ 08111D34
	.4byte gSpriteAnimations_Gorman_0
	.4byte gSpriteAnimations_Gorman_1
	.4byte gSpriteAnimations_Gorman_2
	.4byte gSpriteAnimations_Gorman_3
	.4byte gSpriteAnimations_Gorman_4
	.4byte gSpriteAnimations_Gorman_5
	.4byte gSpriteAnimations_Gorman_6
	.4byte gSpriteAnimations_Gorman_7
	.4byte 00000000
