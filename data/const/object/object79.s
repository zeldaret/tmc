	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123410:: @ 08123410
	.4byte sub_08097FB4
	.4byte sub_0809803C
	.4byte sub_08098084

gUnk_0812341C:: @ 0812341C
	.incbin "baserom.gba", 0x12341C, 0x0000006
