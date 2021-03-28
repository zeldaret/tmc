	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108D3C:: @ 08108D3C
	.incbin "baserom.gba", 0x108D3C, 0x0000008

gUnk_08108D44:: @ 08108D44
	.incbin "baserom.gba", 0x108D44, 0x000000C

gUnk_08108D50:: @ 08108D50
	.incbin "baserom.gba", 0x108D50, 0x000000C
