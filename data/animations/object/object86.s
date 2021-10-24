	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object86_0:: @ 0812380C
	.include "animations/gSpriteAnimations_Object86_0.s"

gSpriteAnimations_Object86_1:: @ 08123820
	.include "animations/gSpriteAnimations_Object86_1.s"

gSpriteAnimations_Object86:: @ 08123834
	.4byte gSpriteAnimations_Object86_0
	.4byte gSpriteAnimations_Object86_1
	.4byte 00000000
