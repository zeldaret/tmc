	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_SmallIceBlock_0:: @ 0812376A
	.include "animations/gSpriteAnimations_SmallIceBlock_0.s"

gSpriteAnimations_SmallIceBlock_1:: @ 0812376E
	.include "animations/gSpriteAnimations_SmallIceBlock_1.s"

gSpriteAnimations_SmallIceBlock_2:: @ 08123772
	.include "animations/gSpriteAnimations_SmallIceBlock_2.s"

gSpriteAnimations_SmallIceBlock_3:: @ 08123776
	.include "animations/gSpriteAnimations_SmallIceBlock_3.s"

gSpriteAnimations_SmallIceBlock:: @ 0812378C
	.4byte gSpriteAnimations_SmallIceBlock_0
	.4byte gSpriteAnimations_SmallIceBlock_1
	.4byte gSpriteAnimations_SmallIceBlock_2
	.4byte gSpriteAnimations_SmallIceBlock_3
	.4byte 00000000
