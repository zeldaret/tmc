	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D2ABC:: @ 080D2ABC
	.incbin "baserom.gba", 0x0D2ABC, 0x0000058
	.4byte sub_08029270
	.incbin "baserom.gba", 0x0D2B18, 0x0000140
