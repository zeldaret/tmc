	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810BD7C:: @ 0810BD7C
	.incbin "baserom.gba", 0x10BD7C, 0x0000010

gUnk_0810BD8C:: @ 0810BD8C
	.incbin "baserom.gba", 0x10BD8C, 0x0000010

gUnk_0810BD9C:: @ 0810BD9C
	.incbin "baserom.gba", 0x10BD9C, 0x0000010

gUnk_0810BDAC:: @ 0810BDAC
	.incbin "baserom.gba", 0x10BDAC, 0x000000C

gUnk_0810BDB8:: @ 0810BDB8
	.incbin "baserom.gba", 0x10BDB8, 0x000000C

gUnk_0810BDC4:: @ 0810BDC4
	.4byte gUnk_0810BD7C
	.4byte gUnk_0810BD7C
	.4byte gUnk_0810BD7C
	.4byte gUnk_0810BD7C
	.4byte gUnk_0810BD8C
	.4byte gUnk_0810BD8C
	.4byte gUnk_0810BD9C
	.4byte gUnk_0810BDAC
	.4byte gUnk_0810BDB8

gUnk_0810BDE8:: @ 0810BDE8
	.incbin "baserom.gba", 0x10BDE8, 0x0000024

gUnk_0810BE0C:: @ 0810BE0C
	.4byte sub_080620F4

gUnk_0810BE10:: @ 0810BE10
	.4byte sub_08062130
	.4byte sub_08062194
	.incbin "baserom.gba", 0x10BE18, 0x0000029

gUnk_0810BE41:: @ 0810BE41
	.incbin "baserom.gba", 0x10BE41, 0x00000C2

gUnk_0810BF03:: @ 0810BF03
	.incbin "baserom.gba", 0x10BF03, 0x0000104

gUnk_0810C007:: @ 0810C007
	.incbin "baserom.gba", 0x10C007, 0x0000008

gUnk_0810C00F:: @ 0810C00F
.ifdef JP
    @ TODO only small differences
	.incbin "baserom_jp.gba", 0x10BCD3, 0x0000091
.else
	.incbin "baserom.gba", 0x10C00F, 0x0000091
.endif

gUnk_0810C0A0:: @ 0810C0A0
	.incbin "baserom.gba", 0x10C0A0, 0x0000024

