	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_AmbientClouds_0:: @ 08120DA0
	.include "animations/gSpriteAnimations_AmbientClouds_0.s"

gSpriteAnimations_AmbientClouds_1:: @ 08120DB1
	.include "animations/gSpriteAnimations_AmbientClouds_1.s"

gSpriteAnimations_AmbientClouds:: @ 08120DC4
	.4byte gSpriteAnimations_AmbientClouds_0
	.4byte gSpriteAnimations_AmbientClouds_1
	.4byte 00000000
