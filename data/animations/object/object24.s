	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_Object24_0:: @ 08120BF1
	.include "animations/gSpriteAnimations_Object24_0.s"

gSpriteAnimations_Object24_1:: @ 08120BF5
	.include "animations/gSpriteAnimations_Object24_1.s"

gSpriteAnimations_Object24_2:: @ 08120BF9
	.include "animations/gSpriteAnimations_Object24_2.s"

gSpriteAnimations_Object24_3:: @ 08120BFD
	.include "animations/gSpriteAnimations_Object24_3.s"

gSpriteAnimations_Object24_4:: @ 08120C01
	.include "animations/gSpriteAnimations_Object24_4.s"

gSpriteAnimations_Object24:: @ 08120C08
	.4byte gSpriteAnimations_Object24_0
	.4byte gSpriteAnimations_Object24_1
	.4byte gSpriteAnimations_Object24_2
	.4byte gSpriteAnimations_Object24_3
	.4byte gSpriteAnimations_Object24_4
