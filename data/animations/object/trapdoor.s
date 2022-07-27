	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Trapdoor_0:: @ 0812380C
	.include "animations/gSpriteAnimations_Trapdoor_0.s"

gSpriteAnimations_Trapdoor_1:: @ 08123820
	.include "animations/gSpriteAnimations_Trapdoor_1.s"

gSpriteAnimations_Trapdoor:: @ 08123834
	.4byte gSpriteAnimations_Trapdoor_0
	.4byte gSpriteAnimations_Trapdoor_1
	.4byte 00000000
