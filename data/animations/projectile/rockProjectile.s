	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_RockProjectile_0:: @ 081295F4
	.include "animations/gSpriteAnimations_RockProjectile_0.s"

gSpriteAnimations_RockProjectile:: @ 08129604
	.4byte gSpriteAnimations_RockProjectile_0
	.4byte 00000000
