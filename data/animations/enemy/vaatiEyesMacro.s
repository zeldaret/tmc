	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2



gUnk_080CDEA0:: @ 080CDEA0
	.incbin "vaatiEyesMacro/gUnk_080CDEA0.bin"

gUnk_080CDEB1:: @ 080CDEB1
	.incbin "vaatiEyesMacro/gUnk_080CDEB1.bin"

gUnk_080CDEC4:: @ 080CDEC4
	.4byte gUnk_080CDEA0
	.4byte gUnk_080CDEB1
	.4byte 00000000
