	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_Curtain_0:: @ 080D1CF0
	.include "animations/gSpriteAnimations_Curtain_0.s"

gSpriteAnimations_Curtain_1:: @ 080D1CF9
	.include "animations/gSpriteAnimations_Curtain_1.s"

gSpriteAnimations_Curtain_2:: @ 080D1D02
	.include "animations/gSpriteAnimations_Curtain_2.s"

gSpriteAnimations_Curtain_3:: @ 080D1D26
	.include "animations/gSpriteAnimations_Curtain_3.s"

gSpriteAnimations_Curtain:: @ 080D1D34
	.4byte gSpriteAnimations_Curtain_0
	.4byte gSpriteAnimations_Curtain_1
	.4byte gSpriteAnimations_Curtain_2
	.4byte gSpriteAnimations_Curtain_3
	.4byte 00000000
