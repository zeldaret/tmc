	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Bollard_0:: @ 08121314
	.include "animations/gSpriteAnimations_Bollard_0.s"

gSpriteAnimations_Bollard_1:: @ 08121318
	.include "animations/gSpriteAnimations_Bollard_1.s"

gSpriteAnimations_Bollard_2:: @ 0812131C
	.include "animations/gSpriteAnimations_Bollard_2.s"

gSpriteAnimations_Bollard_3:: @ 0812133C
	.include "animations/gSpriteAnimations_Bollard_3.s"

gSpriteAnimations_Bollard:: @ 08121358
	.4byte gSpriteAnimations_Bollard_0
	.4byte gSpriteAnimations_Bollard_1
	.4byte gSpriteAnimations_Bollard_2
	.4byte gSpriteAnimations_Bollard_3
