	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CC734:: @ 080CC734
	.incbin "assets/likeLike/gUnk_080CC734.bin"

gUnk_080CC759:: @ 080CC759
	.incbin "assets/likeLike/gUnk_080CC759.bin"

gUnk_080CC76E:: @ 080CC76E
	.incbin "assets/likeLike/gUnk_080CC76E.bin"

gUnk_080CC780:: @ 080CC780
	.4byte gUnk_080CC734
	.4byte gUnk_080CC759
	.4byte gUnk_080CC76E
	.4byte 00000000
