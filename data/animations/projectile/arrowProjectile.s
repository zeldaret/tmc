	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_ArrowProjectile_0:: @ 08129A28
	.include "animations/gSpriteAnimations_ArrowProjectile_0.s"

gSpriteAnimations_ArrowProjectile_1:: @ 08129A2D
	.include "animations/gSpriteAnimations_ArrowProjectile_1.s"

gSpriteAnimations_ArrowProjectile_2:: @ 08129A32
	.include "animations/gSpriteAnimations_ArrowProjectile_2.s"

gSpriteAnimations_ArrowProjectile_3:: @ 08129A43
	.include "animations/gSpriteAnimations_ArrowProjectile_3.s"

gSpriteAnimations_ArrowProjectile:: @ 08129A54
	.4byte gSpriteAnimations_ArrowProjectile_0
	.4byte gSpriteAnimations_ArrowProjectile_1
	.4byte gSpriteAnimations_ArrowProjectile_2
	.4byte gSpriteAnimations_ArrowProjectile_3
