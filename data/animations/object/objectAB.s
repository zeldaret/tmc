	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124878:: @ 08124878
	.incbin "baserom.gba", 0x124878, 0x0000018

gUnk_08124890:: @ 08124890
	.4byte gUnk_08124878
	.4byte 00000000
