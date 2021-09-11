	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121BE0:: @ 08121BE0
	.incbin "baserom.gba", 0x121BE0, 0x0000018

gUnk_08121BF8:: @ 08121BF8
	.incbin "baserom.gba", 0x121BF8, 0x000003C

gUnk_08121C34:: @ 08121C34
	.4byte gUnk_08121BE0
	.4byte gUnk_08121BF8
	.4byte 00000000
