	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123D7C:: @ 08123D7C
	.4byte sub_0809B3C4
	.4byte sub_0809B4A8
	.4byte sub_0809B524
	.4byte sub_0809B56C
	.4byte sub_0809B5B4
	.4byte sub_0809B5EC

gUnk_08123D94:: @ 08123D94
	.incbin "baserom.gba", 0x123D94, 0x0000004
