	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Mutoh_0:: @ 08110C60
	.include "animations/gSpriteAnimations_Mutoh_0.s"

gSpriteAnimations_Mutoh_5:: @ 08110C75
	.include "animations/gSpriteAnimations_Mutoh_5.s"

gSpriteAnimations_Mutoh_4:: @ 08110C7A
	.include "animations/gSpriteAnimations_Mutoh_4.s"

gSpriteAnimations_Mutoh_7:: @ 08110C7F
	.include "animations/gSpriteAnimations_Mutoh_7.s"

gSpriteAnimations_Mutoh:: @ 08110C84
	.4byte gSpriteAnimations_Mutoh_0
	.4byte gSpriteAnimations_Mutoh_0
	.4byte gSpriteAnimations_Mutoh_0
	.4byte gSpriteAnimations_Mutoh_0
	.4byte gSpriteAnimations_Mutoh_4
	.4byte gSpriteAnimations_Mutoh_5
	.4byte gSpriteAnimations_Mutoh_4
	.4byte gSpriteAnimations_Mutoh_7
	.4byte 00000000
