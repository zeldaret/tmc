	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F960:: @ 0811F960
	.incbin "baserom.gba", 0x11F960, 0x000009B

gUnk_0811F9FB:: @ 0811F9FB
	.incbin "baserom.gba", 0x11F9FB, 0x00000C5

gUnk_0811FAC0:: @ 0811FAC0
	.4byte sub_080844E0
	.4byte sub_080845B8

gUnk_0811FAC8:: @ 0811FAC8
	.incbin "baserom.gba", 0x11FAC8, 0x0000004

gUnk_0811FACC:: @ 0811FACC
	.incbin "baserom.gba", 0x11FACC, 0x0000004

gUnk_0811FAD0:: @ 0811FAD0
	.4byte sub_080845DC
	.4byte sub_080845F8
	.4byte sub_08084630
	.4byte sub_08084694
	.4byte DeleteEntity
	.4byte sub_08084680
	.4byte sub_080846B0
	.4byte sub_0808471C
	.4byte sub_08084770
	.4byte sub_08084798
	.4byte sub_080847BC
	.4byte sub_08084784
	.4byte sub_080847D0
	.4byte sub_080847E0

gUnk_0811FB08:: @ 0811FB08
	.incbin "baserom.gba", 0x11FB08, 0x0000008
