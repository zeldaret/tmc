	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CEBAC:: @ 080CEBAC
	.incbin "wisp/gUnk_080CEBAC.bin"

gUnk_080CEBBD:: @ 080CEBBD
	.incbin "wisp/gUnk_080CEBBD.bin"

gSpriteAnimations_Wisp:: @ 080CEBD0
	.4byte gUnk_080CEBAC
	.4byte gUnk_080CEBBD
	.4byte 00000000
