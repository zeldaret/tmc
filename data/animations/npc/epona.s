	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Epona_0:: @ 08110088
	.include "animations/gSpriteAnimations_Epona_0.s"

gSpriteAnimations_Epona_2:: @ 0811008D
	.include "animations/gSpriteAnimations_Epona_2.s"

gSpriteAnimations_Epona_1:: @ 08110092
	.include "animations/gSpriteAnimations_Epona_1.s"

gSpriteAnimations_Epona_4:: @ 08110097
	.include "animations/gSpriteAnimations_Epona_4.s"

gSpriteAnimations_Epona_8:: @ 081100B8
	.include "animations/gSpriteAnimations_Epona_8.s"

gSpriteAnimations_Epona:: @ 081100E4
	.4byte gSpriteAnimations_Epona_0
	.4byte gSpriteAnimations_Epona_1
	.4byte gSpriteAnimations_Epona_2
	.4byte gSpriteAnimations_Epona_1
	.4byte gSpriteAnimations_Epona_4
	.4byte gSpriteAnimations_Epona_4
	.4byte gSpriteAnimations_Epona_4
	.4byte gSpriteAnimations_Epona_4
	.4byte gSpriteAnimations_Epona_8
	.4byte gSpriteAnimations_Epona_8
	.4byte gSpriteAnimations_Epona_8
	.4byte gSpriteAnimations_Epona_8
	.4byte 00000000
