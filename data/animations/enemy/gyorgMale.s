	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D1C70:: @ 080D1C70
	.incbin "baserom.gba", 0x0D1C70, 0x0000021

gUnk_080D1C91:: @ 080D1C91
	.incbin "baserom.gba", 0x0D1C91, 0x000002B

gUnk_080D1CBC:: @ 080D1CBC
	.4byte gUnk_080D1C70
	.4byte gUnk_080D1C91
	.4byte 00000000
