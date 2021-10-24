	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gSpriteAnimations_Octorok_0:: @ 080CA180
	.include "animations/gSpriteAnimations_Octorok_0.s"

gSpriteAnimations_Octorok_1:: @ 080CA189
	.include "animations/gSpriteAnimations_Octorok_1.s"

gSpriteAnimations_Octorok_2:: @ 080CA192
	.include "animations/gSpriteAnimations_Octorok_2.s"

gSpriteAnimations_Octorok_3:: @ 080CA19B
	.include "animations/gSpriteAnimations_Octorok_3.s"

gSpriteAnimations_Octorok_4:: @ 080CA1A4
	.include "animations/gSpriteAnimations_Octorok_4.s"

gSpriteAnimations_Octorok_5:: @ 080CA1B9
	.include "animations/gSpriteAnimations_Octorok_5.s"

gSpriteAnimations_Octorok_6:: @ 080CA1CE
	.include "animations/gSpriteAnimations_Octorok_6.s"

gSpriteAnimations_Octorok_7:: @ 080CA1E3
	.include "animations/gSpriteAnimations_Octorok_7.s"

gSpriteAnimations_Octorok:: @ 080CA1F8
	.4byte gSpriteAnimations_Octorok_0
	.4byte gSpriteAnimations_Octorok_1
	.4byte gSpriteAnimations_Octorok_2
	.4byte gSpriteAnimations_Octorok_3
	.4byte gSpriteAnimations_Octorok_4
	.4byte gSpriteAnimations_Octorok_5
	.4byte gSpriteAnimations_Octorok_6
	.4byte gSpriteAnimations_Octorok_7
	.4byte 00000000
