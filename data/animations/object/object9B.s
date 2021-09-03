	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081242E8:: @ 081242E8
	.incbin "baserom.gba", 0x1242E8, 0x000002C
	.incbin "baserom.gba", 0x124314, 0x000000C

gUnk_08124320:: @ 08124320
	.incbin "baserom.gba", 0x124320, 0x0000028

gUnk_08124348:: @ 08124348
	.4byte gUnk_081242E8
	.4byte gUnk_08124320
	.4byte 00000000
