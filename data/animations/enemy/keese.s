	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CB706:: @ 080CB706
	.incbin "keese/gUnk_080CB706.bin"

gUnk_080CB71E:: @ 080CB71E
	.incbin "keese/gUnk_080CB71E.bin"

gUnk_080CB728:: @ 080CB728
	.4byte gUnk_080CB706
	.4byte gUnk_080CB71E
	.4byte 00000000
