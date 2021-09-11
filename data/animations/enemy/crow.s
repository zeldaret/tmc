	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_080CE9B0:: @ 080CE9B0
	.incbin "assets/crow/gUnk_080CE9B0.bin"

gUnk_080CE9B5:: @ 080CE9B5
	.incbin "assets/crow/gUnk_080CE9B5.bin"

gUnk_080CE9BA:: @ 080CE9BA
	.incbin "assets/crow/gUnk_080CE9BA.bin"

gUnk_080CE9CB:: @ 080CE9CB
	.incbin "assets/crow/gUnk_080CE9CB.bin"

gUnk_080CE9DC:: @ 080CE9DC
	.incbin "assets/crow/gUnk_080CE9DC.bin"

gUnk_080CE9ED:: @ 080CE9ED
	.incbin "assets/crow/gUnk_080CE9ED.bin"

gUnk_080CEA00:: @ 080CEA00
	.4byte gUnk_080CE9B0
	.4byte gUnk_080CE9B5
	.4byte gUnk_080CE9BA
	.4byte gUnk_080CE9CB
	.4byte gUnk_080CE9DC
	.4byte gUnk_080CE9ED
	.4byte 00000000
