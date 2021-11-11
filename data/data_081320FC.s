	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

.ifdef DEMO_JP
	@ TODO check whether this is the same save as one of the DEMO_USA ones
	.incbin "data_081320FC/_DEMO_JP.bin"
.endif
