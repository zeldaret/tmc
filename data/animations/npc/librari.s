	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08112D5A:: @ 08112D5A
	.incbin "assets/librari/gUnk_08112D5A.bin"

gUnk_08112D6F:: @ 08112D6F
	.incbin "assets/librari/gUnk_08112D6F.bin"

gUnk_08112D78:: @ 08112D78
	.incbin "assets/librari/gUnk_08112D78.bin"

gUnk_08112D89:: @ 08112D89
	.incbin "assets/librari/gUnk_08112D89.bin"

gUnk_08112D9A:: @ 08112D9A
	.incbin "assets/librari/gUnk_08112D9A.bin"

gUnk_08112DE7:: @ 08112DE7
	.incbin "assets/librari/gUnk_08112DE7.bin"

gUnk_08112DEC:: @ 08112DEC
	.4byte gUnk_08112D5A
	.4byte gUnk_08112D5A
	.4byte gUnk_08112D5A
	.4byte gUnk_08112D5A
	.4byte gUnk_08112D78
	.4byte gUnk_08112D78
	.4byte gUnk_08112D89
	.4byte gUnk_08112D89
	.4byte gUnk_08112D6F
	.4byte gUnk_08112D9A
	.4byte gUnk_08112DE7
	.4byte 00000000
