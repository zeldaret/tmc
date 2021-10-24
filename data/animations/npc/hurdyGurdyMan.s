	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_HurdyGurdyMan_8:: @ 0811453C
	.include "animations/gSpriteAnimations_HurdyGurdyMan_8.s"

gSpriteAnimations_HurdyGurdyMan_7:: @ 0811454D
	.include "animations/gSpriteAnimations_HurdyGurdyMan_7.s"

gSpriteAnimations_HurdyGurdyMan_4:: @ 0811455E
	.include "animations/gSpriteAnimations_HurdyGurdyMan_4.s"

gSpriteAnimations_HurdyGurdyMan_0:: @ 0811456F
	.include "animations/gSpriteAnimations_HurdyGurdyMan_0.s"

gSpriteAnimations_HurdyGurdyMan_1:: @ 08114574
	.include "animations/gSpriteAnimations_HurdyGurdyMan_1.s"

gSpriteAnimations_HurdyGurdyMan_3:: @ 08114579
	.include "animations/gSpriteAnimations_HurdyGurdyMan_3.s"

gSpriteAnimations_HurdyGurdyMan:: @ 08114580
	.4byte gSpriteAnimations_HurdyGurdyMan_0
	.4byte gSpriteAnimations_HurdyGurdyMan_1
	.4byte gSpriteAnimations_HurdyGurdyMan_0
	.4byte gSpriteAnimations_HurdyGurdyMan_3
	.4byte gSpriteAnimations_HurdyGurdyMan_4
	.4byte gSpriteAnimations_HurdyGurdyMan_4
	.4byte gSpriteAnimations_HurdyGurdyMan_4
	.4byte gSpriteAnimations_HurdyGurdyMan_7
	.4byte gSpriteAnimations_HurdyGurdyMan_8
	.4byte gSpriteAnimations_HurdyGurdyMan_8
	.4byte gSpriteAnimations_HurdyGurdyMan_8
	.4byte gSpriteAnimations_HurdyGurdyMan_8
	.4byte 00000000
