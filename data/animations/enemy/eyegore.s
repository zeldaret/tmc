	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CE30C:: @ 080CE30C
	.incbin "baserom.gba", 0x0CE30C, 0x0000010

gUnk_080CE31C:: @ 080CE31C
	.incbin "baserom.gba", 0x0CE31C, 0x0000019

gUnk_080CE335:: @ 080CE335
	.incbin "baserom.gba", 0x0CE335, 0x0000010

gUnk_080CE345:: @ 080CE345
	.incbin "baserom.gba", 0x0CE345, 0x0000019

gUnk_080CE35E:: @ 080CE35E
	.incbin "baserom.gba", 0x0CE35E, 0x0000010

gUnk_080CE36E:: @ 080CE36E
	.incbin "baserom.gba", 0x0CE36E, 0x0000019

gUnk_080CE387:: @ 080CE387
	.incbin "baserom.gba", 0x0CE387, 0x0000010

gUnk_080CE397:: @ 080CE397
	.incbin "baserom.gba", 0x0CE397, 0x0000019

gUnk_080CE3B0:: @ 080CE3B0
	.incbin "baserom.gba", 0x0CE3B0, 0x000000C

gUnk_080CE3BC:: @ 080CE3BC
	.incbin "baserom.gba", 0x0CE3BC, 0x000000C

gUnk_080CE3C8:: @ 080CE3C8
	.incbin "baserom.gba", 0x0CE3C8, 0x000000C

gUnk_080CE3D4:: @ 080CE3D4
	.incbin "baserom.gba", 0x0CE3D4, 0x000000C

gUnk_080CE3E0:: @ 080CE3E0
	.incbin "baserom.gba", 0x0CE3E0, 0x000000C

gUnk_080CE3EC:: @ 080CE3EC
	.incbin "baserom.gba", 0x0CE3EC, 0x000000C

gUnk_080CE3F8:: @ 080CE3F8
	.incbin "baserom.gba", 0x0CE3F8, 0x000000C

gUnk_080CE404:: @ 080CE404
	.4byte gUnk_080CE335
	.4byte gUnk_080CE387
	.4byte gUnk_080CE30C
	.4byte gUnk_080CE35E
	.4byte gUnk_080CE345
	.4byte gUnk_080CE397
	.4byte gUnk_080CE31C
	.4byte gUnk_080CE36E
	.4byte gUnk_080CE3BC
	.4byte gUnk_080CE3D4
	.4byte gUnk_080CE3B0
	.4byte gUnk_080CE3C8
	.4byte gUnk_080CE3BC
	.4byte gUnk_080CE3F8
	.4byte gUnk_080CE3E0
	.4byte gUnk_080CE3EC
	.4byte 00000000
