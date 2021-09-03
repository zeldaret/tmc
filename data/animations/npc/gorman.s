	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111CBC:: @ 08111CBC
	.incbin "baserom.gba", 0x111CBC, 0x0000005

gUnk_08111CC1:: @ 08111CC1
	.incbin "baserom.gba", 0x111CC1, 0x0000005

gUnk_08111CC6:: @ 08111CC6
	.incbin "baserom.gba", 0x111CC6, 0x0000005

gUnk_08111CCB:: @ 08111CCB
	.incbin "baserom.gba", 0x111CCB, 0x0000005

gUnk_08111CD0:: @ 08111CD0
	.incbin "baserom.gba", 0x111CD0, 0x0000019

gUnk_08111CE9:: @ 08111CE9
	.incbin "baserom.gba", 0x111CE9, 0x0000019

gUnk_08111D02:: @ 08111D02
	.incbin "baserom.gba", 0x111D02, 0x0000015
	.incbin "baserom.gba", 0x111D17, 0x0000004

gUnk_08111D1B:: @ 08111D1B
	.incbin "baserom.gba", 0x111D1B, 0x000000F
	.incbin "baserom.gba", 0x111D2A, 0x0000001
	.incbin "baserom.gba", 0x111D2B, 0x0000009

gUnk_08111D34:: @ 08111D34
	.4byte gUnk_08111CBC
	.4byte gUnk_08111CC1
	.4byte gUnk_08111CC6
	.4byte gUnk_08111CCB
	.4byte gUnk_08111CD0
	.4byte gUnk_08111D1B
	.4byte gUnk_08111CE9
	.4byte gUnk_08111D02
	.4byte 00000000
