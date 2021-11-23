	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B3E30:: @ 080B3E30
	.4byte sub_08018FE4
	.4byte sub_0801917C
	.4byte sub_08019410
	.4byte sub_08019444

gUnk_080B3E40:: @ 080B3E40
	.incbin "playerItemBow/gUnk_080B3E40.bin"
	.4byte gUnk_080B3E78
	.incbin "playerItemBow/gUnk_080B3E40_1.bin"
	.4byte gUnk_080B3E70
	.incbin "playerItemBow/gUnk_080B3E40_2.bin"
	.4byte gUnk_080B3E78
	.incbin "playerItemBow/gUnk_080B3E40_3.bin"
	.4byte gUnk_080B3E70
