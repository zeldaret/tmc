	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Npc4F_0:: @ 08114208
	.include "animations/gSpriteAnimations_Npc4F_0.s"

gSpriteAnimations_Npc4F_1:: @ 0811420D
	.include "animations/gSpriteAnimations_Npc4F_1.s"

gSpriteAnimations_Npc4F_2:: @ 08114216
	.include "animations/gSpriteAnimations_Npc4F_2.s"

gSpriteAnimations_Npc4F_3:: @ 0811421F
	.include "animations/gSpriteAnimations_Npc4F_3.s"

gSpriteAnimations_Npc4F:: @ 08114228
	.4byte gSpriteAnimations_Npc4F_0
	.4byte gSpriteAnimations_Npc4F_1
	.4byte gSpriteAnimations_Npc4F_2
	.4byte gSpriteAnimations_Npc4F_3
	.4byte 00000000
