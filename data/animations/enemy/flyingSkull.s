	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CFBE8:: @ 080CFBE8
	.incbin "assets/flyingSkull/gUnk_080CFBE8.bin"

gUnk_080CFC0C:: @ 080CFC0C
	.4byte gUnk_080CFBE8
	.4byte 00000000
