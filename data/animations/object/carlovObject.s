	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_CarlovObject_0:: @ 081213FC
	.include "animations/gSpriteAnimations_CarlovObject_0.s"

gSpriteAnimations_CarlovObject_1:: @ 0812140D
	.include "animations/gSpriteAnimations_CarlovObject_1.s"

gSpriteAnimations_CarlovObject_2:: @ 0812141E
	.include "animations/gSpriteAnimations_CarlovObject_2.s"

gSpriteAnimations_CarlovObject:: @ 08121430
	.4byte gSpriteAnimations_CarlovObject_0
	.4byte gSpriteAnimations_CarlovObject_1
	.4byte gSpriteAnimations_CarlovObject_2
	.4byte 00000000
