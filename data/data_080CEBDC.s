	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

	TODO: @ 080CEBDC
	.incbin "baserom.gba", 0x0CEBDC, 0x000010

