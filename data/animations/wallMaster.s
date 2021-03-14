	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD0B8:: @ 080CD0B8
	.incbin "baserom.gba", 0x0CD0B8, 0x000000D

gUnk_080CD0C5:: @ 080CD0C5
	.incbin "baserom.gba", 0x0CD0C5, 0x0000015

gUnk_080CD0DA:: @ 080CD0DA
	.incbin "baserom.gba", 0x0CD0DA, 0x0000006

gUnk_080CD0E0:: @ 080CD0E0
	.4byte gUnk_080CD0B8
	.4byte gUnk_080CD0C5
	.4byte gUnk_080CD0DA
	.4byte 00000000
