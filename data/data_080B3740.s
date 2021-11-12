	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080B37A0:: @ 080B37A0
.ifdef EU
    @ TODO only small differences
	.incbin "data_080B3740/gUnk_080B37A0_EU.bin"
.else
	.incbin "data_080B3740/gUnk_080B37A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "data_080B3740/gUnk_080B37A0_2_EU.bin"
.else
	.incbin "data_080B3740/gUnk_080B37A0_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B3D14:: @ 080B3D14
	.incbin "data_080B3740/gUnk_080B3D14.bin"

gUnk_080B3D20:: @ 080B3D20
.ifdef JP
	@ TODO only small differences
	.incbin "data_080B3740/gUnk_080B3D20_JP.bin"
.else
.ifdef EU
	.incbin "data_080B3740/gUnk_080B3D20_1_EU.bin"
.else
.ifdef DEMO_JP 
	.incbin "data_080B3740/gUnk_080B3D20_2_DEMO_JP.bin"
.else
	.incbin "data_080B3740/gUnk_080B3D20_3_USA-DEMO_USA.bin"
.endif
.endif
.endif
