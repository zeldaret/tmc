	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_CameraTarget_0:: @ 0811F760
	.include "animations/gSpriteAnimations_CameraTarget_0.s"

gSpriteAnimations_CameraTarget_1:: @ 0811F795
	.include "animations/gSpriteAnimations_CameraTarget_1.s"

gSpriteAnimations_CameraTarget:: @ 0811F7CC
	.4byte gSpriteAnimations_CameraTarget_0
	.4byte gSpriteAnimations_CameraTarget_1
	.4byte 00000000
