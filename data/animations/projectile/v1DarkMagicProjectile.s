	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_V1DarkMagicProjectile_0:: @ 0812A44C
	.include "animations/gSpriteAnimations_V1DarkMagicProjectile_0.s"

gSpriteAnimations_V1DarkMagicProjectile_1:: @ 0812A46D
	.include "animations/gSpriteAnimations_V1DarkMagicProjectile_1.s"

gSpriteAnimations_V1DarkMagicProjectile:: @ 0812A488
	.4byte gSpriteAnimations_V1DarkMagicProjectile_0
	.4byte gSpriteAnimations_V1DarkMagicProjectile_1
	.4byte 00000000
