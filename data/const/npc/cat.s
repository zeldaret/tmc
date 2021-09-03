	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110EF0:: @ 08110EF0 
	.incbin "baserom.gba", 0x110EF0, 0x0000008

gUnk_08110EF8:: @ 08110EF8
	.incbin "baserom.gba", 0x110EF8, 0x0000002
	.incbin "baserom.gba", 0x110EFA, 0x000000F
	.incbin "baserom.gba", 0x110F09, 0x0000001
	.incbin "baserom.gba", 0x110F0A, 0x0000002
	.incbin "baserom.gba", 0x110F0C, 0x000000A
	.incbin "baserom.gba", 0x110F16, 0x00000EA
	.incbin "baserom.gba", 0x111000, 0x0000003
	.incbin "baserom.gba", 0x111003, 0x000000A
	.incbin "baserom.gba", 0x11100D, 0x00000CB

gCat:: @ 081110D8
	.4byte sub_080677EC
	.4byte sub_080678AC
	.4byte sub_08067904
	.4byte sub_0806797C
	.4byte sub_0806799C
	.4byte sub_080679C4
	.4byte sub_08067A0C
	.4byte sub_08067A78
	.4byte sub_08067A98

gUnk_081110FC:: @ 081110FC
	.incbin "baserom.gba", 0x1110FC, 0x0000008

gUnk_08111104:: @ 08111104
	.incbin "baserom.gba", 0x111104, 0x0000008

gUnk_0811110C:: @ 0811110C
	.incbin "baserom.gba", 0x11110C, 0x0000001
	.incbin "baserom.gba", 0x11110D, 0x0000001
	.incbin "baserom.gba", 0x11110E, 0x0000001

gUnk_0811110F:: @ 0811110F
	.incbin "baserom.gba", 0x11110F, 0x0000002
	.incbin "baserom.gba", 0x111111, 0x0000002
	.incbin "baserom.gba", 0x111113, 0x0000001
