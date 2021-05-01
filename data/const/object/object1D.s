	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081208A0:: @ 081208A0
	.4byte sub_080874F8
	.4byte nullsub_117

gUnk_081208A8:: @ 081208A8
	.incbin "baserom.gba", 0x1208A8, 0x0000008
	.4byte gUnk_081208A8
	.incbin "baserom.gba", 0x1208B4, 0x0000004
