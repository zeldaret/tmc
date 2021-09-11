	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110EF0:: @ 08110EF0 
	.incbin "assets/cat/gUnk_08110EF0.bin"

gUnk_08110EF8:: @ 08110EF8
	.incbin "assets/cat/gUnk_08110EF8.bin"

gCat:: @ 081110D8
	.4byte sub_080677EC
	.4byte sub_080678AC
	.4byte sub_08067904
	.4byte sub_0806797C
	.4byte sub_0806799C
	.4byte sub_080679C4
	.4byte sub_08067A0C
	.4byte sub_08067A78
	.4byte sub_08067A98

gUnk_081110FC:: @ 081110FC
	.incbin "assets/cat/gUnk_081110FC.bin"

gUnk_08111104:: @ 08111104
	.incbin "assets/cat/gUnk_08111104.bin"

gUnk_0811110C:: @ 0811110C
	.incbin "assets/cat/gUnk_0811110C.bin"

gUnk_0811110F:: @ 0811110F
	.incbin "assets/cat/gUnk_0811110F.bin"
