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


@ TODO contains some pointers to iwram
.ifdef EU
	.incbin "baserom_eu.gba", 0x0B21D0, 0x0000230
.else
.ifdef DEMO_JP
	.incbin "baserom_eu.gba", 0x0B21D0, 0x0000230
.else
	.incbin "baserom.gba", 0x0B2AA8, 0x0000230
.endif
.endif



gUnk_080B2CD8:: @ 080B2CD8
gUnk_080B2CD8_2:: @ 080B2CD8
gUnk_080B2CD8_3:: @ 080B2CD8
	.incbin "baserom.gba", 0x0B2CD8, 0x0000010
