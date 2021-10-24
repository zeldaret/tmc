	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Npc26_0:: @ 081106E8
	.include "animations/gSpriteAnimations_Npc26_0.s"

gSpriteAnimations_Npc26_4:: @ 081106ED
	.include "animations/gSpriteAnimations_Npc26_4.s"

gSpriteAnimations_Npc26_6:: @ 081106FE
	.include "animations/gSpriteAnimations_Npc26_6.s"

gSpriteAnimations_Npc26:: @ 08110710
	.4byte gSpriteAnimations_Npc26_0
	.4byte gSpriteAnimations_Npc26_0
	.4byte gSpriteAnimations_Npc26_0
	.4byte gSpriteAnimations_Npc26_0
	.4byte gSpriteAnimations_Npc26_4
	.4byte gSpriteAnimations_Npc26_4
	.4byte gSpriteAnimations_Npc26_6
	.4byte gSpriteAnimations_Npc26_6
	.4byte 00000000
