	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_FigurineDevice_0:: @ 08120AE8
	.include "animations/gSpriteAnimations_FigurineDevice_0.s"

gSpriteAnimations_FigurineDevice_1:: @ 08120AED
	.include "animations/gSpriteAnimations_FigurineDevice_1.s"

gSpriteAnimations_FigurineDevice_2:: @ 08120B01
	.include "animations/gSpriteAnimations_FigurineDevice_2.s"

gSpriteAnimations_FigurineDevice:: @ 08120B10
	.4byte gSpriteAnimations_FigurineDevice_0
	.4byte gSpriteAnimations_FigurineDevice_1
	.4byte gSpriteAnimations_FigurineDevice_2
	.4byte 00000000

