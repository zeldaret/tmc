	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120C80:: @ 08120C80
	.incbin "baserom.gba", 0x120C80, 0x0000012

gUnk_08120C92:: @ 08120C92
	.incbin "baserom.gba", 0x120C92, 0x0000006
