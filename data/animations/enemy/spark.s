	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD258:: @ 080CD258
	.incbin "assets/spark/gUnk_080CD258.bin"

gUnk_080CD274:: @ 080CD274
	.4byte gUnk_080CD258
	.4byte 00000000
