	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_081136D8:: @ 081136D8
	.incbin "anju/gUnk_081136D8.bin"

gUnk_081136E9:: @ 081136E9
	.incbin "anju/gUnk_081136E9.bin"

gUnk_081136FA:: @ 081136FA
	.incbin "anju/gUnk_081136FA.bin"

gUnk_0811370B:: @ 0811370B
	.incbin "anju/gUnk_0811370B.bin"

gUnk_0811371C:: @ 0811371C
	.incbin "anju/gUnk_0811371C.bin"

gUnk_08113721:: @ 08113721
	.incbin "anju/gUnk_08113721.bin"

gUnk_08113726:: @ 08113726
	.incbin "anju/gUnk_08113726.bin"

gUnk_0811372B:: @ 0811372B
	.incbin "anju/gUnk_0811372B.bin"

gSpriteAnimations_Anju:: @ 08113730
	.4byte gUnk_0811371C
	.4byte gUnk_08113721
	.4byte gUnk_08113726
	.4byte gUnk_0811372B
	.4byte gUnk_081136D8
	.4byte gUnk_081136E9
	.4byte gUnk_081136FA
	.4byte gUnk_0811370B
	.4byte 00000000
