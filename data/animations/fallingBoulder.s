	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD5A4:: @ 080CD5A4
	.incbin "baserom.gba", 0x0CD5A4, 0x0000011

gUnk_080CD5B5:: @ 080CD5B5
	.incbin "baserom.gba", 0x0CD5B5, 0x0000013

gUnk_080CD5C8:: @ 080CD5C8
	.4byte gUnk_080CD5A4
	.4byte gUnk_080CD5B5
	.4byte 00000000
