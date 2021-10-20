	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A814:: @ 0812A814
	.incbin "projectile1F/gUnk_0812A814.bin"

gUnk_0812A825:: @ 0812A825
	.incbin "projectile1F/gUnk_0812A825.bin"

gSpriteAnimations_V2Projectile:: @ 0812A840
	.4byte gUnk_0812A814
	.4byte gUnk_0812A825
	.4byte 00000000
