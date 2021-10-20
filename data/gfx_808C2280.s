	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnusedLabel_808C2280::
	.incbin "graphics/intro/nintendo_capcom.4bpp"
	.incbin "data_08132B30/gFigurineGfx136_1.bin" @ TODO rename

.ifdef EU
	.incbin "data_08132B30/gFigurineGfx136_2_EU.bin"
.else
	.incbin "data_08132B30/gFigurineGfx136_3_USA-JP-DEMO_USA-DEMO_JP.bin"

.endif
