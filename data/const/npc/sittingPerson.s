	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810CB78:: @ 0810CB78
	.incbin "baserom.gba", 0x10CB78, 0x0000048

gUnk_0810CBC0:: @ 0810CBC0
	.incbin "baserom.gba", 0x10CBC0, 0x000000D

gUnk_0810CBCD:: @ 0810CBCD
	.incbin "baserom.gba", 0x10CBCD, 0x000000B

gUnk_0810CBD8:: @ 0810CBD8
	.4byte sub_08063758
	.4byte sub_080637B8
	.4byte sub_08063830

gUnk_0810CBE4:: @ 0810CBE4
	.incbin "baserom.gba", 0x10CBE4, 0x0000020

gUnk_0810CC04:: @ 0810CC04
	.incbin "baserom.gba", 0x10CC04, 0x0000004

gUnk_0810CC08:: @ 0810CC08
	.incbin "baserom.gba", 0x10CC08, 0x00000C4
	.4byte sub_0806387C
	.incbin "baserom.gba", 0x10CCD0, 0x0000004
	.4byte sub_0806387C
	.incbin "baserom.gba", 0x10CCD8, 0x0000004
	.4byte sub_0806387C
	.incbin "baserom.gba", 0x10CCE0, 0x0000004
	.4byte sub_0806387C
	.incbin "baserom.gba", 0x10CCE8, 0x0000004
	.4byte sub_0806387C
	.incbin "baserom.gba", 0x10CCF0, 0x0000004
	.4byte sub_0806387C
	.incbin "baserom.gba", 0x10CCF8, 0x0000004
	.4byte sub_0806387C
	.incbin "baserom.gba", 0x10CD00, 0x0000004
	.4byte sub_0806387C
	.incbin "baserom.gba", 0x10CD08, 0x0000004
	.4byte sub_0806390C
	.incbin "baserom.gba", 0x10CD10, 0x0000004
	.4byte sub_0806390C
	.incbin "baserom.gba", 0x10CD18, 0x0000004
	.4byte sub_0806390C
	.incbin "baserom.gba", 0x10CD20, 0x0000004
	.4byte sub_0806390C
	.incbin "baserom.gba", 0x10CD28, 0x0000004
	.4byte sub_0806390C
	.incbin "baserom.gba", 0x10CD30, 0x0000004
	.4byte sub_0806390C
	.incbin "baserom.gba", 0x10CD38, 0x0000004
	.4byte sub_0806390C
	.incbin "baserom.gba", 0x10CD40, 0x0000004
	.4byte sub_0806390C
	.incbin "baserom.gba", 0x10CD48, 0x0000040

gUnk_0810CD88:: @ 0810CD88
	.incbin "baserom.gba", 0x10CD88, 0x0000018
