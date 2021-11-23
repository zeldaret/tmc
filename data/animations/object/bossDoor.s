	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_BossDoor_0:: @ 08121514
	.include "animations/gSpriteAnimations_BossDoor_0.s"

gSpriteAnimations_BossDoor_1:: @ 08121538
	.include "animations/gSpriteAnimations_BossDoor_1.s"

gSpriteAnimations_BossDoor_2:: @ 0812155C
	.include "animations/gSpriteAnimations_BossDoor_2.s"

gSpriteAnimations_BossDoor_3:: @ 08121580
	.include "animations/gSpriteAnimations_BossDoor_3.s"

gSpriteAnimations_BossDoor_4:: @ 081215A4
	.include "animations/gSpriteAnimations_BossDoor_4.s"

gSpriteAnimations_BossDoor_5:: @ 081215A8
	.include "animations/gSpriteAnimations_BossDoor_5.s"

gSpriteAnimations_BossDoor_6:: @ 081215AC
	.include "animations/gSpriteAnimations_BossDoor_6.s"

gSpriteAnimations_BossDoor_7:: @ 081215B0
	.include "animations/gSpriteAnimations_BossDoor_7.s"

gSpriteAnimations_BossDoor:: @ 081215B4
	.4byte gSpriteAnimations_BossDoor_0
	.4byte gSpriteAnimations_BossDoor_1
	.4byte gSpriteAnimations_BossDoor_2
	.4byte gSpriteAnimations_BossDoor_3
	.4byte gSpriteAnimations_BossDoor_4
	.4byte gSpriteAnimations_BossDoor_5
	.4byte gSpriteAnimations_BossDoor_6
	.4byte gSpriteAnimations_BossDoor_7
	.4byte gSpriteAnimations_BossDoor_4
	.4byte gSpriteAnimations_BossDoor_5
	.4byte gSpriteAnimations_BossDoor_6
	.4byte gSpriteAnimations_BossDoor_7
	.4byte 00000000
