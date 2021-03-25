	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A014:: @ 0812A014
	.4byte sub_080AA6A8
	.4byte sub_080AA6C0
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte sub_080AA78C

gUnk_0812A02C:: @ 0812A02C
	.4byte sub_080AA834
	.4byte sub_080AA878
	.4byte sub_080AA898
	.4byte sub_080AA9C4

gUnk_0812A03C:: @ 0812A03C
	.incbin "baserom.gba", 0x12A03C, 0x0000010

gUnk_0812A04C:: @ 0812A04C
	.4byte gUnk_080FD41C
	.4byte gUnk_080FD424
	.4byte gUnk_080FD42C
	.4byte gUnk_080FD434

gUnk_0812A05C:: @ 0812A05C
	.4byte sub_080AA8B8
	.4byte sub_080AA9AC

gUnk_0812A064:: @ 0812A064
	.incbin "baserom.gba", 0x12A064, 0x0000008

gUnk_0812A06C:: @ 0812A06C
	.incbin "baserom.gba", 0x12A06C, 0x0000008

gUnk_0812A074:: @ 0812A074
	.incbin "baserom.gba", 0x12A074, 0x0000010

gUnk_0812A084:: @ 0812A084
	.incbin "baserom.gba", 0x12A084, 0x0000008

