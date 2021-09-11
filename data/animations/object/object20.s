	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120A30:: @ 08120A30
	.incbin "assets/object20/gUnk_08120A30.bin"

gUnk_08120A3C:: @ 08120A3C
	.incbin "assets/object20/gUnk_08120A3C.bin"

gUnk_08120A48:: @ 08120A48
	.incbin "assets/object20/gUnk_08120A48.bin"

gUnk_08120A54:: @ 08120A54
	.4byte gUnk_08120A30
	.4byte gUnk_08120A30
	.4byte gUnk_08120A48
	.4byte gUnk_08120A3C
	.4byte gUnk_08120A3C
