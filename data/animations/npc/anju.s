	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_Anju_4:: @ 081136D8
	.include "animations/gSpriteAnimations_Anju_4.s"

gSpriteAnimations_Anju_5:: @ 081136E9
	.include "animations/gSpriteAnimations_Anju_5.s"

gSpriteAnimations_Anju_6:: @ 081136FA
	.include "animations/gSpriteAnimations_Anju_6.s"

gSpriteAnimations_Anju_7:: @ 0811370B
	.include "animations/gSpriteAnimations_Anju_7.s"

gSpriteAnimations_Anju_0:: @ 0811371C
	.include "animations/gSpriteAnimations_Anju_0.s"

gSpriteAnimations_Anju_1:: @ 08113721
	.include "animations/gSpriteAnimations_Anju_1.s"

gSpriteAnimations_Anju_2:: @ 08113726
	.include "animations/gSpriteAnimations_Anju_2.s"

gSpriteAnimations_Anju_3:: @ 0811372B
	.include "animations/gSpriteAnimations_Anju_3.s"

gSpriteAnimations_Anju:: @ 08113730
	.4byte gSpriteAnimations_Anju_0
	.4byte gSpriteAnimations_Anju_1
	.4byte gSpriteAnimations_Anju_2
	.4byte gSpriteAnimations_Anju_3
	.4byte gSpriteAnimations_Anju_4
	.4byte gSpriteAnimations_Anju_5
	.4byte gSpriteAnimations_Anju_6
	.4byte gSpriteAnimations_Anju_7
	.4byte 00000000
