	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CF8A4:: @ 080CF8A4
	.4byte sub_080392CC
	.4byte sub_0803933C
	.4byte sub_08001324
	.4byte sub_08039418
	.4byte sub_08001242
	.4byte sub_08039438

gUnk_080CF8BC:: @ 080CF8BC
	.4byte sub_080394CC
	.4byte sub_08039530
	.4byte sub_0803956C
	.4byte sub_0803958C
	.4byte sub_080395D8
	.4byte sub_08039604
	.4byte sub_08039628
	.4byte sub_08039670
	.4byte sub_08039688
	.4byte sub_080396BC
	.4byte sub_080396E4
	.4byte sub_0803970C

gUnk_080CF8EC:: @ 080CF8EC
	.4byte sub_0803945C
	.4byte sub_08039468
	.4byte sub_08039470

gUnk_080CF8F8:: @ 080CF8F8
	.incbin "baserom.gba", 0x0CF8F8, 0x0000008

gUnk_080CF900:: @ 080CF900
	.incbin "baserom.gba", 0x0CF900, 0x0000010

gUnk_080CF910:: @ 080CF910
	.incbin "baserom.gba", 0x0CF910, 0x0000008

gUnk_080CF918:: @ 080CF918
	.incbin "baserom.gba", 0x0CF918, 0x0000010

gUnk_080CF928:: @ 080CF928
	.incbin "baserom.gba", 0x0CF928, 0x0000004

gUnk_080CF92C:: @ 080CF92C
	.incbin "baserom.gba", 0x0CF92C, 0x0000004

gUnk_080CF930:: @ 080CF930
	.incbin "baserom.gba", 0x0CF930, 0x0000008

gUnk_080CF938:: @ 080CF938
	.incbin "baserom.gba", 0x0CF938, 0x000000A
