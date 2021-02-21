	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080B2A70:: @ 080B2A70
	.incbin "baserom.gba", 0x0B2A70, 0x0000268

gUnk_080B2CD8:: @ 080B2CD8
gUnk_080B2CD8_2:: @ 080B2CD8
gUnk_080B2CD8_3:: @ 080B2CD8
	.incbin "baserom.gba", 0x0B2CD8, 0x0000010
