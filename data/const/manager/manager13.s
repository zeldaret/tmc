	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081084C8:: @ 081084C8
	.incbin "baserom.gba", 0x1084C8, 0x000004A
	.incbin "baserom.gba", 0x108512, 0x000001E

gUnk_08108530:: @ 08108530
	.incbin "baserom.gba", 0x108530, 0x0000058
