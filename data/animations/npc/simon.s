	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Simon_0:: @ 0811362C
	.include "animations/gSpriteAnimations_Simon_0.s"

gSpriteAnimations_Simon_1:: @ 08113631
	.include "animations/gSpriteAnimations_Simon_1.s"

gSpriteAnimations_Simon_3:: @ 08113636
	.include "animations/gSpriteAnimations_Simon_3.s"

gSpriteAnimations_Simon_4:: @ 0811363B
	.include "animations/gSpriteAnimations_Simon_4.s"

gSpriteAnimations_Simon_5:: @ 08113640
	.include "animations/gSpriteAnimations_Simon_5.s"

gSpriteAnimations_Simon_7:: @ 08113645
	.include "animations/gSpriteAnimations_Simon_7.s"

gSpriteAnimations_Simon_8:: @ 0811364A
	.include "animations/gSpriteAnimations_Simon_8.s"

gSpriteAnimations_Simon:: @ 081136B0
	.4byte gSpriteAnimations_Simon_0
	.4byte gSpriteAnimations_Simon_1
	.4byte gSpriteAnimations_Simon_0
	.4byte gSpriteAnimations_Simon_3
	.4byte gSpriteAnimations_Simon_4
	.4byte gSpriteAnimations_Simon_5
	.4byte gSpriteAnimations_Simon_4
	.4byte gSpriteAnimations_Simon_7
	.4byte gSpriteAnimations_Simon_8
	.4byte 00000000
