	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08125068:: @ 08125068
	.incbin "baserom.gba", 0x125068, 0x0000014

gUnk_0812507C:: @ 0812507C
	.4byte gUnk_08125068
	.4byte 00000000
