	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121EF8:: @ 08121EF8
	.incbin "baserom.gba", 0x121EF8, 0x0000036
	.incbin "baserom.gba", 0x121F2E, 0x00000D2
	.incbin "baserom.gba", 0x122000, 0x000001C
	.incbin "baserom.gba", 0x12201C, 0x0000016
	.incbin "baserom.gba", 0x122032, 0x00000F6
