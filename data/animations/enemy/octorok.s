	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA180:: @ 080CA180
	.incbin "baserom.gba", 0x0CA180, 0x0000009

gUnk_080CA189:: @ 080CA189
	.incbin "baserom.gba", 0x0CA189, 0x0000009

gUnk_080CA192:: @ 080CA192
	.incbin "baserom.gba", 0x0CA192, 0x0000009

gUnk_080CA19B:: @ 080CA19B
	.incbin "baserom.gba", 0x0CA19B, 0x0000009

gUnk_080CA1A4:: @ 080CA1A4
	.incbin "baserom.gba", 0x0CA1A4, 0x0000015

gUnk_080CA1B9:: @ 080CA1B9
	.incbin "baserom.gba", 0x0CA1B9, 0x0000015

gUnk_080CA1CE:: @ 080CA1CE
	.incbin "baserom.gba", 0x0CA1CE, 0x0000015

gUnk_080CA1E3:: @ 080CA1E3
	.incbin "baserom.gba", 0x0CA1E3, 0x0000015

gUnk_080CA1F8:: @ 080CA1F8
	.4byte gUnk_080CA180
	.4byte gUnk_080CA189
	.4byte gUnk_080CA192
	.4byte gUnk_080CA19B
	.4byte gUnk_080CA1A4
	.4byte gUnk_080CA1B9
	.4byte gUnk_080CA1CE
	.4byte gUnk_080CA1E3
	.4byte 00000000
