	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08112D48:: @ 08112D48
	.incbin "baserom.gba", 0x112D48, 0x0000008

gUnk_08112D50:: @ 08112D50
	.incbin "baserom.gba", 0x112D50, 0x000000A
