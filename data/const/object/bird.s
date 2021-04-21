	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123EC0:: @ 08123EC0
	.4byte sub_0809CF3C
	.4byte sub_0809D030
	.4byte sub_0809D0F4
	.4byte sub_0809D178
	.4byte sub_0809D178
	.4byte sub_0809D178
	.4byte sub_0809D178
	.4byte sub_0809D178
	.4byte sub_0809D1F0
	.4byte sub_0809D498
	.4byte sub_0809D66C

gUnk_08123EEC:: @ 08123EEC
	.4byte sub_0809CF54
	.4byte sub_0809CFEC

gUnk_08123EF4:: @ 08123EF4
	.4byte sub_0809D048
	.4byte sub_0809D06C

gUnk_08123EFC:: @ 08123EFC
	.4byte sub_0809D084
	.4byte sub_0809D0AC

gUnk_08123F04:: @ 08123F04
	.4byte sub_0809D10C
	.4byte sub_0809D130

gUnk_08123F0C:: @ 08123F0C
	.incbin "baserom.gba", 0x123F0C, 0x0000014

gUnk_08123F20:: @ 08123F20
	.4byte gUnk_08123F0C
	.incbin "baserom.gba", 0x123F24, 0x0000004
