	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2



gUnk_080FC3C4:: @ 080FC3C4
	.incbin "data_080D5360/gUnk_080FC3C4.bin"

gUnk_080FC3E4:: @ 080FC3E4
.ifdef JP
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FC3E4_JP.bin"
.else
.ifdef EU
    @ TODO only small differences
	.incbin "data_080D5360/gUnk_080FC3E4_1_EU.bin"
.else
	.incbin "data_080D5360/gUnk_080FC3E4_2_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif

gUnk_080FC844:: @ 080FC844
	.incbin "data_080D5360/gUnk_080FC844.bin"

gUnk_080FC85C:: @ 080FC85C
	.incbin "data_080D5360/gUnk_080FC85C.bin"
