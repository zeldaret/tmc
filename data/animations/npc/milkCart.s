	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110120:: @ 08110120
	.incbin "baserom.gba", 0x110120, 0x0000005

gUnk_08110125:: @ 08110125
	.incbin "baserom.gba", 0x110125, 0x0000013

gUnk_08110138:: @ 08110138
	.4byte gUnk_08110120
	.4byte gUnk_08110120
	.4byte gUnk_08110120
	.4byte gUnk_08110120
	.4byte gUnk_08110125
	.4byte gUnk_08110125
	.4byte gUnk_08110125
	.4byte gUnk_08110125
	.4byte 00000000
