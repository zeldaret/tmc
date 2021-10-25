	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812AA88:: @ 0812AA88
	.incbin "data_0812AA88/gUnk_0812AA88.bin"

gUnk_0812AA91:: @ 0812AA91
	.incbin "data_0812AA88/gUnk_0812AA91.bin"

gUnk_0812AA9A:: @ 0812AA9A
	.incbin "data_0812AA88/gUnk_0812AA9A.bin"

gUnk_0812AAAC:: @ 0812AAAC
	.4byte gUnk_0812AA88
	.4byte gUnk_0812AA91
	.4byte gUnk_0812AA91
	.4byte gUnk_0812AA9A

gUnk_0812AABC:: @ 0812AABC
	.incbin "data_0812AA88/gUnk_0812AABC.bin"

gUnk_0812AAC0:: @ 0812AAC0
	.incbin "data_0812AA88/gUnk_0812AAC0.bin"

gUnk_0812AAC8:: @ 0812AAC8
	.incbin "data_0812AA88/gUnk_0812AAC8.bin"

gUnk_0812AAD0:: @ 0812AAD0
	.incbin "data_0812AA88/gUnk_0812AAD0.bin"

gUnk_0812AAD8:: @ 0812AAD8
	.4byte gUnk_0812AAC0
	.4byte gUnk_0812AAC8
	.4byte gUnk_0812AAC8
	.4byte gUnk_0812AAD0

gUnk_0812AAE8:: @ 0812AAE8
	.4byte 0x10100c00

