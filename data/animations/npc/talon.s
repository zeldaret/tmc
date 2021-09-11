	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FEE0:: @ 0810FEE0
	.incbin "baserom.gba", 0x10FEE0, 0x0000005

gUnk_0810FEE5:: @ 0810FEE5
	.incbin "baserom.gba", 0x10FEE5, 0x0000005

gUnk_0810FEEA:: @ 0810FEEA
	.incbin "baserom.gba", 0x10FEEA, 0x0000005

gUnk_0810FEEF:: @ 0810FEEF
	.incbin "baserom.gba", 0x10FEEF, 0x0000005

gUnk_0810FEF4:: @ 0810FEF4
	.incbin "baserom.gba", 0x10FEF4, 0x0000011

gUnk_0810FF05:: @ 0810FF05
	.incbin "baserom.gba", 0x10FF05, 0x0000011

gUnk_0810FF16:: @ 0810FF16
	.incbin "baserom.gba", 0x10FF16, 0x0000011

gUnk_0810FF27:: @ 0810FF27
	.incbin "baserom.gba", 0x10FF27, 0x0000011

gUnk_0810FF38:: @ 0810FF38
	.4byte gUnk_0810FEE5
	.4byte gUnk_0810FEEF
	.4byte gUnk_0810FEE0
	.4byte gUnk_0810FEEA
	.4byte gUnk_0810FEF4
	.4byte gUnk_0810FF05
	.4byte gUnk_0810FF16
	.4byte gUnk_0810FF27
	.4byte 00000000
