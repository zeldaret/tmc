	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Slime_0:: @ 080D16DC
	.include "animations/gSpriteAnimations_Slime_0.s"

gSpriteAnimations_Slime_1:: @ 080D16E5
	.include "animations/gSpriteAnimations_Slime_1.s"

gSpriteAnimations_Slime_2:: @ 080D16F5
	.include "animations/gSpriteAnimations_Slime_2.s"

gSpriteAnimations_Slime_3:: @ 080D170D
	.include "animations/gSpriteAnimations_Slime_3.s"

gSpriteAnimations_Slime_4:: @ 080D171D
	.include "animations/gSpriteAnimations_Slime_4.s"

gSpriteAnimations_Slime_5:: @ 080D1741
	.include "animations/gSpriteAnimations_Slime_5.s"

gSpriteAnimations_Slime_6:: @ 080D1761
	.include "animations/gSpriteAnimations_Slime_6.s"

gSpriteAnimations_Slime_7:: @ 080D176A
	.include "animations/gSpriteAnimations_Slime_7.s"

gSpriteAnimations_Slime_8:: @ 080D1773
	.include "animations/gSpriteAnimations_Slime_8.s"

gSpriteAnimations_Slime_9:: @ 080D1778
	.include "animations/gSpriteAnimations_Slime_9.s"

gSpriteAnimations_Slime_10:: @ 080D177D
	.include "animations/gSpriteAnimations_Slime_10.s"

gSpriteAnimations_Slime:: @ 080D1790
	.4byte gSpriteAnimations_Slime_0
	.4byte gSpriteAnimations_Slime_1
	.4byte gSpriteAnimations_Slime_2
	.4byte gSpriteAnimations_Slime_3
	.4byte gSpriteAnimations_Slime_4
	.4byte gSpriteAnimations_Slime_5
	.4byte gSpriteAnimations_Slime_6
	.4byte gSpriteAnimations_Slime_7
	.4byte gSpriteAnimations_Slime_8
	.4byte gSpriteAnimations_Slime_9
	.4byte gSpriteAnimations_Slime_10
	.4byte 00000000
