	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_08133368:: @ 08133368
.ifdef EU
    @ TODO only small differences
	.incbin "data_08132B30/gUnk_08133368_EU.bin"
.else
	.incbin "data_08132B30/gUnk_08133368_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
