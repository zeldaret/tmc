	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_BigVortex_0:: @ 08123698
	.include "animations/gSpriteAnimations_BigVortex_0.s"

gSpriteAnimations_BigVortex_1:: @ 081236A9
	.include "animations/gSpriteAnimations_BigVortex_1.s"

gSpriteAnimations_BigVortex_2:: @ 081236BA
	.include "animations/gSpriteAnimations_BigVortex_2.s"

gSpriteAnimations_BigVortex:: @ 081236CC
	.4byte gSpriteAnimations_BigVortex_0
	.4byte gSpriteAnimations_BigVortex_1
	.4byte gSpriteAnimations_BigVortex_2
	.4byte 00000000
