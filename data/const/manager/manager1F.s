	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108C94:: @ 08108C94
	.incbin "baserom.gba", 0x108C94, 0x0000008

gUnk_08108C9C:: @ 08108C9C
	.incbin "baserom.gba", 0x108C9C, 0x000000C
