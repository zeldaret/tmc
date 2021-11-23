	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080B2A70:: @ 080B2A70
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte HBlankIntr
	.4byte VBlankIntr
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte DummyIntr
	.4byte DummyIntr

unusedLabel_0B21D0::
@ TODO contains some pointers to iwram
.ifdef EU
	.incbin "data_080B2A70/unusedLabel_0B21D0_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080B2A70/unusedLabel_0B21D0_1_DEMO_JP.bin"
.else
	.incbin "data_080B2A70/unusedLabel_0B21D0_2_USA-JP-DEMO_USA.bin"
.endif
.endif



gUnk_080B2CD8:: @ 080B2CD8
gUnk_080B2CD8_2:: @ 080B2CD8
gUnk_080B2CD8_3:: @ 080B2CD8
	.incbin "data_080B2A70/gUnk_080B2CD8_3.bin"
