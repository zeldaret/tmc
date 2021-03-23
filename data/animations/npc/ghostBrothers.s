	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110300:: @ 08110300
	.incbin "baserom.gba", 0x110300, 0x0000011

gUnk_08110311:: @ 08110311
	.incbin "baserom.gba", 0x110311, 0x0000011

gUnk_08110322:: @ 08110322
	.incbin "baserom.gba", 0x110322, 0x0000011

gUnk_08110333:: @ 08110333
	.incbin "baserom.gba", 0x110333, 0x0000009

gUnk_0811033C:: @ 0811033C
	.4byte gUnk_08110300
	.4byte gUnk_08110322
	.4byte gUnk_08110300
	.4byte gUnk_08110311
	.4byte gUnk_08110333
	.4byte 00000000
