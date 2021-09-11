	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129ABC:: @ 08129ABC
	.4byte sub_080A95F8
	.4byte sub_080A95F8
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity

gUnk_08129AD0:: @ 08129AD0
	.4byte sub_080A9610
	.4byte sub_080A976C
	.4byte sub_080A99F0

gUnk_08129ADC:: @ 08129ADC
	.incbin "projectileF/gUnk_08129ADC.bin"
