	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Farore_0:: @ 0810F9F4
	.include "animations/gSpriteAnimations_Farore_0.s"

gSpriteAnimations_Farore_3:: @ 0810F9F9
	.include "animations/gSpriteAnimations_Farore_3.s"

gSpriteAnimations_Farore_1:: @ 0810F9FE
	.include "animations/gSpriteAnimations_Farore_1.s"

gSpriteAnimations_Farore_4:: @ 0810FA03
	.include "animations/gSpriteAnimations_Farore_4.s"

gSpriteAnimations_Farore:: @ 0810FA14
	.4byte gSpriteAnimations_Farore_0
	.4byte gSpriteAnimations_Farore_1
	.4byte gSpriteAnimations_Farore_0
	.4byte gSpriteAnimations_Farore_3
	.4byte gSpriteAnimations_Farore_4
	.4byte gSpriteAnimations_Farore_4
	.4byte gSpriteAnimations_Farore_4
	.4byte gSpriteAnimations_Farore_4
	.4byte 00000000
