	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CEBAC:: @ 080CEBAC
	.incbin "baserom.gba", 0x0CEBAC, 0x0000011

gUnk_080CEBBD:: @ 080CEBBD
	.incbin "baserom.gba", 0x0CEBBD, 0x0000013

gUnk_080CEBD0:: @ 080CEBD0
	.4byte gUnk_080CEBAC
	.4byte gUnk_080CEBBD
	.4byte 00000000
