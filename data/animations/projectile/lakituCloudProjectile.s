	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_LakituCloudProjectile_0:: @ 08129B84
	.include "animations/gSpriteAnimations_LakituCloudProjectile_0.s"

gSpriteAnimations_LakituCloudProjectile_1:: @ 08129B95
	.include "animations/gSpriteAnimations_LakituCloudProjectile_1.s"

gSpriteAnimations_LakituCloudProjectile_4:: @ 08129BA6
	.include "animations/gSpriteAnimations_LakituCloudProjectile_4.s"

gSpriteAnimations_LakituCloudProjectile_5:: @ 08129BB7
	.include "animations/gSpriteAnimations_LakituCloudProjectile_5.s"

gSpriteAnimations_LakituCloudProjectile:: @ 08129BC8
	.4byte gSpriteAnimations_LakituCloudProjectile_0
	.4byte gSpriteAnimations_LakituCloudProjectile_1
	.4byte gSpriteAnimations_LakituCloudProjectile_0
	.4byte gSpriteAnimations_LakituCloudProjectile_1
	.4byte gSpriteAnimations_LakituCloudProjectile_4
	.4byte gSpriteAnimations_LakituCloudProjectile_5
	.4byte gSpriteAnimations_LakituCloudProjectile_4
	.4byte gSpriteAnimations_LakituCloudProjectile_5
	.4byte 00000000
