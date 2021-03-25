	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113910:: @ 08113910
	.incbin "baserom.gba", 0x113910, 0x0000020

gUnk_08113930:: @ 08113930
	.incbin "baserom.gba", 0x113930, 0x0000080
