	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object35_0:: @ 081213FC
	.include "animations/gSpriteAnimations_Object35_0.s"

gSpriteAnimations_Object35_1:: @ 0812140D
	.include "animations/gSpriteAnimations_Object35_1.s"

gSpriteAnimations_Object35_2:: @ 0812141E
	.include "animations/gSpriteAnimations_Object35_2.s"

gSpriteAnimations_Object35:: @ 08121430
	.4byte gSpriteAnimations_Object35_0
	.4byte gSpriteAnimations_Object35_1
	.4byte gSpriteAnimations_Object35_2
	.4byte 00000000
