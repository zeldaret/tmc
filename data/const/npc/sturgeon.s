	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FA38:: @ 0810FA38
	.incbin "baserom.gba", 0x10FA38, 0x000000C

gUnk_0810FA44:: @ 0810FA44
	.4byte sub_08064B44
	.4byte sub_08064B88
	.4byte sub_08064C2C
	.4byte sub_08064C50

gUnk_0810FA54:: @ 0810FA54
	.incbin "baserom.gba", 0x10FA54, 0x0000006

gUnk_0810FA5A:: @ 0810FA5A
	.incbin "baserom.gba", 0x10FA5A, 0x00000CA

gUnk_0810FB24:: @ 0810FB24
	.incbin "baserom.gba", 0x10FB24, 0x0000015

gUnk_0810FB39:: @ 0810FB39
	.incbin "baserom.gba", 0x10FB39, 0x0000015

gUnk_0810FB4E:: @ 0810FB4E
	.incbin "baserom.gba", 0x10FB4E, 0x0000015

gUnk_0810FB63:: @ 0810FB63
	.incbin "baserom.gba", 0x10FB63, 0x0000015
