	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081142FC:: @ 081142FC
	.incbin "baserom.gba", 0x1142FC, 0x0000008

gUnk_08114304:: @ 08114304
	.incbin "baserom.gba", 0x114304, 0x0000004

gUnk_08114308:: @ 08114308
	.incbin "baserom.gba", 0x114308, 0x00001C0
