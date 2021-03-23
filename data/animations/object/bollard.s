	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08121314:: @ 08121314
	.incbin "baserom.gba", 0x121314, 0x0000004

gUnk_08121318:: @ 08121318
	.incbin "baserom.gba", 0x121318, 0x0000004

gUnk_0812131C:: @ 0812131C
	.incbin "baserom.gba", 0x12131C, 0x0000020

gUnk_0812133C:: @ 0812133C
	.incbin "baserom.gba", 0x12133C, 0x000001C

gUnk_08121358:: @ 08121358
	.4byte gUnk_08121314
	.4byte gUnk_08121318
	.4byte gUnk_0812131C
	.4byte gUnk_0812133C
