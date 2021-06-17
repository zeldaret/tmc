	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_089B1D90:: @ 089B1D90
.ifdef JP
	.incbin "baserom_jp.gba", 0x9B1A30, 0x2BCC0
.else
    .incbin "translations/USA.bin"
.endif
