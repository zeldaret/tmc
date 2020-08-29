	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA4D4:: @ 080CA4D4
	.incbin "baserom.gba", 0x0CA4D4, 0x000002C

gUnk_080CA500:: @ 080CA500
	.incbin "baserom.gba", 0x0CA500, 0x000001C

gUnk_080CA51C:: @ 080CA51C
	.incbin "baserom.gba", 0x0CA51C, 0x0000044

gUnk_080CA560:: @ 080CA560
	.incbin "baserom.gba", 0x0CA560, 0x0000010
