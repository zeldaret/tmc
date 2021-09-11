	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_08000360:: @ 08000360
	.incbin "baserom.gba", 0x000360, 0x0000AE4
