	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110C60:: @ 08110C60
	.incbin "baserom.gba", 0x110C60, 0x0000015

gUnk_08110C75:: @ 08110C75
	.incbin "baserom.gba", 0x110C75, 0x0000005

gUnk_08110C7A:: @ 08110C7A
	.incbin "baserom.gba", 0x110C7A, 0x0000005

gUnk_08110C7F:: @ 08110C7F
	.incbin "baserom.gba", 0x110C7F, 0x0000005

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
