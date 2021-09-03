	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111114:: @ 08111114
	.incbin "baserom.gba", 0x111114, 0x0000008

gUnk_0811111C:: @ 0811111C
	.incbin "baserom.gba", 0x11111C, 0x0000008

gUnk_08111124:: @ 08111124
	.incbin "baserom.gba", 0x111124, 0x0000008

gUnk_0811112C:: @ 0811112C
	.incbin "baserom.gba", 0x11112C, 0x0000008

gUnk_08111134:: @ 08111134
	.incbin "baserom.gba", 0x111134, 0x0000008

gUnk_0811113C:: @ 0811113C
	.incbin "baserom.gba", 0x11113C, 0x0000008

gUnk_08111144:: @ 08111144
	.incbin "baserom.gba", 0x111144, 0x0000008

gUnk_0811114C:: @ 0811114C
	.incbin "baserom.gba", 0x11114C, 0x0000008

gUnk_08111154:: @ 08111154
	.4byte gUnk_08111114
	.4byte gUnk_0811111C
	.4byte gUnk_08111124
	.4byte gUnk_0811112C
	.4byte gUnk_08111134
	.4byte gUnk_0811113C
	.4byte gUnk_08111144
	.4byte gUnk_0811114C

gUnk_08111174:: @ 08111174
	.incbin "baserom.gba", 0x111174, 0x000003C

gUnk_081111B0:: @ 081111B0
	.incbin "baserom.gba", 0x1111B0, 0x0000009

gUnk_081111B9:: @ 081111B9
	.incbin "baserom.gba", 0x1111B9, 0x0000003
	.incbin "baserom.gba", 0x1111BC, 0x0000006

gUnk_081111C2:: @ 081111C2
	.incbin "baserom.gba", 0x1111C2, 0x0000011

gUnk_081111D3:: @ 081111D3
	.incbin "baserom.gba", 0x1111D3, 0x0000018

gUnk_081111EB:: @ 081111EB
	.incbin "baserom.gba", 0x1111EB, 0x0000010
	.incbin "baserom.gba", 0x1111FB, 0x0000009

gUnk_08111204:: @ 08111204
	.incbin "baserom.gba", 0x111204, 0x000000D
	.incbin "baserom.gba", 0x111211, 0x000000D
	.incbin "baserom.gba", 0x11121E, 0x000000E

gUnk_0811122C:: @ 0811122C
	.incbin "baserom.gba", 0x11122C, 0x000000C

gUnk_08111238:: @ 08111238
	.incbin "baserom.gba", 0x111238, 0x0000024

gUnk_0811125C:: @ 0811125C
	.4byte gUnk_08111174
	.4byte gUnk_081111B0
	.4byte gUnk_081111B9
	.4byte gUnk_081111C2
	.4byte gUnk_081111D3
	.4byte gUnk_081111EB
	.4byte gUnk_08111204
	.4byte gUnk_0811122C
	.4byte gUnk_08111238
	.4byte 00000000
