	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810CDA0:: @ 0810CDA0
	.incbin "baserom.gba", 0x10CDA0, 0x0000011

gUnk_0810CDB1:: @ 0810CDB1
	.incbin "baserom.gba", 0x10CDB1, 0x0000011

gUnk_0810CDC2:: @ 0810CDC2
	.incbin "baserom.gba", 0x10CDC2, 0x0000012

gUnk_0810CDD4:: @ 0810CDD4
	.4byte gUnk_0810CDA0
	.4byte gUnk_0810CDA0
	.4byte gUnk_0810CDB1
	.4byte gUnk_0810CDC2
	.4byte gUnk_0810CDC2
	.4byte gUnk_0810CDC2
	.4byte gUnk_0810CDB1
	.4byte gUnk_0810CDA0
	.4byte 00000000
