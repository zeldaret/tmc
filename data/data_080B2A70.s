	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080B2A70:: @ 080B2A70
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte HBlankIntr
	.4byte sub_08016B6C
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.4byte sub_08016B30
	.incbin "baserom.gba", 0x0B2AA8, 0x0000230

gUnk_080B2CD8:: @ 080B2CD8
gUnk_080B2CD8_2:: @ 080B2CD8
gUnk_080B2CD8_3:: @ 080B2CD8
	.incbin "baserom.gba", 0x0B2CD8, 0x0000010
