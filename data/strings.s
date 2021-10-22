	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

@ TODO use tmc_strings to extract strings for other variants

translation:: @ 089B1D90
.ifdef JP
	.incbin "baserom_jp.gba", 0x9B1A30, 0x2BCC0
.else
.ifdef EU
	.incbin "translations/English.bin"

translationFrench::
	.incbin "translations/French.bin"

translationGerman::
	.incbin "translations/German.bin"

translationSpanish::
	.incbin "translations/Spanish.bin"

translationItalian::    
	.incbin "translations/Italian.bin"

.else
    .incbin "translations/USA.bin"
.endif
.endif
