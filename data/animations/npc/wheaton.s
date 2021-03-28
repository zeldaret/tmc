	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C3C8:: @ 0810C3C8
	.incbin "baserom.gba", 0x10C3C8, 0x0000019

gUnk_0810C3E1:: @ 0810C3E1
	.incbin "baserom.gba", 0x10C3E1, 0x0000011

gUnk_0810C3F2:: @ 0810C3F2
	.incbin "baserom.gba", 0x10C3F2, 0x0000011

gUnk_0810C403:: @ 0810C403
	.incbin "baserom.gba", 0x10C403, 0x0000011

gUnk_0810C414:: @ 0810C414
	.4byte gUnk_0810C3C8
	.4byte gUnk_0810C3E1
	.4byte gUnk_0810C3F2
	.4byte gUnk_0810C403
	.4byte 00000000
