	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108314:: @ 08108314
	.4byte sub_08058EE4
	.4byte sub_08058FB0
	.4byte sub_08058FB0
	.4byte sub_08059094
	.4byte sub_080590E0
	.4byte sub_08059124
	.4byte sub_080591CC
	.4byte sub_08059220
	.4byte sub_08059290
	.4byte sub_080592A4
	.4byte sub_08059368
	.4byte sub_0805938C
	.4byte sub_08059424
	.4byte sub_0805947C
	.4byte sub_080594DC
	.4byte sub_08059548

gUnk_08108354:: @ 08108354
	.incbin "baserom.gba", 0x108354, 0x000002C

gUnk_08108380:: @ 08108380
	.4byte script_0800E600
	.4byte script_0800E62C
	.4byte script_0800E658
	.4byte script_0800E684
