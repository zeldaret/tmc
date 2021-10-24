	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_JailBars_0:: @ 08124994
	.include "animations/gSpriteAnimations_JailBars_0.s"

gSpriteAnimations_JailBars_1:: @ 081249A0
	.include "animations/gSpriteAnimations_JailBars_1.s"

gSpriteAnimations_JailBars:: @ 081249AC
	.4byte gSpriteAnimations_JailBars_0
	.4byte gSpriteAnimations_JailBars_1
	.4byte 00000000
