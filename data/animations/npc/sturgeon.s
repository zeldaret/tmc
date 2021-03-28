	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FB78:: @ 0810FB78
	.incbin "baserom.gba", 0x10FB78, 0x0000005

gUnk_0810FB7D:: @ 0810FB7D
	.incbin "baserom.gba", 0x10FB7D, 0x0000005

gUnk_0810FB82:: @ 0810FB82
	.incbin "baserom.gba", 0x10FB82, 0x0000005

gUnk_0810FB87:: @ 0810FB87
	.incbin "baserom.gba", 0x10FB87, 0x0000005

gUnk_0810FB8C:: @ 0810FB8C
	.incbin "baserom.gba", 0x10FB8C, 0x0000021

gUnk_0810FBAD:: @ 0810FBAD
	.incbin "baserom.gba", 0x10FBAD, 0x0000023

gUnk_0810FBD0:: @ 0810FBD0
	.4byte gUnk_0810FB78
	.4byte gUnk_0810FB7D
	.4byte gUnk_0810FB82
	.4byte gUnk_0810FB87
	.4byte gUnk_0810FB24
	.4byte gUnk_0810FB39
	.4byte gUnk_0810FB4E
	.4byte gUnk_0810FB63
	.4byte gUnk_0810FB8C
	.4byte gUnk_0810FBAD
	.4byte 00000000
