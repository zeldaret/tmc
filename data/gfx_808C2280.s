	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnusedLabel_808C2280::
	.incbin "graphics/intro/nintendo_capcom.4bpp"
	.incbin "figurines/gFigurineGfx136_1.bin" @ TODO rename

.ifdef EU
	.incbin "figurines/gFigurineGfx136_2_EU.bin"
.else
	.incbin "figurines/gFigurineGfx136_3_USA-JP-DEMO_USA-DEMO_JP.bin"

.endif
