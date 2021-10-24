	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ObjectD_0:: @ 0811F918
	.include "animations/gSpriteAnimations_ObjectD_0.s"

gSpriteAnimations_ObjectD_1:: @ 0811F945
	.include "animations/gSpriteAnimations_ObjectD_1.s"

gSpriteAnimations_ObjectD:: @ 0811F954
	.4byte gSpriteAnimations_ObjectD_0
	.4byte gSpriteAnimations_ObjectD_1
	.4byte 00000000
