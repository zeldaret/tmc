	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Bombarossa_0:: @ 080CEB60
	.include "animations/gSpriteAnimations_Bombarossa_0.s"

gSpriteAnimations_Bombarossa:: @ 080CEB6C
	.4byte gSpriteAnimations_Bombarossa_0
	.4byte 00000000
