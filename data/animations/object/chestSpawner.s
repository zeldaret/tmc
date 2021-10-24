	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ChestSpawner_0:: @ 0811F8B8
	.include "animations/gSpriteAnimations_ChestSpawner_0.s"

gSpriteAnimations_ChestSpawner_1:: @ 0811F8C9
	.include "animations/gSpriteAnimations_ChestSpawner_1.s"

gSpriteAnimations_ChestSpawner_4:: @ 0811F8CE
	.include "animations/gSpriteAnimations_ChestSpawner_4.s"

gSpriteAnimations_ChestSpawner_2:: @ 0811F8D3
	.include "animations/gSpriteAnimations_ChestSpawner_2.s"

gSpriteAnimations_ChestSpawner_3:: @ 0811F8E8
	.include "animations/gSpriteAnimations_ChestSpawner_3.s"

gSpriteAnimations_ChestSpawner:: @ 0811F8F0
	.4byte gSpriteAnimations_ChestSpawner_0
	.4byte gSpriteAnimations_ChestSpawner_1
	.4byte gSpriteAnimations_ChestSpawner_2
	.4byte gSpriteAnimations_ChestSpawner_3
	.4byte gSpriteAnimations_ChestSpawner_4
	.4byte 00000000
