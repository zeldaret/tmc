	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A3E0:: @ 0812A3E0
	.incbin "baserom.gba", 0x12A3E0, 0x0000014

gUnk_0812A3F4:: @ 0812A3F4
	.4byte gUnk_0812A3E0
	.4byte 00000000

gUnk_0812A3FC:: @ 0812A3FC
	.incbin "baserom.gba", 0x12A3FC, 0x0000014

gUnk_0812A410:: @ 0812A410
	.4byte gUnk_0812A3FC
	.4byte 00000000
