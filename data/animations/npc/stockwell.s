	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FDE8:: @ 0810FDE8
	.incbin "baserom.gba", 0x10FDE8, 0x0000005

gUnk_0810FDED:: @ 0810FDED
	.incbin "baserom.gba", 0x10FDED, 0x0000005

gUnk_0810FDF2:: @ 0810FDF2
	.incbin "baserom.gba", 0x10FDF2, 0x0000005

gUnk_0810FDF7:: @ 0810FDF7
	.incbin "baserom.gba", 0x10FDF7, 0x000000C

gUnk_0810FE03:: @ 0810FE03
	.incbin "baserom.gba", 0x10FE03, 0x0000005

gUnk_0810FE08:: @ 0810FE08
	.incbin "baserom.gba", 0x10FE08, 0x0000017

gUnk_0810FE1F:: @ 0810FE1F
	.incbin "baserom.gba", 0x10FE1F, 0x0000049

gUnk_0810FE68:: @ 0810FE68
	.incbin "baserom.gba", 0x10FE68, 0x0000028

gUnk_0810FE90:: @ 0810FE90
	.4byte gUnk_0810FDED
	.4byte gUnk_0810FDE8
	.4byte gUnk_0810FDED
	.4byte gUnk_0810FDF2
	.4byte gUnk_0810FDF7
	.4byte gUnk_0810FE03
	.4byte gUnk_0810FE1F
	.4byte gUnk_0810FE68
