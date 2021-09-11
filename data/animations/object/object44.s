	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121B94:: @ 08121B94
	.incbin "object44/gUnk_08121B94.bin"

gUnk_08121BD0:: @ 08121BD0
	.4byte gUnk_08121B94
	.4byte 00000000
