	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120A68:: @ 08120A68
	.4byte sub_08087A10
	.4byte sub_08087AFC
	.4byte 00000000
	.4byte sub_08087B58

gUnk_08120A78:: @ 08120A78
	.incbin "baserom.gba", 0x120A78, 0x0000002

gUnk_08120A7A:: @ 08120A7A
	.incbin "baserom.gba", 0x120A7A, 0x0000006

gUnk_08120A80:: @ 08120A80
	.4byte sub_08087B88
	.4byte sub_08087B9C
	.4byte sub_08087B9C

gUnk_08120A8C:: @ 08120A8C
	.incbin "baserom.gba", 0x120A8C, 0x0000008
