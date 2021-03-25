	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2



gUnk_080CDEA0:: @ 080CDEA0
	.incbin "baserom.gba", 0x0CDEA0, 0x0000011

gUnk_080CDEB1:: @ 080CDEB1
	.incbin "baserom.gba", 0x0CDEB1, 0x0000013

gUnk_080CDEC4:: @ 080CDEC4
	.4byte gUnk_080CDEA0
	.4byte gUnk_080CDEB1
	.4byte 00000000
