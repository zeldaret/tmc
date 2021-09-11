	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080B3740:: @ 080B3740
	.incbin "assets/data_080B3740/gUnk_080B3740.bin"

gUnk_080B3744:: @ 080B3744
	.4byte sub_08018308
	.4byte sub_08017AD8
	.4byte sub_08017AD8
	.4byte sub_08017ADC
	.4byte sub_08017B58
	.4byte sub_08017EB0
	.4byte sub_08017F3C
	.4byte sub_08017F40
	.4byte sub_0801802C
	.4byte sub_08017DD4
	.4byte sub_080180E8
	.4byte sub_08017BBC
	.4byte sub_08017C40
	.4byte sub_08017D6C
	.4byte sub_08017D28
	.4byte sub_08018168
	.4byte sub_08018228
	.4byte sub_08018250
	.4byte sub_08018288
	.4byte sub_080182A8
	.4byte sub_08017B1C
	.4byte sub_08017CBC
	.4byte sub_08017E88

gUnk_080B37A0:: @ 080B37A0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B3740/gUnk_080B37A0_EU.bin"
.else
	.incbin "assets/data_080B3740/gUnk_080B37A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B3740/gUnk_080B37A0_2_EU.bin"
.else
	.incbin "assets/data_080B3740/gUnk_080B37A0_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B3D14:: @ 080B3D14
	.incbin "assets/data_080B3740/gUnk_080B3D14.bin"

gUnk_080B3D20:: @ 080B3D20
.ifdef JP
	@ TODO only small differences
	.incbin "assets/data_080B3740/gUnk_080B3D20_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080B3740/gUnk_080B3D20_1_EU.bin"
.else
.ifdef DEMO_JP 
	.incbin "assets/data_080B3740/gUnk_080B3D20_2_DEMO_JP.bin"
.else
	.incbin "assets/data_080B3740/gUnk_080B3D20_3_USA-DEMO_USA.bin"
.endif
.endif
.endif
