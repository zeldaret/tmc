	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CB96C:: @ 080CB96C
	.incbin "baserom.gba", 0x0CB96C, 0x0000029

gUnk_080CB995:: @ 080CB995
	.incbin "baserom.gba", 0x0CB995, 0x0000041

gUnk_080CB9D6:: @ 080CB9D6
	.incbin "baserom.gba", 0x0CB9D6, 0x0000042

gUnk_080CBA18:: @ 080CBA18
	.4byte gUnk_080CB96C
	.4byte gUnk_080CB995
	.4byte gUnk_080CB9D6
	.4byte 00000000
