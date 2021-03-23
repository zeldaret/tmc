	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_080CDF78:: @ 080CDF78
	.incbin "baserom.gba", 0x0CDF78, 0x0000005

gUnk_080CDF7D:: @ 080CDF7D
	.incbin "baserom.gba", 0x0CDF7D, 0x0000005

gUnk_080CDF82:: @ 080CDF82
	.incbin "baserom.gba", 0x0CDF82, 0x0000005

gUnk_080CDF87:: @ 080CDF87
	.incbin "baserom.gba", 0x0CDF87, 0x0000005

gUnk_080CDF8C:: @ 080CDF8C
	.incbin "baserom.gba", 0x0CDF8C, 0x0000005

gUnk_080CDF91:: @ 080CDF91
	.incbin "baserom.gba", 0x0CDF91, 0x0000005

gUnk_080CDF96:: @ 080CDF96
	.incbin "baserom.gba", 0x0CDF96, 0x0000005

gUnk_080CDF9B:: @ 080CDF9B
	.incbin "baserom.gba", 0x0CDF9B, 0x0000005

gUnk_080CDFA0:: @ 080CDFA0
	.4byte gUnk_080CDF78
	.4byte gUnk_080CDF7D
	.4byte gUnk_080CDF82
	.4byte gUnk_080CDF87
	.4byte gUnk_080CDF8C
	.4byte gUnk_080CDF91
	.4byte gUnk_080CDF96
	.4byte gUnk_080CDF9B
	.4byte 00000000
