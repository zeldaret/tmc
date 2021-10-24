	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Beedle_0:: @ 0810C968
	.include "animations/gSpriteAnimations_Beedle_0.s"

gSpriteAnimations_Beedle_4:: @ 0810C9A5
	.include "animations/gSpriteAnimations_Beedle_4.s"

gSpriteAnimations_Beedle_5:: @ 0810C9AA
	.include "animations/gSpriteAnimations_Beedle_5.s"

gSpriteAnimations_Beedle_7:: @ 0810C9AF
	.include "animations/gSpriteAnimations_Beedle_7.s"

gSpriteAnimations_Beedle_8:: @ 0810C9B4
	.include "animations/gSpriteAnimations_Beedle_8.s"

gSpriteAnimations_Beedle_9:: @ 0810C9F1
	.include "animations/gSpriteAnimations_Beedle_9.s"

gSpriteAnimations_Beedle_11:: @ 0810CA2E
	.include "animations/gSpriteAnimations_Beedle_11.s"

gSpriteAnimations_Beedle:: @ 0810CA6C
	.4byte gSpriteAnimations_Beedle_0
	.4byte gSpriteAnimations_Beedle_0
	.4byte gSpriteAnimations_Beedle_0
	.4byte gSpriteAnimations_Beedle_0
	.4byte gSpriteAnimations_Beedle_4
	.4byte gSpriteAnimations_Beedle_5
	.4byte gSpriteAnimations_Beedle_4
	.4byte gSpriteAnimations_Beedle_7
	.4byte gSpriteAnimations_Beedle_8
	.4byte gSpriteAnimations_Beedle_9
	.4byte gSpriteAnimations_Beedle_8
	.4byte gSpriteAnimations_Beedle_11
	.4byte 00000000
