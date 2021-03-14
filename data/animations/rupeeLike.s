	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CCC4A:: @ 080CCC4A
	.incbin "baserom.gba", 0x0CCC4A, 0x0000015

gUnk_080CCC5F:: @ 080CCC5F
	.incbin "baserom.gba", 0x0CCC5F, 0x0000015

gUnk_080CCC74:: @ 080CCC74
	.incbin "baserom.gba", 0x0CCC74, 0x0000028

gUnk_080CCC9C:: @ 080CCC9C
	.incbin "baserom.gba", 0x0CCC9C, 0x0000018

gUnk_080CCCB4:: @ 080CCCB4
	.incbin "baserom.gba", 0x0CCCB4, 0x0000015

gUnk_080CCCC9:: @ 080CCCC9
	.incbin "baserom.gba", 0x0CCCC9, 0x0000015

gUnk_080CCCDE:: @ 080CCCDE
	.incbin "baserom.gba", 0x0CCCDE, 0x0000028

gUnk_080CCD06:: @ 080CCD06
	.incbin "baserom.gba", 0x0CCD06, 0x000001A

gUnk_080CCD20:: @ 080CCD20
	.4byte gUnk_080CCC4A
	.4byte gUnk_080CCC5F
	.4byte gUnk_080CCC74
	.4byte gUnk_080CCC9C
	.4byte gUnk_080CCCB4
	.4byte gUnk_080CCCC9
	.4byte gUnk_080CCCDE
	.4byte gUnk_080CCD06
	.4byte 00000000
