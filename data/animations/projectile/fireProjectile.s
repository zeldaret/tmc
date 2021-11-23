	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_FireProjectile_0:: @ 0812983C
	.include "animations/gSpriteAnimations_FireProjectile_0.s"

gSpriteAnimations_FireProjectile_1:: @ 08129845
	.include "animations/gSpriteAnimations_FireProjectile_1.s"

gSpriteAnimations_FireProjectile_2:: @ 0812984E
	.include "animations/gSpriteAnimations_FireProjectile_2.s"

gSpriteAnimations_FireProjectile_3:: @ 08129857
	.include "animations/gSpriteAnimations_FireProjectile_3.s"

gSpriteAnimations_FireProjectile_4:: @ 08129860
	.include "animations/gSpriteAnimations_FireProjectile_4.s"

gSpriteAnimations_FireProjectile_5:: @ 0812986D
	.include "animations/gSpriteAnimations_FireProjectile_5.s"

gSpriteAnimations_FireProjectile_6:: @ 0812987A
	.include "animations/gSpriteAnimations_FireProjectile_6.s"

gSpriteAnimations_FireProjectile_7:: @ 08129887
	.include "animations/gSpriteAnimations_FireProjectile_7.s"

gSpriteAnimations_FireProjectile:: @ 08129894
	.4byte gSpriteAnimations_FireProjectile_0
	.4byte gSpriteAnimations_FireProjectile_1
	.4byte gSpriteAnimations_FireProjectile_2
	.4byte gSpriteAnimations_FireProjectile_3
	.4byte gSpriteAnimations_FireProjectile_4
	.4byte gSpriteAnimations_FireProjectile_5
	.4byte gSpriteAnimations_FireProjectile_6
	.4byte gSpriteAnimations_FireProjectile_7
	.4byte 00000000
