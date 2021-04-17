	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108C94:: @ 08108C94
	.4byte sub_0805B70C
	.4byte sub_0805B744

gUnk_08108C9C:: @ 08108C9C
	.incbin "baserom.gba", 0x108C9C, 0x000000C
