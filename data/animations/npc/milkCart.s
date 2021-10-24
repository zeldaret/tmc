	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_MilkCart_0:: @ 08110120
	.include "animations/gSpriteAnimations_MilkCart_0.s"

gSpriteAnimations_MilkCart_4:: @ 08110125
	.include "animations/gSpriteAnimations_MilkCart_4.s"

gSpriteAnimations_MilkCart:: @ 08110138
	.4byte gSpriteAnimations_MilkCart_0
	.4byte gSpriteAnimations_MilkCart_0
	.4byte gSpriteAnimations_MilkCart_0
	.4byte gSpriteAnimations_MilkCart_0
	.4byte gSpriteAnimations_MilkCart_4
	.4byte gSpriteAnimations_MilkCart_4
	.4byte gSpriteAnimations_MilkCart_4
	.4byte gSpriteAnimations_MilkCart_4
	.4byte 00000000
