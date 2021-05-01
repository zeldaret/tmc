	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08122644:: @ 08122644
	.4byte sub_08092290
	.4byte sub_0809229C
	.4byte sub_080922E4

gUnk_08122650:: @ 08122650
	.4byte sub_08092368
	.4byte sub_080923A0
	.4byte sub_080923E4
	.4byte sub_08092420
	.4byte sub_0809246C
	.4byte sub_080924E4
	.4byte sub_08092530
	.4byte sub_08092590

gUnk_08122670:: @ 08122670
	.incbin "baserom.gba", 0x122670, 0x0000014

gUnk_08122684:: @ 08122684
	.incbin "baserom.gba", 0x122684, 0x0000014

gUnk_08122698:: @ 08122698
	.4byte gUnk_08122670
	.4byte gUnk_08122684
	.incbin "baserom.gba", 0x1226A0, 0x0000004
