	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811EBFC:: @ 0811EBFC
	.4byte sub_08081634
	.4byte sub_08081720
	.4byte sub_08081760

gUnk_0811EC08:: @ 0811EC08
	.incbin "baserom.gba", 0x11EC08, 0x0000018

gUnk_0811EC20:: @ 0811EC20
	.incbin "baserom.gba", 0x11EC20, 0x0000004

gUnk_0811EC24:: @ 0811EC24
	.4byte sub_080817CC
	.4byte sub_080817D8
	.4byte sub_080817F0
	.4byte sub_080817E4
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817CC
	.4byte sub_080817FC

gUnk_0811EC64:: @ 0811EC64
	.incbin "baserom.gba", 0x11EC64, 0x0000070
