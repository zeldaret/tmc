	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2



gUnk_080CDEFC:: @ 080CDEFC
	.incbin "baserom.gba", 0x0CDEFC, 0x000000D

gUnk_080CDF09:: @ 080CDF09
	.incbin "baserom.gba", 0x0CDF09, 0x0000011

gUnk_080CDF1A:: @ 080CDF1A
	.incbin "baserom.gba", 0x0CDF1A, 0x000000D

gUnk_080CDF27:: @ 080CDF27
	.incbin "baserom.gba", 0x0CDF27, 0x000000C

gUnk_080CDF33:: @ 080CDF33
	.incbin "baserom.gba", 0x0CDF33, 0x0000005

gUnk_080CDF38:: @ 080CDF38
	.4byte gUnk_080CDEFC
	.4byte gUnk_080CDF09
	.4byte gUnk_080CDF1A
	.4byte gUnk_080CDF27
	.4byte gUnk_080CDF33
	.4byte 00000000
