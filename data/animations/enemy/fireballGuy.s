	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1818:: @ 080D1818
	.incbin "baserom.gba", 0x0D1818, 0x0000021

gUnk_080D1839:: @ 080D1839
	.incbin "baserom.gba", 0x0D1839, 0x0000023

gUnk_080D185C:: @ 080D185C
	.4byte gUnk_080D1818
	.4byte gUnk_080D1839
	.4byte 00000000
