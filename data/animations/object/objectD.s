	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F918:: @ 0811F918
	.incbin "baserom.gba", 0x11F918, 0x000002D

gUnk_0811F945:: @ 0811F945
	.incbin "baserom.gba", 0x11F945, 0x000000F

gUnk_0811F954:: @ 0811F954
	.4byte gUnk_0811F918
	.4byte gUnk_0811F945
	.4byte 00000000
