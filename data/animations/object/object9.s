	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F760:: @ 0811F760
	.incbin "assets/object9/gUnk_0811F760.bin"

gUnk_0811F795:: @ 0811F795
	.incbin "assets/object9/gUnk_0811F795.bin"

gUnk_0811F7CC:: @ 0811F7CC
	.4byte gUnk_0811F760
	.4byte gUnk_0811F795
	.4byte 00000000
