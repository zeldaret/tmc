	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ObjectAB_0:: @ 08124878
	.include "animations/gSpriteAnimations_ObjectAB_0.s"

gSpriteAnimations_ObjectAB:: @ 08124890
	.4byte gSpriteAnimations_ObjectAB_0
	.4byte 00000000
