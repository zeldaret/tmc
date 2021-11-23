	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_V1EyeLaser_0:: @ 0812A63C
	.include "animations/gSpriteAnimations_V1EyeLaser_0.s"

gSpriteAnimations_V1EyeLaser_1:: @ 0812A65C
	.include "animations/gSpriteAnimations_V1EyeLaser_1.s"

gSpriteAnimations_V1EyeLaser_2:: @ 0812A665
	.include "animations/gSpriteAnimations_V1EyeLaser_2.s"

gSpriteAnimations_V1EyeLaser_3:: @ 0812A66E
	.include "animations/gSpriteAnimations_V1EyeLaser_3.s"

gSpriteAnimations_V1EyeLaser_4:: @ 0812A677
	.include "animations/gSpriteAnimations_V1EyeLaser_4.s"

gSpriteAnimations_V1EyeLaser_5:: @ 0812A680
	.include "animations/gSpriteAnimations_V1EyeLaser_5.s"

gSpriteAnimations_V1EyeLaser_6:: @ 0812A689
	.include "animations/gSpriteAnimations_V1EyeLaser_6.s"

gSpriteAnimations_V1EyeLaser:: @ 0812A694
	.4byte gSpriteAnimations_V1EyeLaser_0
	.4byte gSpriteAnimations_V1EyeLaser_1
	.4byte gSpriteAnimations_V1EyeLaser_2
	.4byte gSpriteAnimations_V1EyeLaser_3
	.4byte gSpriteAnimations_V1EyeLaser_4
	.4byte gSpriteAnimations_V1EyeLaser_5
	.4byte gSpriteAnimations_V1EyeLaser_6
	.4byte 00000000
