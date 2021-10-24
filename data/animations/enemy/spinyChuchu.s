	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_SpinyChuchu_0:: @ 080CBA64
	.include "animations/gSpriteAnimations_SpinyChuchu_0.s"

gSpriteAnimations_SpinyChuchu_1:: @ 080CBAA5
	.include "animations/gSpriteAnimations_SpinyChuchu_1.s"

gSpriteAnimations_SpinyChuchu_2:: @ 080CBAE5
	.include "animations/gSpriteAnimations_SpinyChuchu_2.s"

gSpriteAnimations_SpinyChuchu_3:: @ 080CBAFD
	.include "animations/gSpriteAnimations_SpinyChuchu_3.s"

gSpriteAnimations_SpinyChuchu_4:: @ 080CBB21
	.include "animations/gSpriteAnimations_SpinyChuchu_4.s"

gSpriteAnimations_SpinyChuchu_5:: @ 080CBB32
	.include "animations/gSpriteAnimations_SpinyChuchu_5.s"

gSpriteAnimations_SpinyChuchu_6:: @ 080CBB3F
	.include "animations/gSpriteAnimations_SpinyChuchu_6.s"

gSpriteAnimations_SpinyChuchu:: @ 080CBB44
	.4byte gSpriteAnimations_SpinyChuchu_0
	.4byte gSpriteAnimations_SpinyChuchu_1
	.4byte gSpriteAnimations_SpinyChuchu_2
	.4byte gSpriteAnimations_SpinyChuchu_3
	.4byte gSpriteAnimations_SpinyChuchu_4
	.4byte gSpriteAnimations_SpinyChuchu_5
	.4byte gSpriteAnimations_SpinyChuchu_6
	.4byte 00000000
