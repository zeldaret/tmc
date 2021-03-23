	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810AA90:: @ 0810AA90
	.incbin "baserom.gba", 0x10AA90, 0x0000029

gUnk_0810AAB9:: @ 0810AAB9
	.incbin "baserom.gba", 0x10AAB9, 0x0000029

gUnk_0810AAE2:: @ 0810AAE2
	.incbin "baserom.gba", 0x10AAE2, 0x0000029

gUnk_0810AB0B:: @ 0810AB0B
	.incbin "baserom.gba", 0x10AB0B, 0x0000029

gUnk_0810AB34:: @ 0810AB34
	.incbin "baserom.gba", 0x10AB34, 0x0000031

gUnk_0810AB65:: @ 0810AB65
	.incbin "baserom.gba", 0x10AB65, 0x0000031

gUnk_0810AB96:: @ 0810AB96
	.incbin "baserom.gba", 0x10AB96, 0x0000031

gUnk_0810ABC7:: @ 0810ABC7
	.incbin "baserom.gba", 0x10ABC7, 0x0000031

gUnk_0810ABF8:: @ 0810ABF8
	.4byte gUnk_0810AA90
	.4byte gUnk_0810AAB9
	.4byte gUnk_0810AAE2
	.4byte gUnk_0810AB0B
	.4byte gUnk_0810AB34
	.4byte gUnk_0810AB65
	.4byte gUnk_0810AB96
	.4byte gUnk_0810ABC7
	.4byte 00000000
