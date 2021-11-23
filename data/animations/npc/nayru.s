	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Nayru_0:: @ 0810F9B0
	.include "animations/gSpriteAnimations_Nayru_0.s"

gSpriteAnimations_Nayru_3:: @ 0810F9B5
	.include "animations/gSpriteAnimations_Nayru_3.s"

gSpriteAnimations_Nayru_1:: @ 0810F9BA
	.include "animations/gSpriteAnimations_Nayru_1.s"

gSpriteAnimations_Nayru_4:: @ 0810F9BF
	.include "animations/gSpriteAnimations_Nayru_4.s"

gSpriteAnimations_Nayru:: @ 0810F9D0
	.4byte gSpriteAnimations_Nayru_0
	.4byte gSpriteAnimations_Nayru_1
	.4byte gSpriteAnimations_Nayru_0
	.4byte gSpriteAnimations_Nayru_3
	.4byte gSpriteAnimations_Nayru_4
	.4byte gSpriteAnimations_Nayru_4
	.4byte gSpriteAnimations_Nayru_4
	.4byte gSpriteAnimations_Nayru_4
	.4byte 00000000
