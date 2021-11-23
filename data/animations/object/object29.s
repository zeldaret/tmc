	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object29_0:: @ 08120DA0
	.include "animations/gSpriteAnimations_Object29_0.s"

gSpriteAnimations_Object29_1:: @ 08120DB1
	.include "animations/gSpriteAnimations_Object29_1.s"

gSpriteAnimations_Object29:: @ 08120DC4
	.4byte gSpriteAnimations_Object29_0
	.4byte gSpriteAnimations_Object29_1
	.4byte 00000000
