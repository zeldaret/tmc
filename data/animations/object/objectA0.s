	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ObjectA0_1:: @ 0812468C
	.include "animations/gSpriteAnimations_ObjectA0_1.s"

gSpriteAnimations_ObjectA0_0:: @ 08124690
	.include "animations/gSpriteAnimations_ObjectA0_0.s"

gSpriteAnimations_ObjectA0_3:: @ 08124694
	.include "animations/gSpriteAnimations_ObjectA0_3.s"

gSpriteAnimations_ObjectA0_5:: @ 08124698
	.include "animations/gSpriteAnimations_ObjectA0_5.s"

gSpriteAnimations_ObjectA0_4:: @ 081246A8
	.include "animations/gSpriteAnimations_ObjectA0_4.s"

gSpriteAnimations_ObjectA0_7:: @ 081246B8
	.include "animations/gSpriteAnimations_ObjectA0_7.s"

gSpriteAnimations_ObjectA0:: @ 081246C8
	.4byte gSpriteAnimations_ObjectA0_0
	.4byte gSpriteAnimations_ObjectA0_1
	.4byte gSpriteAnimations_ObjectA0_0
	.4byte gSpriteAnimations_ObjectA0_3
	.4byte gSpriteAnimations_ObjectA0_4
	.4byte gSpriteAnimations_ObjectA0_5
	.4byte gSpriteAnimations_ObjectA0_4
	.4byte gSpriteAnimations_ObjectA0_7
	.4byte 00000000
