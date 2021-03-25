	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081225A0:: @ 081225A0
	.incbin "baserom.gba", 0x1225A0, 0x000001C

gUnk_081225BC:: @ 081225BC
	.incbin "baserom.gba", 0x1225BC, 0x000001C

gUnk_081225D8:: @ 081225D8
	.incbin "baserom.gba", 0x1225D8, 0x000001C

gUnk_081225F4:: @ 081225F4
	.4byte gUnk_081225A0
	.4byte gUnk_081225BC
	.4byte gUnk_081225D8
	.4byte 00000000
