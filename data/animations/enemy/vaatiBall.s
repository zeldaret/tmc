	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_VaatiBall_0:: @ 080D1638
	.include "animations/gSpriteAnimations_VaatiBall_0.s"

gSpriteAnimations_VaatiBall_1:: @ 080D163D
	.include "animations/gSpriteAnimations_VaatiBall_1.s"

gSpriteAnimations_VaatiBall_2:: @ 080D166E
	.include "animations/gSpriteAnimations_VaatiBall_2.s"

gSpriteAnimations_VaatiBall:: @ 080D1694
	.4byte gSpriteAnimations_VaatiBall_0
	.4byte gSpriteAnimations_VaatiBall_1
	.4byte gSpriteAnimations_VaatiBall_2
	.4byte 00000000
