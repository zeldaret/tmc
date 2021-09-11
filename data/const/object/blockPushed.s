	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F624:: @ 0811F624
	.4byte sub_08082EB4
	.4byte sub_08083094

gUnk_0811F62C:: @ 0811F62C
	.incbin "assets/blockPushed/gUnk_0811F62C.bin"

gUnk_0811F634:: @ 0811F634
	.incbin "assets/blockPushed/gUnk_0811F634.bin"

gUnk_0811F63C:: @ 0811F63C
	.incbin "assets/blockPushed/gUnk_0811F63C.bin"

gUnk_0811F644:: @ 0811F644
	.incbin "assets/blockPushed/gUnk_0811F644.bin"

gUnk_0811F64C:: @ 0811F64C
	.4byte gUnk_0811F62C
	.4byte gUnk_0811F634
	.4byte gUnk_0811F63C
	.4byte gUnk_0811F644
