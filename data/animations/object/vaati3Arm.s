	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Vaati3Arm_0:: @ 081248D0
	.include "animations/gSpriteAnimations_Vaati3Arm_0.s"

gSpriteAnimations_Vaati3Arm_1:: @ 081248E1
	.include "animations/gSpriteAnimations_Vaati3Arm_1.s"

gSpriteAnimations_Vaati3Arm_2:: @ 081248F2
	.include "animations/gSpriteAnimations_Vaati3Arm_2.s"

gSpriteAnimations_Vaati3Arm_3:: @ 0812490E
	.include "animations/gSpriteAnimations_Vaati3Arm_3.s"

gSpriteAnimations_Vaati3Arm:: @ 08124928
	.4byte gSpriteAnimations_Vaati3Arm_0
	.4byte gSpriteAnimations_Vaati3Arm_1
	.4byte gSpriteAnimations_Vaati3Arm_2
	.4byte gSpriteAnimations_Vaati3Arm_3
	.4byte 00000000
