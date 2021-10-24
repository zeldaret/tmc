	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Enemy5F_0:: @ 080D1DA0
	.include "animations/gSpriteAnimations_Enemy5F_0.s"

gSpriteAnimations_Enemy5F_1:: @ 080D1DC8
	.include "animations/gSpriteAnimations_Enemy5F_1.s"

gSpriteAnimations_Enemy5F_2:: @ 080D1DCC
	.include "animations/gSpriteAnimations_Enemy5F_2.s"

gSpriteAnimations_Enemy5F_4:: @ 080D1DD0
	.include "animations/gSpriteAnimations_Enemy5F_4.s"

gSpriteAnimations_Enemy5F_3:: @ 080D1DDC
	.include "animations/gSpriteAnimations_Enemy5F_3.s"

gSpriteAnimations_Enemy5F_5:: @ 080D1DE8
	.include "animations/gSpriteAnimations_Enemy5F_5.s"

gSpriteAnimations_Enemy5F_6:: @ 080D1E05
	.include "animations/gSpriteAnimations_Enemy5F_6.s"

gSpriteAnimations_Enemy5F_7:: @ 080D1E21
	.include "animations/gSpriteAnimations_Enemy5F_7.s"

gSpriteAnimations_Enemy5F_8:: @ 080D1E32
	.include "animations/gSpriteAnimations_Enemy5F_8.s"

gSpriteAnimations_Enemy5F:: @ 080D1E44
	.4byte gSpriteAnimations_Enemy5F_0
	.4byte gSpriteAnimations_Enemy5F_1
	.4byte gSpriteAnimations_Enemy5F_2
	.4byte gSpriteAnimations_Enemy5F_3
	.4byte gSpriteAnimations_Enemy5F_4
	.4byte gSpriteAnimations_Enemy5F_5
	.4byte gSpriteAnimations_Enemy5F_6
	.4byte gSpriteAnimations_Enemy5F_7
	.4byte gSpriteAnimations_Enemy5F_8
	.4byte 00000000
