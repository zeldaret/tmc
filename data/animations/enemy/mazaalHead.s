	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CEDB0:: @ 080CEDB0
	.incbin "mazaalHead/gUnk_080CEDB0.bin"

gUnk_080CEDB5:: @ 080CEDB5
	.incbin "mazaalHead/gUnk_080CEDB5.bin"

gUnk_080CEDBA:: @ 080CEDBA
	.incbin "mazaalHead/gUnk_080CEDBA.bin"

gUnk_080CEDCF:: @ 080CEDCF
	.incbin "mazaalHead/gUnk_080CEDCF.bin"

gUnk_080CEE07:: @ 080CEE07
	.incbin "mazaalHead/gUnk_080CEE07.bin"

gUnk_080CEE3F:: @ 080CEE3F
	.incbin "mazaalHead/gUnk_080CEE3F.bin"

gUnk_080CEE57:: @ 080CEE57
	.incbin "mazaalHead/gUnk_080CEE57.bin"

gUnk_080CEE70:: @ 080CEE70
	.4byte gUnk_080CEDB0
	.4byte gUnk_080CEDB5
	.4byte gUnk_080CEDBA
	.4byte gUnk_080CEDCF
	.4byte gUnk_080CEE07
	.4byte gUnk_080CEE3F
	.4byte gUnk_080CEE57
	.4byte 00000000
