	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08112E1C:: @ 08112E1C
	.incbin "baserom.gba", 0x112E1C, 0x0000010

gUnk_08112E2C:: @ 08112E2C
	.incbin "baserom.gba", 0x112E2C, 0x0000028

gUnk_08112E54:: @ 08112E54
	.incbin "baserom.gba", 0x112E54, 0x0000008
