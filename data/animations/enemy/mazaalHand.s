	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_MazaalHand_0:: @ 080CEF7C
	.include "animations/gSpriteAnimations_MazaalHand_0.s"

gSpriteAnimations_MazaalHand_1:: @ 080CEF9D
	.include "animations/gSpriteAnimations_MazaalHand_1.s"

gSpriteAnimations_MazaalHand_2:: @ 080CEFA5
	.include "animations/gSpriteAnimations_MazaalHand_2.s"

gSpriteAnimations_MazaalHand_3:: @ 080CEFAE
	.include "animations/gSpriteAnimations_MazaalHand_3.s"

gSpriteAnimations_MazaalHand_4:: @ 080CEFB2
	.include "animations/gSpriteAnimations_MazaalHand_4.s"

gSpriteAnimations_MazaalHand_5:: @ 080CEFB6
	.include "animations/gSpriteAnimations_MazaalHand_5.s"

gSpriteAnimations_MazaalHand_6:: @ 080CEFCB
	.include "animations/gSpriteAnimations_MazaalHand_6.s"

gSpriteAnimations_MazaalHand_7:: @ 080CEFE0
	.include "animations/gSpriteAnimations_MazaalHand_7.s"

gSpriteAnimations_MazaalHand_8:: @ 080CEFE9
	.include "animations/gSpriteAnimations_MazaalHand_8.s"

gSpriteAnimations_MazaalHand_9:: @ 080CF002
	.include "animations/gSpriteAnimations_MazaalHand_9.s"

gSpriteAnimations_MazaalHand:: @ 080CF014
	.4byte gSpriteAnimations_MazaalHand_0
	.4byte gSpriteAnimations_MazaalHand_1
	.4byte gSpriteAnimations_MazaalHand_2
	.4byte gSpriteAnimations_MazaalHand_3
	.4byte gSpriteAnimations_MazaalHand_4
	.4byte gSpriteAnimations_MazaalHand_5
	.4byte gSpriteAnimations_MazaalHand_6
	.4byte gSpriteAnimations_MazaalHand_7
	.4byte gSpriteAnimations_MazaalHand_8
	.4byte gSpriteAnimations_MazaalHand_9
	.4byte 00000000
