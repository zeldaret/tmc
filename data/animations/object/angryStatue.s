	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_AngryStatue_1:: @ 0812468C
	.include "animations/gSpriteAnimations_AngryStatue_1.s"

gSpriteAnimations_AngryStatue_0:: @ 08124690
	.include "animations/gSpriteAnimations_AngryStatue_0.s"

gSpriteAnimations_AngryStatue_3:: @ 08124694
	.include "animations/gSpriteAnimations_AngryStatue_3.s"

gSpriteAnimations_AngryStatue_5:: @ 08124698
	.include "animations/gSpriteAnimations_AngryStatue_5.s"

gSpriteAnimations_AngryStatue_4:: @ 081246A8
	.include "animations/gSpriteAnimations_AngryStatue_4.s"

gSpriteAnimations_AngryStatue_7:: @ 081246B8
	.include "animations/gSpriteAnimations_AngryStatue_7.s"

gSpriteAnimations_AngryStatue:: @ 081246C8
	.4byte gSpriteAnimations_AngryStatue_0
	.4byte gSpriteAnimations_AngryStatue_1
	.4byte gSpriteAnimations_AngryStatue_0
	.4byte gSpriteAnimations_AngryStatue_3
	.4byte gSpriteAnimations_AngryStatue_4
	.4byte gSpriteAnimations_AngryStatue_5
	.4byte gSpriteAnimations_AngryStatue_4
	.4byte gSpriteAnimations_AngryStatue_7
	.4byte 00000000
