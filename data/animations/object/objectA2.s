	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

@ TODO might as well be palaceArchway
gSpriteAnimations_ObjectA2_0:: @ 08124712
	.include "animation/gSpriteAnimations_ObjectA2_0.s"

gSpriteAnimations_ObjectA2_1:: @ 08124743
	.include "animation/gSpriteAnimations_ObjectA2_1.s"

gSpriteAnimations_ObjectA2_2:: @ 08124764
	.include "animation/gSpriteAnimations_ObjectA2_2.s"

gSpriteAnimations_ObjectA2:: @ 08124788
	.4byte gSpriteAnimations_ObjectA2_0
	.4byte gSpriteAnimations_ObjectA2_1
	.4byte gSpriteAnimations_ObjectA2_2
	.4byte 00000000
