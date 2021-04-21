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
	.incbin "baserom.gba", 0x0B3E40, 0x0000008
	.4byte gUnk_080B3E78
	.incbin "baserom.gba", 0x0B3E4C, 0x0000008
	.4byte gUnk_080B3E70
	.incbin "baserom.gba", 0x0B3E58, 0x0000008
	.4byte gUnk_080B3E78
	.incbin "baserom.gba", 0x0B3E64, 0x0000008
	.4byte gUnk_080B3E70
