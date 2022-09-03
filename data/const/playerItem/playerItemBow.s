	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

@ Probably belongs to collision.c, but needs to be placed at the end of playerItemBow.c or start of playerItemSwordBeam.c
gUnk_080B3E80:: @ 080B3E80
	.incbin "data_080B3E70/gUnk_080B3E80.bin"
