	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CB8B4:: @ 080CB8B4
	.incbin "baserom.gba", 0x0CB8B4, 0x0000005

gUnk_080CB8B9:: @ 080CB8B9
	.incbin "baserom.gba", 0x0CB8B9, 0x0000005

gUnk_080CB8BE:: @ 080CB8BE
	.incbin "baserom.gba", 0x0CB8BE, 0x0000019

gUnk_080CB8D7:: @ 080CB8D7
	.incbin "baserom.gba", 0x0CB8D7, 0x0000019

gUnk_080CB8F0:: @ 080CB8F0
	.incbin "baserom.gba", 0x0CB8F0, 0x0000011

gUnk_080CB901:: @ 080CB901
	.incbin "baserom.gba", 0x0CB901, 0x0000013

gUnk_080CB914:: @ 080CB914
	.4byte gUnk_080CB8B4
	.4byte gUnk_080CB8B9
	.4byte gUnk_080CB8B9
	.4byte gUnk_080CB8B4
	.4byte gUnk_080CB8BE
	.4byte gUnk_080CB8D7
	.4byte gUnk_080CB8D7
	.4byte gUnk_080CB8BE
	.4byte gUnk_080CB8F0
	.4byte gUnk_080CB901
	.4byte gUnk_080CB901
	.4byte gUnk_080CB8F0
	.4byte 00000000