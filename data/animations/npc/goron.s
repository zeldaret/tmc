	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Goron_0:: @ 08111AC4
	.include "animations/gSpriteAnimations_Goron_0.s"

gSpriteAnimations_Goron_1:: @ 08111AC9
	.include "animations/gSpriteAnimations_Goron_1.s"

gSpriteAnimations_Goron_2:: @ 08111ACE
	.include "animations/gSpriteAnimations_Goron_2.s"

gSpriteAnimations_Goron_3:: @ 08111AD3
	.include "animations/gSpriteAnimations_Goron_3.s"

gSpriteAnimations_Goron_5:: @ 08111AD8
	.include "animations/gSpriteAnimations_Goron_5.s"

gSpriteAnimations_Goron_7:: @ 08111AF9
	.include "animations/gSpriteAnimations_Goron_7.s"

gSpriteAnimations_Goron_4:: @ 08111B1A
	.include "animations/gSpriteAnimations_Goron_4.s"

gSpriteAnimations_Goron_8:: @ 08111B3B
	.include "animations/gSpriteAnimations_Goron_8.s"

gSpriteAnimations_Goron:: @ 08111B60
	.4byte gSpriteAnimations_Goron_0
	.4byte gSpriteAnimations_Goron_1
	.4byte gSpriteAnimations_Goron_2
	.4byte gSpriteAnimations_Goron_3
	.4byte gSpriteAnimations_Goron_4
	.4byte gSpriteAnimations_Goron_5
	.4byte gSpriteAnimations_Goron_2
	.4byte gSpriteAnimations_Goron_7
	.4byte gSpriteAnimations_Goron_8
	.4byte 00000000
