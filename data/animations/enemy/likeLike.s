	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CC734:: @ 080CC734
	.incbin "baserom.gba", 0x0CC734, 0x0000025

gUnk_080CC759:: @ 080CC759
	.incbin "baserom.gba", 0x0CC759, 0x0000015

gUnk_080CC76E:: @ 080CC76E
	.incbin "baserom.gba", 0x0CC76E, 0x0000012

gUnk_080CC780:: @ 080CC780
	.4byte gUnk_080CC734
	.4byte gUnk_080CC759
	.4byte gUnk_080CC76E
	.4byte 00000000
