	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gSpriteAnimations_WizzrobeWind_0:: @ 080CDF78
	.include "animations/gSpriteAnimations_WizzrobeWind_0.s"

gSpriteAnimations_WizzrobeWind_1:: @ 080CDF7D
	.include "animations/gSpriteAnimations_WizzrobeWind_1.s"

gSpriteAnimations_WizzrobeWind_2:: @ 080CDF82
	.include "animations/gSpriteAnimations_WizzrobeWind_2.s"

gSpriteAnimations_WizzrobeWind_3:: @ 080CDF87
	.include "animations/gSpriteAnimations_WizzrobeWind_3.s"

gSpriteAnimations_WizzrobeWind_4:: @ 080CDF8C
	.include "animations/gSpriteAnimations_WizzrobeWind_4.s"

gSpriteAnimations_WizzrobeWind_5:: @ 080CDF91
	.include "animations/gSpriteAnimations_WizzrobeWind_5.s"

gSpriteAnimations_WizzrobeWind_6:: @ 080CDF96
	.include "animations/gSpriteAnimations_WizzrobeWind_6.s"

gSpriteAnimations_WizzrobeWind_7:: @ 080CDF9B
	.include "animations/gSpriteAnimations_WizzrobeWind_7.s"

gSpriteAnimations_WizzrobeWind:: @ 080CDFA0
	.4byte gSpriteAnimations_WizzrobeWind_0
	.4byte gSpriteAnimations_WizzrobeWind_1
	.4byte gSpriteAnimations_WizzrobeWind_2
	.4byte gSpriteAnimations_WizzrobeWind_3
	.4byte gSpriteAnimations_WizzrobeWind_4
	.4byte gSpriteAnimations_WizzrobeWind_5
	.4byte gSpriteAnimations_WizzrobeWind_6
	.4byte gSpriteAnimations_WizzrobeWind_7
	.4byte 00000000
