	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_KinstoneSpark_0:: @ 08124A2C
	.include "animations/gSpriteAnimations_KinstoneSpark_0.s"

gSpriteAnimations_KinstoneSpark_1:: @ 08124A7D
	.include "animations/gSpriteAnimations_KinstoneSpark_1.s"

gSpriteAnimations_KinstoneSpark_2:: @ 08124A82
	.include "animations/gSpriteAnimations_KinstoneSpark_2.s"

gSpriteAnimations_KinstoneSpark_3:: @ 08124A87
	.include "animations/gSpriteAnimations_KinstoneSpark_3.s"

gSpriteAnimations_KinstoneSpark_4:: @ 08124A8C
	.include "animations/gSpriteAnimations_KinstoneSpark_4.s"

gSpriteAnimations_KinstoneSpark_5:: @ 08124AAD
	.include "animations/gSpriteAnimations_KinstoneSpark_5.s"

gSpriteAnimations_KinstoneSpark:: @ 08124AF8
	.4byte gSpriteAnimations_KinstoneSpark_0
	.4byte gSpriteAnimations_KinstoneSpark_1
	.4byte gSpriteAnimations_KinstoneSpark_2
	.4byte gSpriteAnimations_KinstoneSpark_3
	.4byte gSpriteAnimations_KinstoneSpark_4
	.4byte gSpriteAnimations_KinstoneSpark_5
