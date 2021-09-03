	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111AC4:: @ 08111AC4
	.incbin "baserom.gba", 0x111AC4, 0x0000005

gUnk_08111AC9:: @ 08111AC9
	.incbin "baserom.gba", 0x111AC9, 0x0000005

gUnk_08111ACE:: @ 08111ACE
	.incbin "baserom.gba", 0x111ACE, 0x0000005

gUnk_08111AD3:: @ 08111AD3
	.incbin "baserom.gba", 0x111AD3, 0x0000005

gUnk_08111AD8:: @ 08111AD8
	.incbin "baserom.gba", 0x111AD8, 0x0000021

gUnk_08111AF9:: @ 08111AF9
	.incbin "baserom.gba", 0x111AF9, 0x0000021

gUnk_08111B1A:: @ 08111B1A
	.incbin "baserom.gba", 0x111B1A, 0x0000005
	.incbin "baserom.gba", 0x111B1F, 0x0000007
	.incbin "baserom.gba", 0x111B26, 0x0000015

gUnk_08111B3B:: @ 08111B3B
	.incbin "baserom.gba", 0x111B3B, 0x000000B
	.incbin "baserom.gba", 0x111B46, 0x000001A

gUnk_08111B60:: @ 08111B60
	.4byte gUnk_08111AC4
	.4byte gUnk_08111AC9
	.4byte gUnk_08111ACE
	.4byte gUnk_08111AD3
	.4byte gUnk_08111B1A
	.4byte gUnk_08111AD8
	.4byte gUnk_08111ACE
	.4byte gUnk_08111AF9
	.4byte gUnk_08111B3B
	.4byte 00000000
