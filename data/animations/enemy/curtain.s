	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_080D1CF0:: @ 080D1CF0
	.incbin "assets/curtain/gUnk_080D1CF0.bin"

gUnk_080D1CF9:: @ 080D1CF9
	.incbin "assets/curtain/gUnk_080D1CF9.bin"

gUnk_080D1D02:: @ 080D1D02
	.incbin "assets/curtain/gUnk_080D1D02.bin"

gUnk_080D1D26:: @ 080D1D26
	.incbin "assets/curtain/gUnk_080D1D26.bin"

gUnk_080D1D34:: @ 080D1D34
	.4byte gUnk_080D1CF0
	.4byte gUnk_080D1CF9
	.4byte gUnk_080D1D02
	.4byte gUnk_080D1D26
	.4byte 00000000
