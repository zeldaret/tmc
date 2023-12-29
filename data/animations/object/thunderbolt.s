	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Thunderbolt_0:: @ 0812296C
	.include "animations/gSpriteAnimations_Thunderbolt_0.s"

gSpriteAnimations_Thunderbolt_1:: @ 0812297C
	.include "animations/gSpriteAnimations_Thunderbolt_1.s"

gSpriteAnimations_Thunderbolt_2:: @ 08122988
	.include "animations/gSpriteAnimations_Thunderbolt_2.s"

gSpriteAnimations_Thunderbolt:: @ 081229A4
	.4byte gSpriteAnimations_Thunderbolt_0
	.4byte gSpriteAnimations_Thunderbolt_1
	.4byte gSpriteAnimations_Thunderbolt_2
	.4byte 00000000
