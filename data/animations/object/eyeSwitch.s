	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_EyeSwitch_0:: @ 08120B34
	.include "animations/gSpriteAnimations_EyeSwitch_0.s"

gSpriteAnimations_EyeSwitch_1:: @ 08120B45
	.include "animations/gSpriteAnimations_EyeSwitch_1.s"

gSpriteAnimations_EyeSwitch_2:: @ 08120B56
	.include "animations/gSpriteAnimations_EyeSwitch_2.s"

gSpriteAnimations_EyeSwitch_3:: @ 08120B67
	.include "animations/gSpriteAnimations_EyeSwitch_3.s"

gSpriteAnimations_EyeSwitch_4:: @ 08120B78
	.include "animations/gSpriteAnimations_EyeSwitch_4.s"

gSpriteAnimations_EyeSwitch_5:: @ 08120B89
	.include "animations/gSpriteAnimations_EyeSwitch_5.s"

gSpriteAnimations_EyeSwitch_6:: @ 08120B9A
	.include "animations/gSpriteAnimations_EyeSwitch_6.s"

gSpriteAnimations_EyeSwitch_7:: @ 08120BAB
	.include "animations/gSpriteAnimations_EyeSwitch_7.s"

gSpriteAnimations_EyeSwitch:: @ 08120BBC
	.4byte gSpriteAnimations_EyeSwitch_0
	.4byte gSpriteAnimations_EyeSwitch_1
	.4byte gSpriteAnimations_EyeSwitch_2
	.4byte gSpriteAnimations_EyeSwitch_3
	.4byte gSpriteAnimations_EyeSwitch_4
	.4byte gSpriteAnimations_EyeSwitch_5
	.4byte gSpriteAnimations_EyeSwitch_6
	.4byte gSpriteAnimations_EyeSwitch_7
	.4byte 00000000
