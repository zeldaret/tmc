	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_GuruguruBar_0:: @ 08124194
	.include "animations/gSpriteAnimations_GuruguruBar_0.s"

gSpriteAnimations_GuruguruBar_1:: @ 081241DC
	.include "animations/gSpriteAnimations_GuruguruBar_1.s"

gSpriteAnimations_GuruguruBar_2:: @ 08124224
	.include "animations/gSpriteAnimations_GuruguruBar_2.s"

gSpriteAnimations_GuruguruBar_3:: @ 0812426C
	.include "animations/gSpriteAnimations_GuruguruBar_3.s"

gSpriteAnimations_GuruguruBar:: @ 081242B4
	.4byte gSpriteAnimations_GuruguruBar_0
	.4byte gSpriteAnimations_GuruguruBar_1
	.4byte gSpriteAnimations_GuruguruBar_2
	.4byte gSpriteAnimations_GuruguruBar_3
	.4byte 00000000
