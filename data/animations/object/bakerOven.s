	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_BakerOven_0:: @ 08123E2C
	.include "animations/gSpriteAnimations_BakerOven_0.s"

gSpriteAnimations_BakerOven:: @ 08123E78
	.4byte gSpriteAnimations_BakerOven_0
	.4byte 00000000
