	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

@ before: playerItemBottle
@ after: playerItemCellOverwriteSet

@ scroll.c, intr.s, veener.s
gUnk_080B7910:: @ 080B7910
	.incbin "data_080B7910/gUnk_080B7910.bin"

@ veener.s, playerUtils.c
gUnk_080B79A7:: @ 080B79A7
	.incbin "data_080B7910/gUnk_080B79A7.bin"

@ intr.s
gUnk_080B7A3E:: @ 080B7A3E
	.incbin "data_080B7910/gUnk_080B7A3E.bin"

