	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_Bobomb_0:: @ 080CD628
	.include "animations/gSpriteAnimations_Bobomb_0.s"

gSpriteAnimations_Bobomb_1:: @ 080CD639
	.include "animations/gSpriteAnimations_Bobomb_1.s"

gSpriteAnimations_Bobomb_2:: @ 080CD64A
	.include "animations/gSpriteAnimations_Bobomb_2.s"

gSpriteAnimations_Bobomb_3:: @ 080CD65B
	.include "animations/gSpriteAnimations_Bobomb_3.s"

gSpriteAnimations_Bobomb_4:: @ 080CD66C
	.include "animations/gSpriteAnimations_Bobomb_4.s"

gSpriteAnimations_Bobomb_5:: @ 080CD671
	.include "animations/gSpriteAnimations_Bobomb_5.s"

gSpriteAnimations_Bobomb_6:: @ 080CD676
	.include "animations/gSpriteAnimations_Bobomb_6.s"

gSpriteAnimations_Bobomb_7:: @ 080CD67F
	.include "animations/gSpriteAnimations_Bobomb_7.s"

gSpriteAnimations_Bobomb_8:: @ 080CD688
	.include "animations/gSpriteAnimations_Bobomb_8.s"

gSpriteAnimations_Bobomb_9:: @ 080CD6AC
	.include "animations/gSpriteAnimations_Bobomb_9.s"

gSpriteAnimations_Bobomb:: @ 080CD6D0
	.4byte gSpriteAnimations_Bobomb_0
	.4byte gSpriteAnimations_Bobomb_1
	.4byte gSpriteAnimations_Bobomb_2
	.4byte gSpriteAnimations_Bobomb_3
	.4byte gSpriteAnimations_Bobomb_4
	.4byte gSpriteAnimations_Bobomb_5
	.4byte gSpriteAnimations_Bobomb_6
	.4byte gSpriteAnimations_Bobomb_7
	.4byte gSpriteAnimations_Bobomb_8
	.4byte gSpriteAnimations_Bobomb_9
	.4byte 00000000
