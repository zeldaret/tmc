	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1D48:: @ 080D1D48
	.4byte sub_080482EC
	.4byte sub_08048330
	.4byte sub_0804835C
	.4byte sub_08048388
	.4byte sub_080483F8
	.4byte sub_08048438
	.4byte sub_08048478
	.4byte sub_080484E8
	.4byte sub_08048550
	.4byte sub_080485A0

gUnk_080D1D70:: @ 080D1D70
	.incbin "baserom.gba", 0x0D1D70, 0x0000008

gUnk_080D1D78:: @ 080D1D78
	.incbin "baserom.gba", 0x0D1D78, 0x0000020

gUnk_080D1D98:: @ 080D1D98
	.incbin "baserom.gba", 0x0D1D98, 0x0000008
