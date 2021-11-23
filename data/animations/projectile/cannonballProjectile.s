	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_CannonballProjectile_1:: @ 0812A5AC
	.include "animations/gSpriteAnimations_CannonballProjectile_1.s"

gSpriteAnimations_CannonballProjectile_0:: @ 0812A5B9
	.include "animations/gSpriteAnimations_CannonballProjectile_0.s"

gSpriteAnimations_CannonballProjectile_3:: @ 0812A5C6
	.include "animations/gSpriteAnimations_CannonballProjectile_3.s"

gSpriteAnimations_CannonballProjectile:: @ 0812A5D4
	.4byte gSpriteAnimations_CannonballProjectile_0
	.4byte gSpriteAnimations_CannonballProjectile_1
	.4byte gSpriteAnimations_CannonballProjectile_0
	.4byte gSpriteAnimations_CannonballProjectile_3
	.4byte 00000000
