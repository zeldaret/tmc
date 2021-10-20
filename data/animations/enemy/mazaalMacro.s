	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CEF08:: @ 080CEF08
	.incbin "mazaalMacro/gUnk_080CEF08.bin"

gUnk_080CEF0C:: @ 080CEF0C
	.incbin "mazaalMacro/gUnk_080CEF0C.bin"

gUnk_080CEF1D:: @ 080CEF1D
	.incbin "mazaalMacro/gUnk_080CEF1D.bin"

gSpriteAnimations_MazaalMacro:: @ 080CEF24
	.4byte gUnk_080CEF0C
	.4byte gUnk_080CEF08
	.4byte gUnk_080CEF1D
	.4byte 00000000
