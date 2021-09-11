	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CB96C:: @ 080CB96C
	.incbin "rockChuchu/gUnk_080CB96C.bin"

gUnk_080CB995:: @ 080CB995
	.incbin "rockChuchu/gUnk_080CB995.bin"

gUnk_080CB9D6:: @ 080CB9D6
	.incbin "rockChuchu/gUnk_080CB9D6.bin"

gUnk_080CBA18:: @ 080CBA18
	.4byte gUnk_080CB96C
	.4byte gUnk_080CB995
	.4byte gUnk_080CB9D6
	.4byte 00000000
