	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123E2C:: @ 08123E2C
	.incbin "bakerOven/gUnk_08123E2C.bin"

gUnk_08123E78:: @ 08123E78
	.4byte gUnk_08123E2C
	.4byte 00000000
