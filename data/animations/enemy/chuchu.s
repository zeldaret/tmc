	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA2B4:: @ 080CA2B4
	.incbin "chuchu/gUnk_080CA2B4.bin"

gUnk_080CA2BE:: @ 080CA2BE
	.incbin "chuchu/gUnk_080CA2BE.bin"

gUnk_080CA2EA:: @ 080CA2EA
	.incbin "chuchu/gUnk_080CA2EA.bin"

gUnk_080CA2FB:: @ 080CA2FB
	.incbin "chuchu/gUnk_080CA2FB.bin"

gUnk_080CA33C:: @ 080CA33C
	.incbin "chuchu/gUnk_080CA33C.bin"

gUnk_080CA358:: @ 080CA358
	.incbin "chuchu/gUnk_080CA358.bin"

gUnk_080CA364:: @ 080CA364
	.incbin "chuchu/gUnk_080CA364.bin"

gUnk_080CA370:: @ 080CA370
	.incbin "chuchu/gUnk_080CA370.bin"

gUnk_080CA3B1:: @ 080CA3B1
	.incbin "chuchu/gUnk_080CA3B1.bin"

gUnk_080CA3C5:: @ 080CA3C5
	.incbin "chuchu/gUnk_080CA3C5.bin"

gUnk_080CA42E:: @ 080CA42E
	.incbin "chuchu/gUnk_080CA42E.bin"

gSpriteAnimations_Chuchu:: @ 080CA470
	.4byte gUnk_080CA2BE
	.4byte gUnk_080CA2EA
	.4byte gUnk_080CA2FB
	.4byte gUnk_080CA33C
	.4byte gUnk_080CA358
	.4byte gUnk_080CA364
	.4byte gUnk_080CA370
	.4byte gUnk_080CA3B1
	.4byte gUnk_080CA3C5
	.4byte gUnk_080CA42E
	.4byte 00000000
