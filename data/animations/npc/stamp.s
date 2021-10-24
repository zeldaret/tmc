	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Stamp_0:: @ 0810C2F4
	.include "animations/gSpriteAnimations_Stamp_0.s"

gSpriteAnimations_Stamp_4:: @ 0810C325
	.include "animations/gSpriteAnimations_Stamp_4.s"

gSpriteAnimations_Stamp:: @ 0810C32C
	.4byte gSpriteAnimations_Stamp_0
	.4byte gSpriteAnimations_Stamp_0
	.4byte gSpriteAnimations_Stamp_0
	.4byte gSpriteAnimations_Stamp_0
	.4byte gSpriteAnimations_Stamp_4
	.4byte gSpriteAnimations_Stamp_4
	.4byte gSpriteAnimations_Stamp_4
	.4byte gSpriteAnimations_Stamp_4
