	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2


gSpriteAnimations_BladeBrothers_1_1:: @ 0811176C
	.include "animations/gSpriteAnimations_BladeBrothers_1_1.s"

gSpriteAnimations_BladeBrothers_1_0:: @ 08111771
	.include "animations/gSpriteAnimations_BladeBrothers_1_0.s"

gSpriteAnimations_BladeBrothers_1_3:: @ 08111776
	.include "animations/gSpriteAnimations_BladeBrothers_1_3.s"

gSpriteAnimations_BladeBrothers_1_4:: @ 0811177B
	.include "animations/gSpriteAnimations_BladeBrothers_1_4.s"

gSpriteAnimations_BladeBrothers_0_1:: @ 081117C8
	.include "animations/gSpriteAnimations_BladeBrothers_0_1.s"

gSpriteAnimations_BladeBrothers_0_0:: @ 081117F9
	.include "animations/gSpriteAnimations_BladeBrothers_0_0.s"

gSpriteAnimations_BladeBrothers_0_3:: @ 0811182A
	.include "animations/gSpriteAnimations_BladeBrothers_0_3.s"

gSpriteAnimations_BladeBrothers_0_4:: @ 0811185B
	.include "animations/gSpriteAnimations_BladeBrothers_0_4.s"

gSpriteAnimations_BladeBrothers_1:: @ 081118CC
	.4byte gSpriteAnimations_BladeBrothers_1_0
	.4byte gSpriteAnimations_BladeBrothers_1_1
	.4byte gSpriteAnimations_BladeBrothers_1_0
	.4byte gSpriteAnimations_BladeBrothers_1_3
	.4byte gSpriteAnimations_BladeBrothers_1_4
	.4byte gSpriteAnimations_BladeBrothers_1_4
	.4byte gSpriteAnimations_BladeBrothers_1_4
	.4byte gSpriteAnimations_BladeBrothers_1_4
	.4byte 00000000

gSpriteAnimations_BladeBrothers_0:: @ 081118F0
	.4byte gSpriteAnimations_BladeBrothers_0_0
	.4byte gSpriteAnimations_BladeBrothers_0_1
	.4byte gSpriteAnimations_BladeBrothers_0_0
	.4byte gSpriteAnimations_BladeBrothers_0_3
	.4byte gSpriteAnimations_BladeBrothers_0_4
	.4byte gSpriteAnimations_BladeBrothers_0_4
	.4byte gSpriteAnimations_BladeBrothers_0_4
	.4byte gSpriteAnimations_BladeBrothers_0_4
	.4byte 00000000
