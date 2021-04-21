	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123384:: @ 08123384
	.4byte sub_08097D90
	.4byte sub_08097DCC

gUnk_0812338C:: @ 0812338C
	.incbin "baserom.gba", 0x12338C, 0x0000024

gUnk_081233B0:: @ 081233B0
	.4byte gUnk_0812338C
	.incbin "baserom.gba", 0x1233B4, 0x0000004
