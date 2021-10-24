	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Postman_0:: @ 0810AA90
	.include "animations/gSpriteAnimations_Postman_0.s"

gSpriteAnimations_Postman_1:: @ 0810AAB9
	.include "animations/gSpriteAnimations_Postman_1.s"

gSpriteAnimations_Postman_2:: @ 0810AAE2
	.include "animations/gSpriteAnimations_Postman_2.s"

gSpriteAnimations_Postman_3:: @ 0810AB0B
	.include "animations/gSpriteAnimations_Postman_3.s"

gSpriteAnimations_Postman_4:: @ 0810AB34
	.include "animations/gSpriteAnimations_Postman_4.s"

gSpriteAnimations_Postman_5:: @ 0810AB65
	.include "animations/gSpriteAnimations_Postman_5.s"

gSpriteAnimations_Postman_6:: @ 0810AB96
	.include "animations/gSpriteAnimations_Postman_6.s"

gSpriteAnimations_Postman_7:: @ 0810ABC7
	.include "animations/gSpriteAnimations_Postman_7.s"

gSpriteAnimations_Postman:: @ 0810ABF8
	.4byte gSpriteAnimations_Postman_0
	.4byte gSpriteAnimations_Postman_1
	.4byte gSpriteAnimations_Postman_2
	.4byte gSpriteAnimations_Postman_3
	.4byte gSpriteAnimations_Postman_4
	.4byte gSpriteAnimations_Postman_5
	.4byte gSpriteAnimations_Postman_6
	.4byte gSpriteAnimations_Postman_7
	.4byte 00000000
