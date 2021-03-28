	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812380C:: @ 0812380C
	.incbin "baserom.gba", 0x12380C, 0x0000014

gUnk_08123820:: @ 08123820
	.incbin "baserom.gba", 0x123820, 0x0000014

gUnk_08123834:: @ 08123834
	.4byte gUnk_0812380C
	.4byte gUnk_08123820
	.4byte 00000000
