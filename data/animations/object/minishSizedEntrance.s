	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

@ TODO might as well be giantRock or archway
gSpriteAnimations_MinishSizedEntrance_0:: @ 08122264
	.include "animations/gSpriteAnimations_MinishSizedEntrance_0.s"

gSpriteAnimations_MinishSizedEntrance_1:: @ 08122268
	.include "animations/gSpriteAnimations_MinishSizedEntrance_1.s"

gSpriteAnimations_MinishSizedEntrance:: @ 0812226C
	.4byte gSpriteAnimations_MinishSizedEntrance_0
	.4byte gSpriteAnimations_MinishSizedEntrance_1
	.4byte 00000000

