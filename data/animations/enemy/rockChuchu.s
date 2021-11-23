	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_RockChuchu_0:: @ 080CB96C
	.include "animations/gSpriteAnimations_RockChuchu_0.s"

gSpriteAnimations_RockChuchu_1:: @ 080CB995
	.include "animations/gSpriteAnimations_RockChuchu_1.s"

gSpriteAnimations_RockChuchu_2:: @ 080CB9D6
	.include "animations/gSpriteAnimations_RockChuchu_2.s"

gSpriteAnimations_RockChuchu:: @ 080CBA18
	.4byte gSpriteAnimations_RockChuchu_0
	.4byte gSpriteAnimations_RockChuchu_1
	.4byte gSpriteAnimations_RockChuchu_2
	.4byte 00000000
