	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte HBlankIntr
	.4byte sub_08016B6C
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30

unusedLabel_0B21D0::
@ TODO contains some pointers to iwram
.ifdef EU
	.incbin "assets/data_080B2A70/unusedLabel_0B21D0_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "assets/data_080B2A70/unusedLabel_0B21D0_1_DEMO_JP.bin"
.else
	.incbin "assets/data_080B2A70/unusedLabel_0B21D0_2_USA-JP-DEMO_USA.bin"
.endif
.endif



gUnk_080B2CD8:: @ 080B2CD8
gUnk_080B2CD8_2:: @ 080B2CD8
gUnk_080B2CD8_3:: @ 080B2CD8
	.incbin "assets/data_080B2A70/gUnk_080B2CD8_3.bin"
