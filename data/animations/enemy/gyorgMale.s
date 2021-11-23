	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_GyorgMale_0:: @ 080D1C70
	.include "animations/gSpriteAnimations_GyorgMale_0.s"

gSpriteAnimations_GyorgMale_1:: @ 080D1C91
	.include "animations/gSpriteAnimations_GyorgMale_1.s"

gSpriteAnimations_GyorgMale:: @ 080D1CBC
	.4byte gSpriteAnimations_GyorgMale_0
	.4byte gSpriteAnimations_GyorgMale_1
	.4byte 00000000
