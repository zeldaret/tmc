	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_Gina_0:: @ 0811352C
	.include "animations/gSpriteAnimations_Gina_0.s"

gSpriteAnimations_Gina_1:: @ 0811354D
	.include "animations/gSpriteAnimations_Gina_1.s"

gSpriteAnimations_Gina_3:: @ 0811356E
	.include "animations/gSpriteAnimations_Gina_3.s"

gSpriteAnimations_Gina_8:: @ 0811358F
	.include "animations/gSpriteAnimations_Gina_8.s"

gSpriteAnimations_Gina_12:: @ 081135B0
	.include "animations/gSpriteAnimations_Gina_12.s"

gSpriteAnimations_Gina_5:: @ 081135DD
	.include "animations/gSpriteAnimations_Gina_5.s"

gSpriteAnimations_Gina_4:: @ 081135E2
	.include "animations/gSpriteAnimations_Gina_4.s"

gSpriteAnimations_Gina:: @ 081135E8
	.4byte gSpriteAnimations_Gina_0
	.4byte gSpriteAnimations_Gina_1
	.4byte gSpriteAnimations_Gina_0
	.4byte gSpriteAnimations_Gina_3
	.4byte gSpriteAnimations_Gina_4
	.4byte gSpriteAnimations_Gina_5
	.4byte gSpriteAnimations_Gina_4
	.4byte gSpriteAnimations_Gina_4
	.4byte gSpriteAnimations_Gina_8
	.4byte gSpriteAnimations_Gina_8
	.4byte gSpriteAnimations_Gina_8
	.4byte gSpriteAnimations_Gina_8
	.4byte gSpriteAnimations_Gina_12
	.4byte gSpriteAnimations_Gina_12
	.4byte gSpriteAnimations_Gina_12
	.4byte gSpriteAnimations_Gina_12
	.4byte 00000000
