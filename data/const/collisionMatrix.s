	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2
@ before: playerItemCellOverwriteSet

@ collision.c
gCollisionMtx:: @ 080B7B74
	.incbin "data_080B7B74/gCollisionMtx.bin"
	.incbin "data_080B7B74/gUnk_080B802E.bin"
	.incbin "data_080B7B74/gUnk_080BA2C0.bin"
.ifdef EU
	.incbin "data_080B7B74/gUnk_080B7B74_1_EU.bin"
.else
	.incbin "data_080B7B74/gUnk_080B7B74_2_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "data_080B7B74/gUnk_080B7B74_3.bin"
.ifdef JP
	@ TODO only small differences
	.incbin "data_080B7B74/gUnk_080B7B74_4_JP.bin"
.else
.ifdef EU
	@ TODO only small differences
	.incbin "data_080B7B74/gUnk_080B7B74_5_EU.bin"
.else
	.incbin "data_080B7B74/gUnk_080B7B74_6_USA-DEMO_USA-DEMO_JP.bin"
.endif
.endif
.ifdef EU
    @ TODO only small differences
	.incbin "data_080B7B74/gUnk_080B7B74_7_EU.bin"
.else
	.incbin "data_080B7B74/gUnk_080B7B74_8_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	.incbin "data_080B7B74/gUnk_080B7B74_9.bin"
