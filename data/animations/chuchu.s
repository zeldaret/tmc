	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA2B4:: @ 080CA2B4
	.incbin "baserom.gba", 0x0CA2B4, 0x000000A

gUnk_080CA2BE:: @ 080CA2BE
	.incbin "baserom.gba", 0x0CA2BE, 0x000002C

gUnk_080CA2EA:: @ 080CA2EA
	.incbin "baserom.gba", 0x0CA2EA, 0x0000011

gUnk_080CA2FB:: @ 080CA2FB
	.incbin "baserom.gba", 0x0CA2FB, 0x0000041

gUnk_080CA33C:: @ 080CA33C
	.incbin "baserom.gba", 0x0CA33C, 0x000001C

gUnk_080CA358:: @ 080CA358
	.incbin "baserom.gba", 0x0CA358, 0x000000C

gUnk_080CA364:: @ 080CA364
	.incbin "baserom.gba", 0x0CA364, 0x000000C

gUnk_080CA370:: @ 080CA370
	.incbin "baserom.gba", 0x0CA370, 0x0000041

gUnk_080CA3B1:: @ 080CA3B1
	.incbin "baserom.gba", 0x0CA3B1, 0x0000014

gUnk_080CA3C5:: @ 080CA3C5
	.incbin "baserom.gba", 0x0CA3C5, 0x0000069

gUnk_080CA42E:: @ 080CA42E
	.incbin "baserom.gba", 0x0CA42E, 0x0000042

gUnk_080CA470:: @ 080CA470
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
