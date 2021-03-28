	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A6B4:: @ 0812A6B4
	.4byte sub_080AB8E8
	.4byte sub_080AB950

gUnk_0812A6BC:: @ 0812A6BC
	.incbin "baserom.gba", 0x12A6BC, 0x0000008

gUnk_0812A6C4:: @ 0812A6C4
	.incbin "baserom.gba", 0x12A6C4, 0x0000008
