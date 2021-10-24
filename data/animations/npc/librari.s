	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_Librari_0:: @ 08112D5A
	.include "animations/gSpriteAnimations_Librari_0.s"

gSpriteAnimations_Librari_8:: @ 08112D6F
	.include "animations/gSpriteAnimations_Librari_8.s"

gSpriteAnimations_Librari_4:: @ 08112D78
	.include "animations/gSpriteAnimations_Librari_4.s"

gSpriteAnimations_Librari_6:: @ 08112D89
	.include "animations/gSpriteAnimations_Librari_6.s"

gSpriteAnimations_Librari_9:: @ 08112D9A
	.include "animations/gSpriteAnimations_Librari_9.s"

gSpriteAnimations_Librari_10:: @ 08112DE7
	.include "animations/gSpriteAnimations_Librari_10.s"

gSpriteAnimations_Librari:: @ 08112DEC
	.4byte gSpriteAnimations_Librari_0
	.4byte gSpriteAnimations_Librari_0
	.4byte gSpriteAnimations_Librari_0
	.4byte gSpriteAnimations_Librari_0
	.4byte gSpriteAnimations_Librari_4
	.4byte gSpriteAnimations_Librari_4
	.4byte gSpriteAnimations_Librari_6
	.4byte gSpriteAnimations_Librari_6
	.4byte gSpriteAnimations_Librari_8
	.4byte gSpriteAnimations_Librari_9
	.4byte gSpriteAnimations_Librari_10
	.4byte 00000000
