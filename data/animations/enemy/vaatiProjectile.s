	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_VaatiProjectile_0:: @ 080D0688
	.include "animations/gSpriteAnimations_VaatiProjectile_0.s"

gSpriteAnimations_VaatiProjectile_1:: @ 080D06A1
	.include "animations/gSpriteAnimations_VaatiProjectile_1.s"

gSpriteAnimations_VaatiProjectile_2:: @ 080D06B2
	.include "animations/gSpriteAnimations_VaatiProjectile_2.s"

gSpriteAnimations_VaatiProjectile:: @ 080D06D0
	.4byte gSpriteAnimations_VaatiProjectile_0
	.4byte gSpriteAnimations_VaatiProjectile_1
	.4byte gSpriteAnimations_VaatiProjectile_2
	.4byte 00000000
