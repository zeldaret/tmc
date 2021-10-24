	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_BigIceBlock_0:: @ 081237BA
	.include "animations/gSpriteAnimations_BigIceBlock_0.s"

gSpriteAnimations_BigIceBlock_1:: @ 081237BE
	.include "animations/gSpriteAnimations_BigIceBlock_1.s"

gSpriteAnimations_BigIceBlock_2:: @ 081237C2
	.include "animations/gSpriteAnimations_BigIceBlock_2.s"

gSpriteAnimations_BigIceBlock_3:: @ 081237C6
	.include "animations/gSpriteAnimations_BigIceBlock_3.s"

gSpriteAnimations_BigIceBlock_4:: @ 081237CA
	.include "animations/gSpriteAnimations_BigIceBlock_4.s"

gSpriteAnimations_BigIceBlock:: @ 081237E0
	.4byte gSpriteAnimations_BigIceBlock_0
	.4byte gSpriteAnimations_BigIceBlock_1
	.4byte gSpriteAnimations_BigIceBlock_2
	.4byte gSpriteAnimations_BigIceBlock_3
	.4byte gSpriteAnimations_BigIceBlock_4
	.4byte 00000000
