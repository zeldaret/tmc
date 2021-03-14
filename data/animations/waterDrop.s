	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD044:: @ 080CD044
	.incbin "baserom.gba", 0x0CD044, 0x0000025

gUnk_080CD069:: @ 080CD069
	.incbin "baserom.gba", 0x0CD069, 0x0000007

gUnk_080CD070:: @ 080CD070
	.4byte gUnk_080CD044
	.4byte gUnk_080CD069
	.4byte 00000000
