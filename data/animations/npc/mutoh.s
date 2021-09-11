	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110C60:: @ 08110C60
	.incbin "mutoh/gUnk_08110C60.bin"

gUnk_08110C75:: @ 08110C75
	.incbin "mutoh/gUnk_08110C75.bin"

gUnk_08110C7A:: @ 08110C7A
	.incbin "mutoh/gUnk_08110C7A.bin"

gUnk_08110C7F:: @ 08110C7F
	.incbin "mutoh/gUnk_08110C7F.bin"

gUnk_08110C84:: @ 08110C84
	.4byte gUnk_08110C60
	.4byte gUnk_08110C60
	.4byte gUnk_08110C60
	.4byte gUnk_08110C60
	.4byte gUnk_08110C7A
	.4byte gUnk_08110C75
	.4byte gUnk_08110C7A
	.4byte gUnk_08110C7F
	.4byte 00000000
