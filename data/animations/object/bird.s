	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123F28:: @ 08123F28
	.incbin "bird/gUnk_08123F28.bin"

gUnk_08123F49:: @ 08123F49
	.incbin "bird/gUnk_08123F49.bin"

gUnk_08123F62:: @ 08123F62
	.incbin "bird/gUnk_08123F62.bin"

gUnk_08123F7B:: @ 08123F7B
	.incbin "bird/gUnk_08123F7B.bin"

gUnk_08123F9C:: @ 08123F9C
	.4byte gUnk_08123F28
	.4byte gUnk_08123F49
	.4byte gUnk_08123F62
	.4byte gUnk_08123F7B
	.4byte 00000000
