	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CFBE8:: @ 080CFBE8
	.incbin "baserom.gba", 0x0CFBE8, 0x0000024

gUnk_080CFC0C:: @ 080CFC0C
	.4byte gUnk_080CFBE8
	.4byte 00000000
