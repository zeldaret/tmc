	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810F560:: @ 0810F560
	.incbin "baserom.gba", 0x10F560, 0x000003A

gUnk_0810F59A:: @ 0810F59A
	.incbin "baserom.gba", 0x10F59A, 0x000003A

gUnk_0810F5D4:: @ 0810F5D4
	.incbin "baserom.gba", 0x10F5D4, 0x000001F

gUnk_0810F5F3:: @ 0810F5F3
	.incbin "baserom.gba", 0x10F5F3, 0x0000005

gUnk_0810F5F8:: @ 0810F5F8
	.incbin "baserom.gba", 0x10F5F8, 0x0000016

gUnk_0810F60E:: @ 0810F60E
	.incbin "baserom.gba", 0x10F60E, 0x0000005

gUnk_0810F613:: @ 0810F613
	.incbin "baserom.gba", 0x10F613, 0x0000007

gUnk_0810F61A:: @ 0810F61A
	.incbin "baserom.gba", 0x10F61A, 0x000002E

gUnk_0810F648:: @ 0810F648
	.incbin "baserom.gba", 0x10F648, 0x000003A

gUnk_0810F682:: @ 0810F682
	.incbin "baserom.gba", 0x10F682, 0x000003A

gUnk_0810F6BC:: @ 0810F6BC
	.4byte gUnk_0810F560
	.4byte gUnk_0810F59A
	.4byte gUnk_0810F5D4
	.4byte gUnk_0810F60E
	.4byte gUnk_0810F648
	.4byte gUnk_0810F682
