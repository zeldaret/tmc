	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110354:: @ 08110354
	.incbin "baserom.gba", 0x110354, 0x000000C

gUnk_08110360:: @ 08110360
	.4byte sub_080660EC
	.4byte sub_08066118
	.4byte sub_08066170

gUnk_0811036C:: @ 0811036C
	.4byte sub_08066178
	.4byte sub_080661B0
	.4byte sub_080661BC
	.4byte sub_08066200
	.4byte sub_08066218

gUnk_08110380:: @ 08110380
	.incbin "baserom.gba", 0x110380, 0x0000010

gUnk_08110390:: @ 08110390
	.incbin "baserom.gba", 0x110390, 0x0000040

gUnk_081103D0:: @ 081103D0
	.incbin "baserom.gba", 0x1103D0, 0x0000010

gUnk_081103E0:: @ 081103E0
	.incbin "baserom.gba", 0x1103E0, 0x0000004
