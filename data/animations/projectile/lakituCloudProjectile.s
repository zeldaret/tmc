	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129B84:: @ 08129B84
	.incbin "baserom.gba", 0x129B84, 0x0000011

gUnk_08129B95:: @ 08129B95
	.incbin "baserom.gba", 0x129B95, 0x0000011

gUnk_08129BA6:: @ 08129BA6
	.incbin "baserom.gba", 0x129BA6, 0x0000011

gUnk_08129BB7:: @ 08129BB7
	.incbin "baserom.gba", 0x129BB7, 0x0000011

gUnk_08129BC8:: @ 08129BC8
	.4byte gUnk_08129B84
	.4byte gUnk_08129B95
	.4byte gUnk_08129B84
	.4byte gUnk_08129B95
	.4byte gUnk_08129BA6
	.4byte gUnk_08129BB7
	.4byte gUnk_08129BA6
	.4byte gUnk_08129BB7
	.4byte 00000000
