	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121090:: @ 08121090
	.incbin "baserom.gba", 0x121090, 0x0000004

gUnk_08121094:: @ 08121094
	.incbin "baserom.gba", 0x121094, 0x000003C

gUnk_081210D0:: @ 081210D0
	.incbin "baserom.gba", 0x1210D0, 0x000003C

gUnk_0812110C:: @ 0812110C
	.incbin "baserom.gba", 0x12110C, 0x000003C

gUnk_08121148:: @ 08121148
	.incbin "baserom.gba", 0x121148, 0x000000C

gUnk_08121154:: @ 08121154
	.incbin "baserom.gba", 0x121154, 0x0000004

gUnk_08121158:: @ 08121158
	.4byte gUnk_08121090
	.4byte gUnk_08121094
	.4byte gUnk_081210D0
	.4byte gUnk_0812110C
	.4byte gUnk_081210D0
	.4byte gUnk_08121148
	.4byte gUnk_08121154
	.4byte 00000000
