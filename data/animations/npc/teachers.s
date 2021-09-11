	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081139B0:: @ 081139B0
	.incbin "teachers/gUnk_081139B0.bin"

gUnk_081139CD:: @ 081139CD
	.incbin "teachers/gUnk_081139CD.bin"

gUnk_081139EA:: @ 081139EA
	.incbin "teachers/gUnk_081139EA.bin"

gUnk_08113A08:: @ 08113A08
	.4byte gUnk_081139B0
	.4byte gUnk_081139EA
	.4byte gUnk_081139B0
	.4byte gUnk_081139CD
	.4byte 00000000
