	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_DirtBallProjectile_0:: @ 08129770
	.include "animations/gSpriteAnimations_DirtBallProjectile_0.s"

gSpriteAnimations_DirtBallProjectile_1:: @ 08129775
	.include "animations/gSpriteAnimations_DirtBallProjectile_1.s"

gSpriteAnimations_DirtBallProjectile:: @ 08129790
	.4byte gSpriteAnimations_DirtBallProjectile_0
	.4byte gSpriteAnimations_DirtBallProjectile_1
	.4byte 00000000
