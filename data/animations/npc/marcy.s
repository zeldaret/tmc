	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C360:: @ 0810C360
	.incbin "baserom.gba", 0x10C360, 0x0000005

gUnk_0810C365:: @ 0810C365
	.incbin "baserom.gba", 0x10C365, 0x000001D

gUnk_0810C382:: @ 0810C382
	.incbin "baserom.gba", 0x10C382, 0x000000E

gUnk_0810C390:: @ 0810C390
	.4byte gUnk_0810C360
	.4byte gUnk_0810C360
	.4byte gUnk_0810C360
	.4byte gUnk_0810C360
	.4byte gUnk_0810C365
	.4byte gUnk_0810C365
	.4byte gUnk_0810C365
	.4byte gUnk_0810C365
	.4byte gUnk_0810C382
	.4byte gUnk_0810C382
	.4byte gUnk_0810C382
	.4byte gUnk_0810C382
