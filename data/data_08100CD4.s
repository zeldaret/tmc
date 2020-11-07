	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_08100CD4:: @ 08100CD4
	.incbin "baserom.gba", 0x100CD4, 0x0000010
