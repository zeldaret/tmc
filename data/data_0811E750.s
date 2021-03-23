	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_0811E750:: @ 0811E750
	.incbin "baserom.gba", 0x11E750, 0x0000008

gUnk_0811E758:: @ 0811E758
	.incbin "baserom.gba", 0x11E758, 0x0000008

gUnk_0811E760:: @ 0811E760
	.incbin "baserom.gba", 0x11E760, 0x0000008

gUnk_0811E768:: @ 0811E768
	.4byte sub_0807FC64
	.4byte sub_0807FC7C
	.4byte sub_0807FDB0
	.4byte 00000000
	.4byte sub_0807FEF0
	.4byte sub_0807FF54

gUnk_0811E780:: @ 0811E780
	.4byte sub_0807FDC8
	.4byte sub_0807FDE4
	.4byte sub_0807FDF8

gUnk_0811E78C:: @ 0811E78C
	.4byte sub_0807FF08
	.4byte sub_0807FF1C

gUnk_0811E794:: @ 0811E794
	.4byte sub_0807FF6C
	.4byte sub_0807FFE4
	.4byte sub_08080040
	.4byte sub_08080108
	.4byte sub_08080198
	.4byte sub_080801BC

gUnk_0811E7AC:: @ 0811E7AC
	.4byte sub_08080794
	.4byte sub_08080808
	.4byte sub_08080794
	.4byte sub_08080808

gUnk_0811E7BC:: @ 0811E7BC
	.incbin "baserom.gba", 0x11E7BC, 0x0000008
