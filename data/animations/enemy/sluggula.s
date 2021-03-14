	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CBE02:: @ 080CBE02
	.incbin "baserom.gba", 0x0CBE02, 0x0000019

gUnk_080CBE1B:: @ 080CBE1B
	.incbin "baserom.gba", 0x0CBE1B, 0x0000019

gUnk_080CBE34:: @ 080CBE34
	.incbin "baserom.gba", 0x0CBE34, 0x0000019

gUnk_080CBE4D:: @ 080CBE4D
	.incbin "baserom.gba", 0x0CBE4D, 0x0000019

gUnk_080CBE66:: @ 080CBE66
	.incbin "baserom.gba", 0x0CBE66, 0x0000024

gUnk_080CBE8A:: @ 080CBE8A
	.incbin "baserom.gba", 0x0CBE8A, 0x0000014

gUnk_080CBE9E:: @ 080CBE9E
	.incbin "baserom.gba", 0x0CBE9E, 0x0000006

gUnk_080CBEA4:: @ 080CBEA4
	.4byte gUnk_080CBE02
	.4byte gUnk_080CBE1B
	.4byte gUnk_080CBE34
	.4byte gUnk_080CBE4D
	.4byte gUnk_080CBE66
	.4byte gUnk_080CBE8A
	.4byte gUnk_080CBE9E
	.4byte 00000000

