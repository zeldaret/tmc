	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_SpinyBeetle_0:: @ 080CEC24
	.include "animations/gSpriteAnimations_SpinyBeetle_0.s"

gSpriteAnimations_SpinyBeetle_1:: @ 080CEC29
	.include "animations/gSpriteAnimations_SpinyBeetle_1.s"

gSpriteAnimations_SpinyBeetle_2:: @ 080CEC42
	.include "animations/gSpriteAnimations_SpinyBeetle_2.s"

gSpriteAnimations_SpinyBeetle_3:: @ 080CEC4B
	.include "animations/gSpriteAnimations_SpinyBeetle_3.s"

gSpriteAnimations_SpinyBeetle_4:: @ 080CEC5C
	.include "animations/gSpriteAnimations_SpinyBeetle_4.s"

gSpriteAnimations_SpinyBeetle:: @ 080CEC70
	.4byte gSpriteAnimations_SpinyBeetle_0
	.4byte gSpriteAnimations_SpinyBeetle_1
	.4byte gSpriteAnimations_SpinyBeetle_2
	.4byte gSpriteAnimations_SpinyBeetle_3
	.4byte gSpriteAnimations_SpinyBeetle_4
	.4byte 00000000
