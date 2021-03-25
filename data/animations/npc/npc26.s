	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081106E8:: @ 081106E8
	.incbin "baserom.gba", 0x1106E8, 0x0000005

gUnk_081106ED:: @ 081106ED
	.incbin "baserom.gba", 0x1106ED, 0x0000011

gUnk_081106FE:: @ 081106FE
	.incbin "baserom.gba", 0x1106FE, 0x0000012

gUnk_08110710:: @ 08110710
	.4byte gUnk_081106E8
	.4byte gUnk_081106E8
	.4byte gUnk_081106E8
	.4byte gUnk_081106E8
	.4byte gUnk_081106ED
	.4byte gUnk_081106ED
	.4byte gUnk_081106FE
	.4byte gUnk_081106FE
	.4byte 00000000
