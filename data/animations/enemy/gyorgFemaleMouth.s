	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D291C:: @ 080D291C
	.incbin "assets/gyorgFemaleMouth/gUnk_080D291C.bin"

gUnk_080D292D:: @ 080D292D
	.incbin "assets/gyorgFemaleMouth/gUnk_080D292D.bin"

gUnk_080D293E:: @ 080D293E
	.incbin "assets/gyorgFemaleMouth/gUnk_080D293E.bin"

gUnk_080D294F:: @ 080D294F
	.incbin "assets/gyorgFemaleMouth/gUnk_080D294F.bin"

gUnk_080D2960:: @ 080D2960
	.4byte gUnk_080D291C
	.4byte gUnk_080D292D
	.4byte gUnk_080D293E
	.4byte gUnk_080D294F
	.4byte 00000000
