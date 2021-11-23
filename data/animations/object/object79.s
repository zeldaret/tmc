	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_Object79_0:: @ 08123422
	.include "animations/gSpriteAnimations_Object79_0.s"

gSpriteAnimations_Object79_1:: @ 0812343B
	.include "animations/gSpriteAnimations_Object79_1.s"

gSpriteAnimations_Object79_2:: @ 0812344C
	.include "animations/gSpriteAnimations_Object79_2.s"

gSpriteAnimations_Object79:: @ 08123474
	.4byte gSpriteAnimations_Object79_0
	.4byte gSpriteAnimations_Object79_1
	.4byte gSpriteAnimations_Object79_2
	.4byte 00000000
