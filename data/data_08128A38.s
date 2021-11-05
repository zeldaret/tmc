	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08128A38:: @ 08128A38
	.incbin "data_08127280/gUnk_08128A38.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_1.bin"
	.4byte sub_080A5218
	.incbin "data_08127280/gUnk_08128A38_2.bin"
	.4byte sub_080A5574
	.incbin "data_08127280/gUnk_08128A38_3.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_4.bin"
	.4byte sub_080A6270
	.incbin "data_08127280/gUnk_08128A38_5.bin"
	.4byte sub_080A5BF0
	.incbin "data_08127280/gUnk_08128A38_6.bin"
	.4byte sub_080A6608
	.incbin "data_08127280/gUnk_08128A38_7.bin"
	.4byte sub_080A6008
	.incbin "data_08127280/gUnk_08128A38_8.bin"
	.4byte sub_080A60E0
	.incbin "data_08127280/gUnk_08128A38_9.bin"
	.4byte sub_080A5AD8
	.incbin "data_08127280/gUnk_08128A38_10.bin"
	.4byte sub_080A5990
	.incbin "data_08127280/gUnk_08128A38_11.bin"
	.4byte sub_080A5990
	.incbin "data_08127280/gUnk_08128A38_12.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_13.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_14.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_15.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_16.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_17.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_18.bin"
	.4byte sub_080A4F28
	.incbin "data_08127280/gUnk_08128A38_19.bin"
	.4byte sub_080A4F28

gUnk_08128AD8:: @ 08128AD8
.ifdef EU
    @ TODO only small differences
	.incbin "data_08127280/gUnk_08128AD8_EU.bin"
.else
	.incbin "data_08127280/gUnk_08128AD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_08128B30:: @ 08128B30
	.4byte sub_080A4F28
	.4byte sub_080A4FA0
	.4byte sub_080A4FB8
	.4byte sub_080A50B8
	.4byte sub_080A50E8
	.4byte sub_080A5108

gUnk_08128B48:: @ 08128B48
	.4byte sub_080A5238
	.4byte sub_080A529C

gUnk_08128B50:: @ 08128B50
	.incbin "data_08127280/gUnk_08128B50.bin"
