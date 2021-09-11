	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08111BBE:: @ 08111BBE
	.incbin "goronMerchant/gUnk_08111BBE.bin"

gUnk_08111BC3:: @ 08111BC3
	.incbin "goronMerchant/gUnk_08111BC3.bin"

gUnk_08111BC8:: @ 08111BC8
	.incbin "goronMerchant/gUnk_08111BC8.bin"

gUnk_08111BCD:: @ 08111BCD
	.incbin "goronMerchant/gUnk_08111BCD.bin"

gUnk_08111BF2:: @ 08111BF2
	.incbin "goronMerchant/gUnk_08111BF2.bin"

gUnk_08111C18:: @ 08111C18
	.4byte gUnk_08111BC3
	.4byte gUnk_08111BBE
	.4byte gUnk_08111BC3
	.4byte gUnk_08111BC8
	.4byte gUnk_08111BC3
	.4byte gUnk_08111BCD
	.4byte gUnk_08111BC3
	.4byte gUnk_08111BF2
	.4byte 00000000
