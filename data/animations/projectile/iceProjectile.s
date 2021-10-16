	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081298C8:: @ 081298C8
	.incbin "baserom.gba", 0x1298C8, 0x0000009

gUnk_081298D1:: @ 081298D1
	.incbin "baserom.gba", 0x1298D1, 0x0000009

gUnk_081298DA:: @ 081298DA
	.incbin "baserom.gba", 0x1298DA, 0x0000009

gUnk_081298E3:: @ 081298E3
	.incbin "baserom.gba", 0x1298E3, 0x0000009

gUnk_081298EC:: @ 081298EC
	.incbin "baserom.gba", 0x1298EC, 0x0000011

gUnk_081298FD:: @ 081298FD
	.incbin "baserom.gba", 0x1298FD, 0x0000011

gUnk_0812990E:: @ 0812990E
	.incbin "baserom.gba", 0x12990E, 0x0000011

gUnk_0812991F:: @ 0812991F
	.incbin "baserom.gba", 0x12991F, 0x0000011

gUnk_08129930:: @ 08129930
	.4byte gUnk_081298C8
	.4byte gUnk_081298D1
	.4byte gUnk_081298DA
	.4byte gUnk_081298E3
	.4byte gUnk_081298EC
	.4byte gUnk_081298FD
	.4byte gUnk_0812990E
	.4byte gUnk_0812991F
	.4byte 00000000
