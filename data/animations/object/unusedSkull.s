	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_UnusedSkull_0:: @ 0811F918
	.include "animations/gSpriteAnimations_UnusedSkull_0.s"

gSpriteAnimations_UnusedSkull_1:: @ 0811F945
	.include "animations/gSpriteAnimations_UnusedSkull_1.s"

gSpriteAnimations_UnusedSkull:: @ 0811F954
	.4byte gSpriteAnimations_UnusedSkull_0
	.4byte gSpriteAnimations_UnusedSkull_1
	.4byte 00000000
