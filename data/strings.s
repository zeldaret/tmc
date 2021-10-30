	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

@ TODO use tmc_strings to extract strings for other variants

translation:: @ 089B1D90
.ifdef DEMO_JP
	@ some strings seem to be added compared to JP
	.incbin "strings/translation_DEMO_JP.bin"
.else
.ifdef JP
	.incbin "strings/translation_1_JP.bin"
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
.endif
