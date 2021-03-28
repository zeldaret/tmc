	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121EF8:: @ 08121EF8
	.incbin "baserom.gba", 0x121EF8, 0x0000036

gUnk_08121F2E:: @ 08121F2E
	.incbin "baserom.gba", 0x121F2E, 0x00000D2

gUnk_08122000:: @ 08122000
	.incbin "baserom.gba", 0x122000, 0x000001C

gUnk_0812201C:: @ 0812201C
	.incbin "baserom.gba", 0x12201C, 0x0000016

gUnk_08122032:: @ 08122032
	.incbin "baserom.gba", 0x122032, 0x00000F6
