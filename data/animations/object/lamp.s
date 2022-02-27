	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Lamp_0_0:: @ 08123E88
	.include "animations/gSpriteAnimations_Lamp_0_0.s"

gSpriteAnimations_Lamp_0:: @ 08123E9C
	.4byte gSpriteAnimations_Lamp_0_0
	.include "animations/gSpriteAnimations_Lamp_0.s"

gSpriteAnimations_Lamp_1_0:: @ 08123EA4
	.include "animations/gSpriteAnimations_Lamp_1_0.s"

gSpriteAnimations_Lamp_1:: @ 08123EB8
	.4byte gSpriteAnimations_Lamp_1_0
	.include "animations/gSpriteAnimations_Lamp_1.s"
