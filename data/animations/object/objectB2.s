	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081249B8:: @ 081249B8
	.incbin "baserom.gba", 0x1249B8, 0x0000011

gUnk_081249C9:: @ 081249C9
	.incbin "baserom.gba", 0x1249C9, 0x0000011

gUnk_081249DA:: @ 081249DA
	.incbin "baserom.gba", 0x1249DA, 0x0000011

gUnk_081249EB:: @ 081249EB
	.incbin "baserom.gba", 0x1249EB, 0x0000011

gUnk_081249FC:: @ 081249FC
	.4byte gUnk_081249B8
	.4byte gUnk_081249C9
	.4byte gUnk_081249DA
	.4byte gUnk_081249EB
	.4byte 00000000
