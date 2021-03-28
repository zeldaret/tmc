	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CBBEC:: @ 080CBBEC
	.incbin "baserom.gba", 0x0CBBEC, 0x0000044
	.4byte gUnk_080CBBEC
    .4byte 00000000


