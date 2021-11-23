	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2
gSpriteAnimations_LavaPlatform_1_0:: @ 08122670
	.include "animations/gSpriteAnimations_LavaPlatform_1_0.s"

gSpriteAnimations_LavaPlatform_1_1:: @ 08122684
	.include "animations/gSpriteAnimations_LavaPlatform_1_1.s"

gSpriteAnimations_LavaPlatform_1:: @ 08122698
	.4byte gSpriteAnimations_LavaPlatform_1_0
	.4byte gSpriteAnimations_LavaPlatform_1_1
	.include "animations/gSpriteAnimations_LavaPlatform_1.s"

gSpriteAnimations_LavaPlatform_0_0:: @ 081226A4
	.include "animations/gSpriteAnimations_LavaPlatform_0_0.s"

gSpriteAnimations_LavaPlatform_0_1:: @ 081226A8
	.include "animations/gSpriteAnimations_LavaPlatform_0_1.s"

gSpriteAnimations_LavaPlatform_0_2:: @ 081226AC
	.include "animations/gSpriteAnimations_LavaPlatform_0_2.s"

gSpriteAnimations_LavaPlatform_0_3:: @ 0812273D
	.include "animations/gSpriteAnimations_LavaPlatform_0_3.s"

gSpriteAnimations_LavaPlatform_0_4:: @ 08122742
	.include "animations/gSpriteAnimations_LavaPlatform_0_4.s"

gSpriteAnimations_LavaPlatform_0_5:: @ 08122753
	.include "animations/gSpriteAnimations_LavaPlatform_0_5.s"

gSpriteAnimations_LavaPlatform:: @ 08122764
	.4byte gSpriteAnimations_LavaPlatform_0_0
	.4byte gSpriteAnimations_LavaPlatform_0_1
	.4byte gSpriteAnimations_LavaPlatform_0_2
	.4byte gSpriteAnimations_LavaPlatform_0_3
	.4byte gSpriteAnimations_LavaPlatform_0_4
	.4byte gSpriteAnimations_LavaPlatform_0_5
	.4byte 00000000
