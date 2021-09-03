	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_0810F8E4:: @ 0810F8E4
	.incbin "baserom.gba", 0x10F8E4, 0x0000005

gUnk_0810F8E9:: @ 0810F8E9
	.incbin "baserom.gba", 0x10F8E9, 0x0000005

gUnk_0810F8EE:: @ 0810F8EE
	.incbin "baserom.gba", 0x10F8EE, 0x0000001
	.incbin "baserom.gba", 0x10F8EF, 0x0000004

gUnk_0810F8F3:: @ 0810F8F3
	.incbin "baserom.gba", 0x10F8F3, 0x0000001
	.incbin "baserom.gba", 0x10F8F4, 0x0000004

gUnk_0810F8F8:: @ 0810F8F8
	.incbin "baserom.gba", 0x10F8F8, 0x0000001
	.incbin "baserom.gba", 0x10F8F9, 0x0000010

gUnk_0810F909:: @ 0810F909
	.incbin "baserom.gba", 0x10F909, 0x0000011

gUnk_0810F91A:: @ 0810F91A
	.incbin "baserom.gba", 0x10F91A, 0x0000011

gUnk_0810F92B:: @ 0810F92B
	.incbin "baserom.gba", 0x10F92B, 0x0000011

gUnk_0810F93C:: @ 0810F93C
	.incbin "baserom.gba", 0x10F93C, 0x0000008

gUnk_0810F944:: @ 0810F944
	.4byte gUnk_0810F8E4
	.4byte gUnk_0810F8E9
	.4byte gUnk_0810F8EE
	.4byte gUnk_0810F8F3
	.4byte gUnk_0810F8F8
	.4byte gUnk_0810F909
	.4byte gUnk_0810F91A
	.4byte gUnk_0810F92B
	.4byte gUnk_0810F93C
	.4byte 00000000
