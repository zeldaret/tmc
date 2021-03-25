	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108DE8:: @ 08108DE8
	.incbin "baserom.gba", 0x108DE8, 0x0000040

gUnk_08108E28:: @ 08108E28 
	.4byte sub_0805E140
	.4byte sub_0805E18C

gUnk_08108E30:: @ 08108E30
	.incbin "baserom.gba", 0x108E30, 0x0000018

gUnk_08108E48:: @ 08108E48
	.incbin "baserom.gba", 0x108E48, 0x0000002

gUnk_08108E4A:: @ 08108E4A
	.incbin "baserom.gba", 0x108E4A, 0x0000016

gUnk_08108E60:: @ 08108E60
	.incbin "baserom.gba", 0x108E60, 0x000000C
