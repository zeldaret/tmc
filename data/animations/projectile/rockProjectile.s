	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081295F4:: @ 081295F4
	.incbin "projectile1/gUnk_081295F4.bin"

gSpriteAnimations_RockProjectile:: @ 08129604
	.4byte gUnk_081295F4
	.4byte 00000000
