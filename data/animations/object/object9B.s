	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object9B_0:: @ 081242E8
	.include "animations/gSpriteAnimations_Object9B_0.s"

gSpriteAnimations_Object9B_1:: @ 08124320
	.include "animations/gSpriteAnimations_Object9B_1.s"

gSpriteAnimations_Object9B:: @ 08124348
	.4byte gSpriteAnimations_Object9B_0
	.4byte gSpriteAnimations_Object9B_1
	.4byte 00000000
