	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081103E4:: @ 081103E4
	.incbin "baserom.gba", 0x1103E4, 0x0000005

gUnk_081103E9:: @ 081103E9
	.incbin "baserom.gba", 0x1103E9, 0x0000005

gUnk_081103EE:: @ 081103EE
	.incbin "baserom.gba", 0x1103EE, 0x0000005

gUnk_081103F3:: @ 081103F3
	.incbin "baserom.gba", 0x1103F3, 0x0000005

gUnk_081103F8:: @ 081103F8
	.incbin "baserom.gba", 0x1103F8, 0x0000006
	.incbin "baserom.gba", 0x1103FE, 0x0000002
	.incbin "baserom.gba", 0x110400, 0x0000009

gUnk_08110409:: @ 08110409
	.incbin "baserom.gba", 0x110409, 0x0000011

gUnk_0811041A:: @ 0811041A
	.incbin "baserom.gba", 0x11041A, 0x0000011

gUnk_0811042B:: @ 0811042B
	.incbin "baserom.gba", 0x11042B, 0x0000011

gUnk_0811043C:: @ 0811043C
	.incbin "baserom.gba", 0x11043C, 0x0000005

gUnk_08110441:: @ 08110441
	.incbin "baserom.gba", 0x110441, 0x0000005

gUnk_08110446:: @ 08110446
	.incbin "baserom.gba", 0x110446, 0x0000005

gUnk_0811044B:: @ 0811044B
	.incbin "baserom.gba", 0x11044B, 0x0000029

gUnk_08110474:: @ 08110474
	.incbin "baserom.gba", 0x110474, 0x0000005

gUnk_08110479:: @ 08110479
	.incbin "baserom.gba", 0x110479, 0x0000005

gUnk_0811047E:: @ 0811047E
	.incbin "baserom.gba", 0x11047E, 0x0000006

gUnk_08110484:: @ 08110484
	.4byte gUnk_081103E4
	.4byte gUnk_081103E9
	.4byte gUnk_081103EE
	.4byte gUnk_081103F3
	.4byte gUnk_081103F8
	.4byte gUnk_0811041A
	.4byte gUnk_08110409
	.4byte gUnk_0811042B
	.4byte gUnk_0811043C
	.4byte gUnk_08110441
	.4byte gUnk_0811043C
	.4byte gUnk_08110446
	.4byte gUnk_0811044B
	.4byte gUnk_08110474
	.4byte gUnk_08110479
	.4byte gUnk_0811047E
	.4byte 00000000
