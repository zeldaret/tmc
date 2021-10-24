	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_TingleSiblings_1:: @ 0810FC54
	.include "animations/gSpriteAnimations_TingleSiblings_1.s"

gSpriteAnimations_TingleSiblings_0:: @ 0810FC5E
	.include "animations/gSpriteAnimations_TingleSiblings_0.s"

gSpriteAnimations_TingleSiblings_3:: @ 0810FC68
	.include "animations/gSpriteAnimations_TingleSiblings_3.s"

gSpriteAnimations_TingleSiblings_4:: @ 0810FCAD
	.include "animations/gSpriteAnimations_TingleSiblings_4.s"

gSpriteAnimations_TingleSiblings_8:: @ 0810FCCE
	.include "animations/gSpriteAnimations_TingleSiblings_8.s"

gSpriteAnimations_TingleSiblings:: @ 0810FD6C
	.4byte gSpriteAnimations_TingleSiblings_0
	.4byte gSpriteAnimations_TingleSiblings_1
	.4byte gSpriteAnimations_TingleSiblings_0
	.4byte gSpriteAnimations_TingleSiblings_3
	.4byte gSpriteAnimations_TingleSiblings_4
	.4byte gSpriteAnimations_TingleSiblings_4
	.4byte gSpriteAnimations_TingleSiblings_4
	.4byte gSpriteAnimations_TingleSiblings_4
	.4byte gSpriteAnimations_TingleSiblings_8
	.4byte gSpriteAnimations_TingleSiblings_8
	.4byte gSpriteAnimations_TingleSiblings_8
	.4byte gSpriteAnimations_TingleSiblings_8
	.4byte 00000000
