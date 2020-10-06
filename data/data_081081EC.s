	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_081081EC:: @ 081081EC
	.incbin "baserom.gba", 0x1081EC, 0x0000008

gUnk_081081F4:: @ 081081F4
	.incbin "baserom.gba", 0x1081F4, 0x0000014
