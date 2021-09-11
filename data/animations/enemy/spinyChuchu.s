	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CBA64:: @ 080CBA64
	.incbin "assets/spinyChuchu/gUnk_080CBA64.bin"

gUnk_080CBAA5:: @ 080CBAA5
	.incbin "assets/spinyChuchu/gUnk_080CBAA5.bin"

gUnk_080CBAE5:: @ 080CBAE5
	.incbin "assets/spinyChuchu/gUnk_080CBAE5.bin"

gUnk_080CBAFD:: @ 080CBAFD
	.incbin "assets/spinyChuchu/gUnk_080CBAFD.bin"

gUnk_080CBB21:: @ 080CBB21
	.incbin "assets/spinyChuchu/gUnk_080CBB21.bin"

gUnk_080CBB32:: @ 080CBB32
	.incbin "assets/spinyChuchu/gUnk_080CBB32.bin"

gUnk_080CBB3F:: @ 080CBB3F
	.incbin "assets/spinyChuchu/gUnk_080CBB3F.bin"

gUnk_080CBB44:: @ 080CBB44
	.4byte gUnk_080CBA64
	.4byte gUnk_080CBAA5
	.4byte gUnk_080CBAE5
	.4byte gUnk_080CBAFD
	.4byte gUnk_080CBB21
	.4byte gUnk_080CBB32
	.4byte gUnk_080CBB3F
	.4byte 00000000
