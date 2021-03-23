	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081208A0:: @ 081208A0
	.incbin "baserom.gba", 0x1208A0, 0x0000008

gUnk_081208A8:: @ 081208A8
	.incbin "baserom.gba", 0x1208A8, 0x0000010
