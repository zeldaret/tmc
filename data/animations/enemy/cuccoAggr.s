	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_CuccoAggr_0:: @ 080CF831
	.include "animations/gSpriteAnimations_CuccoAggr_0.s"

gSpriteAnimations_CuccoAggr_1:: @ 080CF836
	.include "animations/gSpriteAnimations_CuccoAggr_1.s"

gSpriteAnimations_CuccoAggr_2:: @ 080CF847
	.include "animations/gSpriteAnimations_CuccoAggr_2.s"

gSpriteAnimations_CuccoAggr_3:: @ 080CF85F
	.include "animations/gSpriteAnimations_CuccoAggr_3.s"

gSpriteAnimations_CuccoAggr_4:: @ 080CF87F
	.include "animations/gSpriteAnimations_CuccoAggr_4.s"

gSpriteAnimations_CuccoAggr:: @ 080CF890
	.4byte gSpriteAnimations_CuccoAggr_0
	.4byte gSpriteAnimations_CuccoAggr_1
	.4byte gSpriteAnimations_CuccoAggr_2
	.4byte gSpriteAnimations_CuccoAggr_3
	.4byte gSpriteAnimations_CuccoAggr_4
