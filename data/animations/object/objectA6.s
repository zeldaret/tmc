	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ObjectA6_0:: @ 08124808
	.include "animations/gSpriteAnimations_ObjectA6_0.s"

gSpriteAnimations_ObjectA6:: @ 0812481C
	.4byte gSpriteAnimations_ObjectA6_0
	.4byte 00000000
