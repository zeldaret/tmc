	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

@ intr.s
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

unusedLabel_080B2AA8::
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

RAMFUNCS_END:: @ 080B2CD8

gCopyToEndOfEwram_Start:: @ 080B2CD8
gCopyToEndOfEwram_End:: @ 080B2CD8

@ interrupts.c
gUnk_080B2CD8:: @ 080B2CD8
	.incbin "data_080B2A70/gUnk_080B2CD8_3.bin"
