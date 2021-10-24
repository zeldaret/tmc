	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Brocco_0:: @ 0810CAFC
	.include "animations/gSpriteAnimations_Brocco_0.s"

gSpriteAnimations_Brocco_4:: @ 0810CB45
	.include "animations/gSpriteAnimations_Brocco_4.s"

gSpriteAnimations_Brocco_5:: @ 0810CB4A
	.include "animations/gSpriteAnimations_Brocco_5.s"

gSpriteAnimations_Brocco_7:: @ 0810CB4F
	.include "animations/gSpriteAnimations_Brocco_7.s"

gSpriteAnimations_Brocco:: @ 0810CB54
	.4byte gSpriteAnimations_Brocco_0
	.4byte gSpriteAnimations_Brocco_0
	.4byte gSpriteAnimations_Brocco_0
	.4byte gSpriteAnimations_Brocco_0
	.4byte gSpriteAnimations_Brocco_4
	.4byte gSpriteAnimations_Brocco_5
	.4byte gSpriteAnimations_Brocco_4
	.4byte gSpriteAnimations_Brocco_7
	.4byte 00000000
