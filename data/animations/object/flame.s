	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Flame_0:: @ 08120DD8
	.include "animations/gSpriteAnimations_Flame_0.s"

gSpriteAnimations_Flame:: @ 08120DEC
	.4byte gSpriteAnimations_Flame_0
	.4byte 00000000
