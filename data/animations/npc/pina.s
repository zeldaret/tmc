	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810CE54:: @ 0810CE54
	.incbin "baserom.gba", 0x10CE54, 0x000004D

gUnk_0810CEA1:: @ 0810CEA1
	.incbin "baserom.gba", 0x10CEA1, 0x000004D

gUnk_0810CEEE:: @ 0810CEEE
	.incbin "baserom.gba", 0x10CEEE, 0x0000021

gUnk_0810CF0F:: @ 0810CF0F
	.incbin "baserom.gba", 0x10CF0F, 0x0000005

gUnk_0810CF14:: @ 0810CF14
	.incbin "baserom.gba", 0x10CF14, 0x0000005

gUnk_0810CF19:: @ 0810CF19
	.incbin "baserom.gba", 0x10CF19, 0x0000007

gUnk_0810CF20:: @ 0810CF20
	.4byte gUnk_0810CE54
	.4byte gUnk_0810CE54
	.4byte gUnk_0810CE54
	.4byte gUnk_0810CE54
	.4byte gUnk_0810CF0F
	.4byte gUnk_0810CF14
	.4byte gUnk_0810CF0F
	.4byte gUnk_0810CF19
	.4byte gUnk_0810CEA1
	.4byte gUnk_0810CEEE
	.4byte 00000000
