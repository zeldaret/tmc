	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_FileScreenObjects_0:: @ 08121E24
	.include "animations/gSpriteAnimations_FileScreenObjects_0.s"

gSpriteAnimations_FileScreenObjects_1:: @ 08121E31
	.include "animations/gSpriteAnimations_FileScreenObjects_1.s"

gSpriteAnimations_FileScreenObjects:: @ 08121E50
	.4byte gSpriteAnimations_FileScreenObjects_0
	.4byte gSpriteAnimations_FileScreenObjects_1
	.4byte 00000000
