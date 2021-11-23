	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123E80:: @ 08123E80
	.4byte sub_0809CEA8
	.4byte sub_0809CEC0

gSpriteAnimations_Object93_0_0:: @ 08123E88
	.include "animations/gSpriteAnimations_Object93_0_0.s"

gSpriteAnimations_Object93_0:: @ 08123E9C
	.4byte gSpriteAnimations_Object93_0_0
	.include "animations/gSpriteAnimations_Object93_0.s"

gSpriteAnimations_Object93_1_0:: @ 08123EA4
	.include "animations/gSpriteAnimations_Object93_1_0.s"

gSpriteAnimations_Object93_1:: @ 08123EB8
	.4byte gSpriteAnimations_Object93_1_0
	.include "animations/gSpriteAnimations_Object93_1.s"
