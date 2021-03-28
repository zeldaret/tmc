	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A418:: @ 0812A418
	.4byte sub_080AAC0C
	.4byte sub_080AAC44
	.4byte DeleteEntity
	.4byte sub_080AACE0
	.4byte DeleteEntity
	.4byte sub_080AAD70

gUnk_0812A430:: @ 0812A430
	.incbin "baserom.gba", 0x12A430, 0x0000010

gUnk_0812A440:: @ 0812A440
	.incbin "baserom.gba", 0x12A440, 0x000000C

