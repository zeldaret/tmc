	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124994:: @ 08124994
	.incbin "assets/jailBars/gUnk_08124994.bin"

gUnk_081249A0:: @ 081249A0
	.incbin "assets/jailBars/gUnk_081249A0.bin"

gUnk_081249AC:: @ 081249AC
	.4byte gUnk_08124994
	.4byte gUnk_081249A0
	.4byte 00000000
