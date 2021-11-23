	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object45_0:: @ 08121BE0
	.include "animations/gSpriteAnimations_Object45_0.s"

gSpriteAnimations_Object45_1:: @ 08121BF8
	.include "animations/gSpriteAnimations_Object45_1.s"

gSpriteAnimations_Object45:: @ 08121C34
	.4byte gSpriteAnimations_Object45_0
	.4byte gSpriteAnimations_Object45_1
	.4byte 00000000
