	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_FlyingSkull_0:: @ 080CFBE8
	.include "animations/gSpriteAnimations_FlyingSkull_0.s"

gSpriteAnimations_FlyingSkull:: @ 080CFC0C
	.4byte gSpriteAnimations_FlyingSkull_0
	.4byte 00000000
