	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081233B8:: @ 081233B8
	.4byte sub_08097DEC
	.4byte sub_08097EA4

gUnk_081233C0:: @ 081233C0
	.incbin "baserom.gba", 0x1233C0, 0x0000050
