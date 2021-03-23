	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FEB0:: @ 0810FEB0
	.incbin "baserom.gba", 0x10FEB0, 0x000000C

gUnk_0810FEBC:: @ 0810FEBC
	.4byte sub_08065570
	.4byte sub_0806559C

gUnk_0810FEC4:: @ 0810FEC4
	.4byte sub_08065608
	.4byte sub_08065648
	.4byte sub_080656D4
	.4byte sub_080656A4
	.4byte sub_08065680

gUnk_0810FED8:: @ 0810FED8
	.incbin "baserom.gba", 0x10FED8, 0x0000008
