	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ObjectB2_0:: @ 081249B8
	.include "animations/gSpriteAnimations_ObjectB2_0.s"

gSpriteAnimations_ObjectB2_1:: @ 081249C9
	.include "animations/gSpriteAnimations_ObjectB2_1.s"

gSpriteAnimations_ObjectB2_2:: @ 081249DA
	.include "animations/gSpriteAnimations_ObjectB2_2.s"

gSpriteAnimations_ObjectB2_3:: @ 081249EB
	.include "animations/gSpriteAnimations_ObjectB2_3.s"

gSpriteAnimations_ObjectB2:: @ 081249FC
	.4byte gSpriteAnimations_ObjectB2_0
	.4byte gSpriteAnimations_ObjectB2_1
	.4byte gSpriteAnimations_ObjectB2_2
	.4byte gSpriteAnimations_ObjectB2_3
	.4byte 00000000
