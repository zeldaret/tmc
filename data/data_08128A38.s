	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08128A38:: @ 08128A38
	.incbin "data_08127280/gUnk_08128A38.bin"
	.4byte PauseMenu_Variant0
	.incbin "data_08127280/gUnk_08128A38_1.bin"
	.4byte PauseMenu_ItemMenu
	.incbin "data_08127280/gUnk_08128A38_2.bin"
	.4byte PauseMenu2
	.incbin "data_08127280/gUnk_08128A38_3.bin"
	.4byte PauseMenu_Variant0
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
	.4byte PauseMenu_Variant0
	.incbin "data_08127280/gUnk_08128A38_13.bin"
	.4byte PauseMenu_Variant0
	.incbin "data_08127280/gUnk_08128A38_14.bin"
	.4byte PauseMenu_Variant0
	.incbin "data_08127280/gUnk_08128A38_15.bin"
	.4byte PauseMenu_Variant0
	.incbin "data_08127280/gUnk_08128A38_16.bin"
	.4byte PauseMenu_Variant0
	.incbin "data_08127280/gUnk_08128A38_17.bin"
	.4byte PauseMenu_Variant0
	.incbin "data_08127280/gUnk_08128A38_18.bin"
	.4byte PauseMenu_Variant0
	.incbin "data_08127280/gUnk_08128A38_19.bin"
	.4byte PauseMenu_Variant0

gUnk_08128AD8:: @ 08128AD8
.ifdef EU
    @ TODO only small differences
	.incbin "data_08127280/gUnk_08128AD8_EU.bin"
.else
	.incbin "data_08127280/gUnk_08128AD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
