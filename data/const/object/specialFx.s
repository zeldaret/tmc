	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F960:: @ 0811F960
	.incbin "assets/specialFx/gUnk_0811F960.bin"
.ifdef EU
    @ TODO only small differences
	.incbin "assets/specialFx/gUnk_0811F960_1_EU.bin"
.else
	.incbin "assets/specialFx/gUnk_0811F960_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0811FAC0:: @ 0811FAC0
	.4byte sub_080844E0
	.4byte sub_080845B8

gUnk_0811FAC8:: @ 0811FAC8
	.incbin "assets/specialFx/gUnk_0811FAC8.bin"

gUnk_0811FACC:: @ 0811FACC
	.incbin "assets/specialFx/gUnk_0811FACC.bin"

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
	.incbin "assets/specialFx/gUnk_0811FB08.bin"
