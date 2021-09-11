	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2



gUnk_080CDEFC:: @ 080CDEFC
	.incbin "tektite/gUnk_080CDEFC.bin"

gUnk_080CDF09:: @ 080CDF09
	.incbin "tektite/gUnk_080CDF09.bin"

gUnk_080CDF1A:: @ 080CDF1A
	.incbin "tektite/gUnk_080CDF1A.bin"

gUnk_080CDF27:: @ 080CDF27
	.incbin "tektite/gUnk_080CDF27.bin"

gUnk_080CDF33:: @ 080CDF33
	.incbin "tektite/gUnk_080CDF33.bin"

gUnk_080CDF38:: @ 080CDF38
	.4byte gUnk_080CDEFC
	.4byte gUnk_080CDF09
	.4byte gUnk_080CDF1A
	.4byte gUnk_080CDF27
	.4byte gUnk_080CDF33
	.4byte 00000000
