	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CCC4A:: @ 080CCC4A
	.incbin "rupeeLike/gUnk_080CCC4A.bin"

gUnk_080CCC5F:: @ 080CCC5F
	.incbin "rupeeLike/gUnk_080CCC5F.bin"

gUnk_080CCC74:: @ 080CCC74
	.incbin "rupeeLike/gUnk_080CCC74.bin"

gUnk_080CCC9C:: @ 080CCC9C
	.incbin "rupeeLike/gUnk_080CCC9C.bin"

gUnk_080CCCB4:: @ 080CCCB4
	.incbin "rupeeLike/gUnk_080CCCB4.bin"

gUnk_080CCCC9:: @ 080CCCC9
	.incbin "rupeeLike/gUnk_080CCCC9.bin"

gUnk_080CCCDE:: @ 080CCCDE
	.incbin "rupeeLike/gUnk_080CCCDE.bin"

gUnk_080CCD06:: @ 080CCD06
	.incbin "rupeeLike/gUnk_080CCD06.bin"

gSpriteAnimations_RupeeLike:: @ 080CCD20
	.4byte gUnk_080CCC4A
	.4byte gUnk_080CCC5F
	.4byte gUnk_080CCC74
	.4byte gUnk_080CCC9C
	.4byte gUnk_080CCCB4
	.4byte gUnk_080CCCC9
	.4byte gUnk_080CCCDE
	.4byte gUnk_080CCD06
	.4byte 00000000
