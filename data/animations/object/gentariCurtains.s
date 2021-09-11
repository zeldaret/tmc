	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812261C:: @ 0812261C
	.incbin "gentariCurtains/gUnk_0812261C.bin"

gUnk_08122631:: @ 08122631
	.incbin "gentariCurtains/gUnk_08122631.bin"

gUnk_08122638:: @ 08122638
	.4byte gUnk_0812261C
	.4byte gUnk_08122631
	.4byte 00000000
