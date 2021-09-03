	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_0812079C:: @ 0812079C
	.incbin "baserom.gba", 0x12079C, 0x0000008

gUnk_081207A4:: @ 081207A4
	.4byte sub_080872AC
	.4byte sub_080872F8

gUnk_081207AC:: @ 081207AC
	.incbin "baserom.gba", 0x1207AC, 0x0000004

gUnk_081207B0:: @ 081207B0
	.incbin "baserom.gba", 0x1207B0, 0x0000011

gUnk_081207C1:: @ 081207C1
	.incbin "baserom.gba", 0x1207C1, 0x0000011

gUnk_081207D2:: @ 081207D2
	.incbin "baserom.gba", 0x1207D2, 0x0000005

gUnk_081207D7:: @ 081207D7
	.incbin "baserom.gba", 0x1207D7, 0x000001D

gUnk_081207F4:: @ 081207F4
	.incbin "baserom.gba", 0x1207F4, 0x000000D
	.incbin "baserom.gba", 0x120801, 0x0000003
	.incbin "baserom.gba", 0x120804, 0x0000004
	.incbin "baserom.gba", 0x120808, 0x0000006
	.incbin "baserom.gba", 0x12080E, 0x000000B

gUnk_08120819:: @ 08120819
	.incbin "baserom.gba", 0x120819, 0x000000D

gUnk_08120826:: @ 08120826
	.incbin "baserom.gba", 0x120826, 0x0000009

gUnk_0812082F:: @ 0812082F
	.incbin "baserom.gba", 0x12082F, 0x0000021

gUnk_08120850:: @ 08120850
	.incbin "baserom.gba", 0x120850, 0x0000005

gUnk_08120855:: @ 08120855
	.incbin "baserom.gba", 0x120855, 0x0000023

gUnk_08120878:: @ 08120878
	.4byte gUnk_081207B0
	.4byte gUnk_081207D2
	.4byte gUnk_081207C1
	.4byte gUnk_0812082F
	.4byte gUnk_08120850
	.4byte gUnk_081207F4
	.4byte gUnk_08120819
	.4byte gUnk_08120826
	.4byte gUnk_08120855
	.4byte gUnk_081207D7
