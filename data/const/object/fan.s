	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081243D4:: @ 081243D4
	.4byte sub_0809ED30
	.4byte sub_0809ED54
	.4byte sub_0809ED88
	.4byte sub_0809EDE4

gUnk_081243E4:: @ 081243E4
	.incbin "baserom.gba", 0x1243E4, 0x0000008

gUnk_081243EC:: @ 081243EC
	.incbin "baserom.gba", 0x1243EC, 0x0000008
