	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA4D4:: @ 080CA4D4
	.incbin "leever/gUnk_080CA4D4.bin"

gUnk_080CA500:: @ 080CA500
	.incbin "leever/gUnk_080CA500.bin"

gUnk_080CA51C:: @ 080CA51C
	.incbin "leever/gUnk_080CA51C.bin"

gSpriteAnimations_Leever:: @ 080CA560
	.4byte gUnk_080CA4D4
	.4byte gUnk_080CA500
	.4byte gUnk_080CA51C
	.4byte 00000000
