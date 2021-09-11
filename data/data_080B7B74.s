	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B7B74:: @ 080B7B74
	.incbin "assets/data_080B7B74/gUnk_080B7B74.bin"
.ifdef EU
	.incbin "assets/data_080B7B74/gUnk_080B7B74_1_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080B7B74_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "assets/data_080B7B74/gUnk_080B7B74_3.bin"
.ifdef JP
	@ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080B7B74_4_JP.bin"
.else
.ifdef EU
	@ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080B7B74_5_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080B7B74_6_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080B7B74_7_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080B7B74_8_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "assets/data_080B7B74/gUnk_080B7B74_9.bin"

gUnk_080C8F2C:: @ 080C8F2C
	.incbin "assets/data_080B7B74/gUnk_080C8F2C.bin"

gUnk_080C8F54:: @ 080C8F54
	.incbin "assets/data_080B7B74/gUnk_080C8F54.bin"

gUnk_080C8F7C:: @ 080C8F7C
	.4byte gUnk_085C4DA0
	.4byte gUnk_085C4E60
	.4byte gUnk_085C4F20
	.4byte gUnk_085C4FE0


gUnk_080C8F8C:: @ 080C8F8C
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CB78
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_2_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_3_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CB78
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_4_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_5_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CB78
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_6_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_7_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CCB0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_8_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_9_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CCB0
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_10_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_11_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CD94
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_12_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_13_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CE58
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_14_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_15_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte EzloNag
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_16_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_17_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte EzloNag
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_18_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_19_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CD94
.ifdef EU
    @ TODO only small differences
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_20_EU.bin"
.else
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_21_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.4byte sub_0801CD94
	.incbin "assets/data_080B7B74/gUnk_080C8F8C_22.bin"

gUnk_080C903C:: @ 080C903C
	.4byte sub_0801CB90
	.4byte sub_0801CBC8

gUnk_080C9044:: @ 080C9044
	.incbin "assets/data_080B7B74/gUnk_080C9044.bin"

gUnk_080C904C:: @ 080C904C
	.4byte sub_0801CED8
	.4byte sub_0801CF18
	.4byte sub_0801CF60

gUnk_080C9058:: @ 080C9058
	.incbin "assets/data_080B7B74/gUnk_080C9058.bin"

gUnk_080C9094:: @ 080C9094
	.incbin "assets/data_080B7B74/gUnk_080C9094.bin"

