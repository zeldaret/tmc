	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Festari_1:: @ 08109BC8
	.include "animations/gSpriteAnimations_Festari_1.s"

gSpriteAnimations_Festari_0:: @ 08109BCD
	.include "animations/gSpriteAnimations_Festari_0.s"

gSpriteAnimations_Festari_3:: @ 08109BD2
	.include "animations/gSpriteAnimations_Festari_3.s"

gSpriteAnimations_Festari_4:: @ 08109BD7
	.include "animations/gSpriteAnimations_Festari_4.s"

gSpriteAnimations_Festari_7:: @ 08109BE8
	.include "animations/gSpriteAnimations_Festari_7.s"

gSpriteAnimations_Festari_9:: @ 08109BF9
	.include "animations/gSpriteAnimations_Festari_9.s"

gSpriteAnimations_Festari_8:: @ 08109C2E
	.include "animations/gSpriteAnimations_Festari_8.s"

gSpriteAnimations_Festari_10:: @ 08109C4B
	.include "animations/gSpriteAnimations_Festari_10.s"

gSpriteAnimations_Festari_11:: @ 08109C54
	.include "animations/gSpriteAnimations_Festari_11.s"

gSpriteAnimations_Festari_12:: @ 08109C59
	.include "animations/gSpriteAnimations_Festari_12.s"

gSpriteAnimations_Festari:: @ 08109C60
	.4byte gSpriteAnimations_Festari_0
	.4byte gSpriteAnimations_Festari_1
	.4byte gSpriteAnimations_Festari_0
	.4byte gSpriteAnimations_Festari_3
	.4byte gSpriteAnimations_Festari_4
	.4byte gSpriteAnimations_Festari_4
	.4byte gSpriteAnimations_Festari_4
	.4byte gSpriteAnimations_Festari_7
	.4byte gSpriteAnimations_Festari_8
	.4byte gSpriteAnimations_Festari_9
	.4byte gSpriteAnimations_Festari_10
	.4byte gSpriteAnimations_Festari_11
	.4byte gSpriteAnimations_Festari_12
	.4byte 00000000
