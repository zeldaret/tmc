	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_V3HandProjectile_0:: @ 0812A860
	.include "animations/gSpriteAnimations_V3HandProjectile_0.s"

gSpriteAnimations_V3HandProjectile_1:: @ 0812A871
	.include "animations/gSpriteAnimations_V3HandProjectile_1.s"

gSpriteAnimations_V3HandProjectile_2:: @ 0812A8CA
	.include "animations/gSpriteAnimations_V3HandProjectile_2.s"

gSpriteAnimations_V3HandProjectile_3:: @ 0812A92B
	.include "animations/gSpriteAnimations_V3HandProjectile_3.s"

gSpriteAnimations_V3HandProjectile:: @ 0812A940
	.4byte gSpriteAnimations_V3HandProjectile_0
	.4byte gSpriteAnimations_V3HandProjectile_1
	.4byte gSpriteAnimations_V3HandProjectile_2
	.4byte gSpriteAnimations_V3HandProjectile_3
	.4byte 00000000
