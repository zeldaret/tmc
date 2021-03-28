	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081139B0:: @ 081139B0
	.incbin "baserom.gba", 0x1139B0, 0x000001D

gUnk_081139CD:: @ 081139CD
	.incbin "baserom.gba", 0x1139CD, 0x000001D

gUnk_081139EA:: @ 081139EA
	.incbin "baserom.gba", 0x1139EA, 0x000001E

gUnk_08113A08:: @ 08113A08
	.4byte gUnk_081139B0
	.4byte gUnk_081139EA
	.4byte gUnk_081139B0
	.4byte gUnk_081139CD
	.4byte 00000000
