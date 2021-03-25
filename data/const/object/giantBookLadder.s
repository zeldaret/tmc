	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121C40:: @ 08121C40
	.incbin "baserom.gba", 0x121C40, 0x0000008
