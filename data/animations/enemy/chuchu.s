	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080CA2B4:: @ 080CA2B4
	.incbin "chuchu/gUnk_080CA2B4.bin"

gSpriteAnimations_Chuchu_0:: @ 080CA2BE
	.include "animations/gSpriteAnimations_Chuchu_0.s"

gSpriteAnimations_Chuchu_1:: @ 080CA2EA
	.include "animations/gSpriteAnimations_Chuchu_1.s"

gSpriteAnimations_Chuchu_2:: @ 080CA2FB
	.include "animations/gSpriteAnimations_Chuchu_2.s"

gSpriteAnimations_Chuchu_3:: @ 080CA33C
	.include "animations/gSpriteAnimations_Chuchu_3.s"

gSpriteAnimations_Chuchu_4:: @ 080CA358
	.include "animations/gSpriteAnimations_Chuchu_4.s"

gSpriteAnimations_Chuchu_5:: @ 080CA364
	.include "animations/gSpriteAnimations_Chuchu_5.s"

gSpriteAnimations_Chuchu_6:: @ 080CA370
	.include "animations/gSpriteAnimations_Chuchu_6.s"

gSpriteAnimations_Chuchu_7:: @ 080CA3B1
	.include "animations/gSpriteAnimations_Chuchu_7.s"

gSpriteAnimations_Chuchu_8:: @ 080CA3C5
	.include "animations/gSpriteAnimations_Chuchu_8.s"

gSpriteAnimations_Chuchu_9:: @ 080CA42E
	.include "animations/gSpriteAnimations_Chuchu_9.s"

gSpriteAnimations_Chuchu:: @ 080CA470
	.4byte gSpriteAnimations_Chuchu_0
	.4byte gSpriteAnimations_Chuchu_1
	.4byte gSpriteAnimations_Chuchu_2
	.4byte gSpriteAnimations_Chuchu_3
	.4byte gSpriteAnimations_Chuchu_4
	.4byte gSpriteAnimations_Chuchu_5
	.4byte gSpriteAnimations_Chuchu_6
	.4byte gSpriteAnimations_Chuchu_7
	.4byte gSpriteAnimations_Chuchu_8
	.4byte gSpriteAnimations_Chuchu_9
	.4byte 00000000
