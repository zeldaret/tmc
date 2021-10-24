	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_MinisterPotho_0:: @ 08110658
	.include "animations/gSpriteAnimations_MinisterPotho_0.s"

gSpriteAnimations_MinisterPotho_1:: @ 0811065D
	.include "animations/gSpriteAnimations_MinisterPotho_1.s"

gSpriteAnimations_MinisterPotho_2:: @ 08110662
	.include "animations/gSpriteAnimations_MinisterPotho_2.s"

gSpriteAnimations_MinisterPotho_3:: @ 08110667
	.include "animations/gSpriteAnimations_MinisterPotho_3.s"

gSpriteAnimations_MinisterPotho_4:: @ 0811066C
	.include "animations/gSpriteAnimations_MinisterPotho_4.s"

gSpriteAnimations_MinisterPotho_8:: @ 0811067D
	.include "animations/gSpriteAnimations_MinisterPotho_8.s"

gSpriteAnimations_MinisterPotho_9:: @ 08110682
	.include "animations/gSpriteAnimations_MinisterPotho_9.s"

gSpriteAnimations_MinisterPotho:: @ 081106A8
	.4byte gSpriteAnimations_MinisterPotho_0
	.4byte gSpriteAnimations_MinisterPotho_1
	.4byte gSpriteAnimations_MinisterPotho_2
	.4byte gSpriteAnimations_MinisterPotho_3
	.4byte gSpriteAnimations_MinisterPotho_4
	.4byte gSpriteAnimations_MinisterPotho_4
	.4byte gSpriteAnimations_MinisterPotho_4
	.4byte gSpriteAnimations_MinisterPotho_4
	.4byte gSpriteAnimations_MinisterPotho_8
	.4byte gSpriteAnimations_MinisterPotho_9
	.4byte 00000000
