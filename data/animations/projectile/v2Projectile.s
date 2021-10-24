	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_V2Projectile_0:: @ 0812A814
	.include "animations/gSpriteAnimations_V2Projectile_0.s"

gSpriteAnimations_V2Projectile_1:: @ 0812A825
	.include "animations/gSpriteAnimations_V2Projectile_1.s"

gSpriteAnimations_V2Projectile:: @ 0812A840
	.4byte gSpriteAnimations_V2Projectile_0
	.4byte gSpriteAnimations_V2Projectile_1
	.4byte 00000000
