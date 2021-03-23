	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081248D0:: @ 081248D0
	.incbin "baserom.gba", 0x1248D0, 0x0000011

gUnk_081248E1:: @ 081248E1
	.incbin "baserom.gba", 0x1248E1, 0x0000011

gUnk_081248F2:: @ 081248F2
	.incbin "baserom.gba", 0x1248F2, 0x000001C

gUnk_0812490E:: @ 0812490E
	.incbin "baserom.gba", 0x12490E, 0x000001A

gUnk_08124928:: @ 08124928
	.4byte gUnk_081248D0
	.4byte gUnk_081248E1
	.4byte gUnk_081248F2
	.4byte gUnk_0812490E
	.4byte 00000000
