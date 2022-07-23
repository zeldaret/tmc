	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Thunderbold_0:: @ 0812296C
	.include "animations/gSpriteAnimations_Thunderbold_0.s"

gSpriteAnimations_Thunderbold_1:: @ 0812297C
	.include "animations/gSpriteAnimations_Thunderbold_1.s"

gSpriteAnimations_Thunderbold_2:: @ 08122988
	.include "animations/gSpriteAnimations_Thunderbold_2.s"

gSpriteAnimations_Thunderbold:: @ 081229A4
	.4byte gSpriteAnimations_Thunderbold_0
	.4byte gSpriteAnimations_Thunderbold_1
	.4byte gSpriteAnimations_Thunderbold_2
	.4byte 00000000
