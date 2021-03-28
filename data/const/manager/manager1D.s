	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108C80:: @ 08108C80
	.4byte sub_0805B5E0
	.4byte sub_0805B638

gUnk_08108C88:: @ 08108C88
	.incbin "baserom.gba", 0x108C88, 0x0000004
