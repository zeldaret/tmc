	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_FallingBoulder_0:: @ 080CD5A4
	.include "animations/gSpriteAnimations_FallingBoulder_0.s"

gSpriteAnimations_FallingBoulder_1:: @ 080CD5B5
	.include "animations/gSpriteAnimations_FallingBoulder_1.s"

gSpriteAnimations_FallingBoulder:: @ 080CD5C8
	.4byte gSpriteAnimations_FallingBoulder_0
	.4byte gSpriteAnimations_FallingBoulder_1
	.4byte 00000000
