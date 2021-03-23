	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812149C:: @ 0812149C
	.incbin "baserom.gba", 0x12149C, 0x0000004

gUnk_081214A0:: @ 081214A0
	.incbin "baserom.gba", 0x1214A0, 0x0000004

gUnk_081214A4:: @ 081214A4
	.incbin "baserom.gba", 0x1214A4, 0x0000011

gUnk_081214B5:: @ 081214B5
	.incbin "baserom.gba", 0x1214B5, 0x0000013

gUnk_081214C8:: @ 081214C8
	.4byte gUnk_0812149C
	.4byte gUnk_081214A0
	.4byte gUnk_081214A4
	.4byte gUnk_081214B5
