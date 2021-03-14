	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA5D4:: @ 080CA5D4
	.incbin "baserom.gba", 0x0CA5D4, 0x0000002

gUnk_080CA5D6:: @ 080CA5D6
	.incbin "baserom.gba", 0x0CA5D6, 0x0000011

gUnk_080CA5E7:: @ 080CA5E7
	.incbin "baserom.gba", 0x0CA5E7, 0x0000011

gUnk_080CA5F8:: @ 080CA5F8
	.incbin "baserom.gba", 0x0CA5F8, 0x000001D

gUnk_080CA615:: @ 080CA615
	.incbin "baserom.gba", 0x0CA615, 0x0000011

gUnk_080CA626:: @ 080CA626
	.incbin "baserom.gba", 0x0CA626, 0x0000014

gUnk_080CA63A:: @ 080CA63A
	.incbin "baserom.gba", 0x0CA63A, 0x0000016

gUnk_080CA650:: @ 080CA650
	.4byte gUnk_080CA5D6
	.4byte gUnk_080CA5E7
	.4byte gUnk_080CA5F8
	.4byte gUnk_080CA615
	.4byte gUnk_080CA626
	.4byte gUnk_080CA63A
	.4byte 00000000
