	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ObjectB3_0:: @ 08124A2C
	.include "animations/gSpriteAnimations_ObjectB3_0.s"

gSpriteAnimations_ObjectB3_1:: @ 08124A7D
	.include "animations/gSpriteAnimations_ObjectB3_1.s"

gSpriteAnimations_ObjectB3_2:: @ 08124A82
	.include "animations/gSpriteAnimations_ObjectB3_2.s"

gSpriteAnimations_ObjectB3_3:: @ 08124A87
	.include "animations/gSpriteAnimations_ObjectB3_3.s"

gSpriteAnimations_ObjectB3_4:: @ 08124A8C
	.include "animations/gSpriteAnimations_ObjectB3_4.s"

gSpriteAnimations_ObjectB3_5:: @ 08124AAD
	.include "animations/gSpriteAnimations_ObjectB3_5.s"

gSpriteAnimations_ObjectB3:: @ 08124AF8
	.4byte gSpriteAnimations_ObjectB3_0
	.4byte gSpriteAnimations_ObjectB3_1
	.4byte gSpriteAnimations_ObjectB3_2
	.4byte gSpriteAnimations_ObjectB3_3
	.4byte gSpriteAnimations_ObjectB3_4
	.4byte gSpriteAnimations_ObjectB3_5
