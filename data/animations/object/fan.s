	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081243F4:: @ 081243F4
	.incbin "baserom.gba", 0x1243F4, 0x0000071

gUnk_08124465:: @ 08124465
	.incbin "baserom.gba", 0x124465, 0x0000071

gUnk_081244D6:: @ 081244D6
	.incbin "baserom.gba", 0x1244D6, 0x0000071

gUnk_08124547:: @ 08124547
	.incbin "baserom.gba", 0x124547, 0x0000071

gUnk_081245B8:: @ 081245B8
	.incbin "baserom.gba", 0x1245B8, 0x0000025

gUnk_081245DD:: @ 081245DD
	.incbin "baserom.gba", 0x1245DD, 0x0000025

gUnk_08124602:: @ 08124602
	.incbin "baserom.gba", 0x124602, 0x0000025

gUnk_08124627:: @ 08124627
	.incbin "baserom.gba", 0x124627, 0x0000025

gUnk_0812464C:: @ 0812464C
	.4byte gUnk_081243F4
	.4byte gUnk_08124465
	.4byte gUnk_081244D6
	.4byte gUnk_08124547
	.4byte gUnk_081245B8
	.4byte gUnk_081245DD
	.4byte gUnk_08124602
	.4byte gUnk_08124627
	.4byte 00000000
