	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812296C:: @ 0812296C
	.incbin "assets/object64/gUnk_0812296C.bin"

gUnk_0812297C:: @ 0812297C
	.incbin "assets/object64/gUnk_0812297C.bin"

gUnk_08122988:: @ 08122988
	.incbin "assets/object64/gUnk_08122988.bin"

gUnk_081229A4:: @ 081229A4
	.4byte gUnk_0812296C
	.4byte gUnk_0812297C
	.4byte gUnk_08122988
	.4byte 00000000
