	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_RotatingTrapdoor_0:: @ 08121B94
	.include "animations/gSpriteAnimations_RotatingTrapdoor_0.s"

gSpriteAnimations_RotatingTrapdoor:: @ 08121BD0
	.4byte gSpriteAnimations_RotatingTrapdoor_0
	.4byte 00000000
