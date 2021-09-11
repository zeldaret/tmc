	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081115C0:: @ 081115C0
	.4byte sub_08068A1C
	.4byte sub_08068A4C
	.4byte sub_08068AA4
	.4byte sub_08068ADC

gUnk_081115D0:: @ 081115D0
	.4byte sub_08068AFC
	.4byte sub_08068b2c
	.4byte sub_08068B70

gUnk_081115DC:: @ 081115DC
	.incbin "baserom.gba", 0x1115DC, 0x0000010

gUnk_081115EC:: @ 081115EC
	.4byte gUnk_08004A0C
	.4byte gUnk_08004A16
	.4byte gUnk_08004A24
	.4byte gUnk_08004A32
	.4byte gUnk_08004A48
	.4byte gUnk_08004A72
	.4byte gUnk_08004A8C
	.4byte gUnk_08004AA6
	.4byte 00000000
	.incbin "baserom.gba", 0x111610, 0x0000008

gUnk_08111618:: @ 08111618
	.incbin "baserom.gba", 0x111618, 0x000000B

gUnk_08111623:: @ 08111623
	.incbin "baserom.gba", 0x111623, 0x0000008

gUnk_0811162B:: @ 0811162B
	.incbin "baserom.gba", 0x11162B, 0x0000039

gUnk_08111664:: @ 08111664
	.incbin "baserom.gba", 0x111664, 0x0000016

gUnk_0811167A:: @ 0811167A
	.incbin "baserom.gba", 0x11167A, 0x0000016

gUnk_08111690:: @ 08111690
	.incbin "baserom.gba", 0x111690, 0x0000016

gUnk_081116A6:: @ 081116A6
	.incbin "baserom.gba", 0x1116A6, 0x0000016

gUnk_081116BC:: @ 081116BC
	.incbin "baserom.gba", 0x1116BC, 0x0000016

gUnk_081116D2:: @ 081116D2
	.incbin "baserom.gba", 0x1116D2, 0x0000016

gUnk_081116E8:: @ 081116E8
	.incbin "baserom.gba", 0x1116E8, 0x0000016

gUnk_081116FE:: @ 081116FE
	.incbin "baserom.gba", 0x1116FE, 0x0000016

gUnk_08111714:: @ 08111714
	.incbin "baserom.gba", 0x111714, 0x0000016

gUnk_0811172A:: @ 0811172A
	.incbin "baserom.gba", 0x11172A, 0x0000016

gUnk_08111740:: @ 08111740
	.incbin "baserom.gba", 0x111740, 0x000002C

gUnk_0811176C:: @ 0811176C
	.incbin "baserom.gba", 0x11176C, 0x0000005
