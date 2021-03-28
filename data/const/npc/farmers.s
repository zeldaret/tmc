	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08113140:: @ 08113140
	.incbin "baserom.gba", 0x113140, 0x0000018

gUnk_08113158:: @ 08113158
	.incbin "baserom.gba", 0x113158, 0x0000010
