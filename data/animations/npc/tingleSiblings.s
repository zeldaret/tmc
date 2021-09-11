	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FC54:: @ 0810FC54
	.incbin "baserom.gba", 0x10FC54, 0x000000A

gUnk_0810FC5E:: @ 0810FC5E
	.incbin "baserom.gba", 0x10FC5E, 0x000000A

gUnk_0810FC68:: @ 0810FC68
	.incbin "baserom.gba", 0x10FC68, 0x0000045

gUnk_0810FCAD:: @ 0810FCAD
	.incbin "baserom.gba", 0x10FCAD, 0x0000021

gUnk_0810FCCE:: @ 0810FCCE
	.incbin "baserom.gba", 0x10FCCE, 0x000009E

gUnk_0810FD6C:: @ 0810FD6C
	.4byte gUnk_0810FC5E
	.4byte gUnk_0810FC54
	.4byte gUnk_0810FC5E
	.4byte gUnk_0810FC68
	.4byte gUnk_0810FCAD
	.4byte gUnk_0810FCAD
	.4byte gUnk_0810FCAD
	.4byte gUnk_0810FCAD
	.4byte gUnk_0810FCCE
	.4byte gUnk_0810FCCE
	.4byte gUnk_0810FCCE
	.4byte gUnk_0810FCCE
	.4byte 00000000
