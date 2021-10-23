	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_IceProjectile_0:: @gSpriteAnimations_IceProjectile_0
	.byte 4, 2, 0x0, 0x0
	.byte 5, 2, 0x0, 0x80
	.byte 2 @ keyframe count
gSpriteAnimations_IceProjectile_1:: @gSpriteAnimations_IceProjectile_1
	.byte 2, 2, 0x40, 0x0
	.byte 3, 2, 0x40, 0x80
	.byte 2 @ keyframe count
gSpriteAnimations_IceProjectile_2:: @gSpriteAnimations_IceProjectile_2
	.byte 0, 2, 0x0, 0x0
	.byte 1, 2, 0x0, 0x80
	.byte 2 @ keyframe count
gSpriteAnimations_IceProjectile_3:: @gSpriteAnimations_IceProjectile_3
	.byte 2, 2, 0x0, 0x0
	.byte 3, 2, 0x0, 0x80
	.byte 2 @ keyframe count
gSpriteAnimations_IceProjectile_4:: @gSpriteAnimations_IceProjectile_4
	.byte 6, 4, 0x0, 0x0
	.byte 7, 4, 0x0, 0x0
	.byte 8, 4, 0x0, 0x0
	.byte 9, 4, 0x0, 0x80
	.byte 4 @ keyframe count
gSpriteAnimations_IceProjectile_5:: @gSpriteAnimations_IceProjectile_5
	.byte 7, 4, 0x0, 0x0
	.byte 8, 4, 0x0, 0x0
	.byte 9, 4, 0x0, 0x0
	.byte 6, 4, 0x0, 0x80
	.byte 4 @ keyframe count
gSpriteAnimations_IceProjectile_6:: @gSpriteAnimations_IceProjectile_6
	.byte 8, 4, 0x0, 0x0
	.byte 9, 4, 0x0, 0x0
	.byte 6, 4, 0x0, 0x0
	.byte 7, 4, 0x0, 0x80
	.byte 4 @ keyframe count
gSpriteAnimations_IceProjectile_7:: @gSpriteAnimations_IceProjectile_7
	.byte 9, 4, 0x0, 0x0
	.byte 6, 4, 0x0, 0x0
	.byte 7, 4, 0x0, 0x0
	.byte 8, 4, 0x0, 0x80
	.byte 4 @ keyframe count
gSpriteAnimations_IceProjectile::
	.4byte gSpriteAnimations_IceProjectile_0
	.4byte gSpriteAnimations_IceProjectile_1
	.4byte gSpriteAnimations_IceProjectile_2
	.4byte gSpriteAnimations_IceProjectile_3
	.4byte gSpriteAnimations_IceProjectile_4
	.4byte gSpriteAnimations_IceProjectile_5
	.4byte gSpriteAnimations_IceProjectile_6
	.4byte gSpriteAnimations_IceProjectile_7
	.4byte 0
