	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D17E8:: @ 080D17E8 
	.4byte sub_080453A4
	.4byte sub_080453BC
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_08001242
	.4byte nullsub_172

gUnk_080D1800:: @ 080D1800
	.4byte sub_080453E8
	.4byte sub_08045430
	.4byte sub_08045454

gUnk_080D180C:: @ 080D180C
	.incbin "baserom.gba", 0x0D180C, 0x0000004

gUnk_080D1810:: @ 080D1810
	.incbin "baserom.gba", 0x0D1810, 0x0000008
