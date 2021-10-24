	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Bell_0:: @ 0812338C
	.include "animations/gSpriteAnimations_Bell_0.s"

gSpriteAnimations_Bell:: @ 081233B0
	.4byte gSpriteAnimations_Bell_0
	.include "animations/gSpriteAnimations_Bell.s"
