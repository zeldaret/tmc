	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110CA8:: @ 08110CA8
	.incbin "baserom.gba", 0x110CA8, 0x0000040

gUnk_08110CE8:: @ 08110CE8
	.incbin "baserom.gba", 0x110CE8, 0x0000018

gUnk_08110D00:: @ 08110D00
	.incbin "baserom.gba", 0x110D00, 0x0000008
