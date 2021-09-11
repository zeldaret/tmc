	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081208A0:: @ 081208A0
	.4byte sub_080874F8
	.4byte nullsub_117

gUnk_081208A8:: @ 081208A8
	.incbin "object1D/gUnk_081208A8.bin"
	.4byte gUnk_081208A8
	.incbin "object1D/gUnk_081208A8_1.bin"
