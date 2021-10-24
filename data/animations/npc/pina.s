	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Pina_0:: @ 0810CE54
	.include "animations/gSpriteAnimations_Pina_0.s"

gSpriteAnimations_Pina_8:: @ 0810CEA1
	.include "animations/gSpriteAnimations_Pina_8.s"

gSpriteAnimations_Pina_9:: @ 0810CEEE
	.include "animations/gSpriteAnimations_Pina_9.s"

gSpriteAnimations_Pina_4:: @ 0810CF0F
	.include "animations/gSpriteAnimations_Pina_4.s"

gSpriteAnimations_Pina_5:: @ 0810CF14
	.include "animations/gSpriteAnimations_Pina_5.s"

gSpriteAnimations_Pina_7:: @ 0810CF19
	.include "animations/gSpriteAnimations_Pina_7.s"

gSpriteAnimations_Pina:: @ 0810CF20
	.4byte gSpriteAnimations_Pina_0
	.4byte gSpriteAnimations_Pina_0
	.4byte gSpriteAnimations_Pina_0
	.4byte gSpriteAnimations_Pina_0
	.4byte gSpriteAnimations_Pina_4
	.4byte gSpriteAnimations_Pina_5
	.4byte gSpriteAnimations_Pina_4
	.4byte gSpriteAnimations_Pina_7
	.4byte gSpriteAnimations_Pina_8
	.4byte gSpriteAnimations_Pina_9
	.4byte 00000000
