	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CBA64:: @ 080CBA64
	.incbin "baserom.gba", 0x0CBA64, 0x0000041

gUnk_080CBAA5:: @ 080CBAA5
	.incbin "baserom.gba", 0x0CBAA5, 0x0000040

gUnk_080CBAE5:: @ 080CBAE5
	.incbin "baserom.gba", 0x0CBAE5, 0x0000018

gUnk_080CBAFD:: @ 080CBAFD
	.incbin "baserom.gba", 0x0CBAFD, 0x0000024

gUnk_080CBB21:: @ 080CBB21
	.incbin "baserom.gba", 0x0CBB21, 0x0000011

gUnk_080CBB32:: @ 080CBB32
	.incbin "baserom.gba", 0x0CBB32, 0x000000D

gUnk_080CBB3F:: @ 080CBB3F
	.incbin "baserom.gba", 0x0CBB3F, 0x0000005

gUnk_080CBB44:: @ 080CBB44
	.4byte gUnk_080CBA64
	.4byte gUnk_080CBAA5
	.4byte gUnk_080CBAE5
	.4byte gUnk_080CBAFD
	.4byte gUnk_080CBB21
	.4byte gUnk_080CBB32
	.4byte gUnk_080CBB3F
	.4byte 00000000
