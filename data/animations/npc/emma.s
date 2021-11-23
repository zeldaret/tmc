	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Emma_0:: @ 081138DC
	.include "animations/gSpriteAnimations_Emma_0.s"

gSpriteAnimations_Emma_2:: @ 081138E1
	.include "animations/gSpriteAnimations_Emma_2.s"

gSpriteAnimations_Emma:: @ 081138FC
	.4byte gSpriteAnimations_Emma_0
	.4byte gSpriteAnimations_Emma_0
	.4byte gSpriteAnimations_Emma_2
	.4byte gSpriteAnimations_Emma_0
	.4byte 00000000
