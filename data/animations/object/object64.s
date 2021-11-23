	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object64_0:: @ 0812296C
	.include "animations/gSpriteAnimations_Object64_0.s"

gSpriteAnimations_Object64_1:: @ 0812297C
	.include "animations/gSpriteAnimations_Object64_1.s"

gSpriteAnimations_Object64_2:: @ 08122988
	.include "animations/gSpriteAnimations_Object64_2.s"

gSpriteAnimations_Object64:: @ 081229A4
	.4byte gSpriteAnimations_Object64_0
	.4byte gSpriteAnimations_Object64_1
	.4byte gSpriteAnimations_Object64_2
	.4byte 00000000
