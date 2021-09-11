	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD184:: @ 080CD184
	.incbin "assets/bombPeahat/gUnk_080CD184.bin"

gUnk_080CD195:: @ 080CD195
	.incbin "assets/bombPeahat/gUnk_080CD195.bin"

gUnk_080CD1D6:: @ 080CD1D6
	.incbin "assets/bombPeahat/gUnk_080CD1D6.bin"

gUnk_080CD217:: @ 080CD217
	.incbin "assets/bombPeahat/gUnk_080CD217.bin"

gUnk_080CD220:: @ 080CD220
	.4byte gUnk_080CD184
	.4byte gUnk_080CD195
	.4byte gUnk_080CD1D6
	.4byte gUnk_080CD217
	.4byte 00000000
