	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_Sluggula_0:: @ 080CBE02
	.include "animations/gSpriteAnimations_Sluggula_0.s"

gSpriteAnimations_Sluggula_1:: @ 080CBE1B
	.include "animations/gSpriteAnimations_Sluggula_1.s"

gSpriteAnimations_Sluggula_2:: @ 080CBE34
	.include "animations/gSpriteAnimations_Sluggula_2.s"

gSpriteAnimations_Sluggula_3:: @ 080CBE4D
	.include "animations/gSpriteAnimations_Sluggula_3.s"

gSpriteAnimations_Sluggula_4:: @ 080CBE66
	.include "animations/gSpriteAnimations_Sluggula_4.s"

gSpriteAnimations_Sluggula_5:: @ 080CBE8A
	.include "animations/gSpriteAnimations_Sluggula_5.s"

gSpriteAnimations_Sluggula_6:: @ 080CBE9E
	.include "animations/gSpriteAnimations_Sluggula_6.s"

gSpriteAnimations_Sluggula:: @ 080CBEA4
	.4byte gSpriteAnimations_Sluggula_0
	.4byte gSpriteAnimations_Sluggula_1
	.4byte gSpriteAnimations_Sluggula_2
	.4byte gSpriteAnimations_Sluggula_3
	.4byte gSpriteAnimations_Sluggula_4
	.4byte gSpriteAnimations_Sluggula_5
	.4byte gSpriteAnimations_Sluggula_6
	.4byte 00000000

