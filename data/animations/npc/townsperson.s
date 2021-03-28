	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_0810BD00:: @ 0810BD00
	.incbin "baserom.gba", 0x10BD00, 0x0000005

gUnk_0810BD05:: @ 0810BD05
	.incbin "baserom.gba", 0x10BD05, 0x0000005

gUnk_0810BD0A:: @ 0810BD0A
	.incbin "baserom.gba", 0x10BD0A, 0x0000005

gUnk_0810BD0F:: @ 0810BD0F
	.incbin "baserom.gba", 0x10BD0F, 0x0000005

gUnk_0810BD14:: @ 0810BD14
	.incbin "baserom.gba", 0x10BD14, 0x0000011

gUnk_0810BD25:: @ 0810BD25
	.incbin "baserom.gba", 0x10BD25, 0x0000011

gUnk_0810BD36:: @ 0810BD36
	.incbin "baserom.gba", 0x10BD36, 0x0000011

gUnk_0810BD47:: @ 0810BD47
	.incbin "baserom.gba", 0x10BD47, 0x0000011

gUnk_0810BD58:: @ 0810BD58
	.4byte gUnk_0810BD00
	.4byte gUnk_0810BD05
	.4byte gUnk_0810BD0A
	.4byte gUnk_0810BD0F
	.4byte gUnk_0810BD14
	.4byte gUnk_0810BD25
	.4byte gUnk_0810BD36
	.4byte gUnk_0810BD47
	.4byte 00000000
