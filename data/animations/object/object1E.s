	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Object1E_2:: @ 081208C8
	.include "animations/gSpriteAnimations_Object1E_2.s"

gSpriteAnimations_Object1E_1:: @ 081208FC
	.include "animations/gSpriteAnimations_Object1E_1.s"

gSpriteAnimations_Object1E_0:: @ 08120930
	.include "animations/gSpriteAnimations_Object1E_0.s"

gSpriteAnimations_Object1E_6:: @ 08120964
	.include "animations/gSpriteAnimations_Object1E_6.s"

gSpriteAnimations_Object1E_5:: @ 08120990
	.include "animations/gSpriteAnimations_Object1E_5.s"

gSpriteAnimations_Object1E_4:: @ 081209BC
	.include "animations/gSpriteAnimations_Object1E_4.s"

gSpriteAnimations_Object1E:: @ 081209E8
	.4byte gSpriteAnimations_Object1E_0
	.4byte gSpriteAnimations_Object1E_1
	.4byte gSpriteAnimations_Object1E_2
	.4byte gSpriteAnimations_Object1E_1
	.4byte gSpriteAnimations_Object1E_4
	.4byte gSpriteAnimations_Object1E_5
	.4byte gSpriteAnimations_Object1E_6
	.4byte gSpriteAnimations_Object1E_5
	.4byte 00000000

