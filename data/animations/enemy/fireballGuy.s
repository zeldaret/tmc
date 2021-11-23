	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_FireballGuy_0:: @ 080D1818
	.include "animations/gSpriteAnimations_FireballGuy_0.s"

gSpriteAnimations_FireballGuy_1:: @ 080D1839
	.include "animations/gSpriteAnimations_FireballGuy_1.s"

gSpriteAnimations_FireballGuy:: @ 080D185C
	.4byte gSpriteAnimations_FireballGuy_0
	.4byte gSpriteAnimations_FireballGuy_1
	.4byte 00000000
