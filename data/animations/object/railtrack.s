	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Railtrack_0:: @ 081205E4
	.include "animations/gSpriteAnimations_Railtrack_0.s"

gSpriteAnimations_Railtrack_1:: @ 081205E8
	.include "animations/gSpriteAnimations_Railtrack_1.s"

gSpriteAnimations_Railtrack_2:: @ 081205EC
	.include "animations/gSpriteAnimations_Railtrack_2.s"

gSpriteAnimations_Railtrack_3:: @ 081205F0
	.include "animations/gSpriteAnimations_Railtrack_3.s"

gSpriteAnimations_Railtrack:: @ 081205F4
	.4byte gSpriteAnimations_Railtrack_0
	.4byte gSpriteAnimations_Railtrack_1
	.4byte gSpriteAnimations_Railtrack_2
	.4byte gSpriteAnimations_Railtrack_3
	.4byte 00000000
