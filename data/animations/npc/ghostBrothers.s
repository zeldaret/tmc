	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_GhostBrothers_0:: @ 08110300
	.include "animations/gSpriteAnimations_GhostBrothers_0.s"

gSpriteAnimations_GhostBrothers_3:: @ 08110311
	.include "animations/gSpriteAnimations_GhostBrothers_3.s"

gSpriteAnimations_GhostBrothers_1:: @ 08110322
	.include "animations/gSpriteAnimations_GhostBrothers_1.s"

gSpriteAnimations_GhostBrothers_4:: @ 08110333
	.include "animations/gSpriteAnimations_GhostBrothers_4.s"

gSpriteAnimations_GhostBrothers:: @ 0811033C
	.4byte gSpriteAnimations_GhostBrothers_0
	.4byte gSpriteAnimations_GhostBrothers_1
	.4byte gSpriteAnimations_GhostBrothers_0
	.4byte gSpriteAnimations_GhostBrothers_3
	.4byte gSpriteAnimations_GhostBrothers_4
	.4byte 00000000
