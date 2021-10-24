	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_VaatiReborn_0:: @ 08112F88
	.include "animations/gSpriteAnimations_VaatiReborn_0.s"

gSpriteAnimations_VaatiReborn_1:: @ 08112FC4
	.include "animations/gSpriteAnimations_VaatiReborn_1.s"

gSpriteAnimations_VaatiReborn_2:: @ 08112FD5
	.include "animations/gSpriteAnimations_VaatiReborn_2.s"

gSpriteAnimations_VaatiReborn:: @ 08112FF4
	.4byte gSpriteAnimations_VaatiReborn_0
	.4byte gSpriteAnimations_VaatiReborn_1
	.4byte gSpriteAnimations_VaatiReborn_2
	.4byte 00000000
