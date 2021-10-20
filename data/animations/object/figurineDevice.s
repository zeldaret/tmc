	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120AE8:: @ 08120AE8
	.incbin "figurineDevice/gUnk_08120AE8.bin"

gUnk_08120AED:: @ 08120AED
	.incbin "figurineDevice/gUnk_08120AED.bin"

gUnk_08120B01:: @ 08120B01
	.incbin "figurineDevice/gUnk_08120B01.bin"

gSpriteAnimations_FigurineDevice:: @ 08120B10
	.4byte gUnk_08120AE8
	.4byte gUnk_08120AED
	.4byte gUnk_08120B01
	.4byte 00000000

