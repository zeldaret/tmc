	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C360:: @ 0810C360
	.incbin "assets/marcy/gUnk_0810C360.bin"

gUnk_0810C365:: @ 0810C365
	.incbin "assets/marcy/gUnk_0810C365.bin"

gUnk_0810C382:: @ 0810C382
	.incbin "assets/marcy/gUnk_0810C382.bin"

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
