	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object2A_0:: @ 08120DD8
	.include "animations/gSpriteAnimations_Object2A_0.s"

gSpriteAnimations_Object2A:: @ 08120DEC
	.4byte gSpriteAnimations_Object2A_0
	.4byte 00000000
