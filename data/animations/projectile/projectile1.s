	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081295F4:: @ 081295F4
	.incbin "baserom.gba", 0x1295F4, 0x0000010

gUnk_08129604:: @ 08129604
	.4byte gUnk_081295F4
	.4byte 00000000
