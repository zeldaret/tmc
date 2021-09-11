	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081242E8:: @ 081242E8
	.incbin "object9B/gUnk_081242E8.bin"

gUnk_08124320:: @ 08124320
	.incbin "object9B/gUnk_08124320.bin"

gUnk_08124348:: @ 08124348
	.4byte gUnk_081242E8
	.4byte gUnk_08124320
	.4byte 00000000
