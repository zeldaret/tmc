	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ObjectAF_0:: @ 081248D0
	.include "animations/gSpriteAnimations_ObjectAF_0.s"

gSpriteAnimations_ObjectAF_1:: @ 081248E1
	.include "animations/gSpriteAnimations_ObjectAF_1.s"

gSpriteAnimations_ObjectAF_2:: @ 081248F2
	.include "animations/gSpriteAnimations_ObjectAF_2.s"

gSpriteAnimations_ObjectAF_3:: @ 0812490E
	.include "animations/gSpriteAnimations_ObjectAF_3.s"

gSpriteAnimations_ObjectAF:: @ 08124928
	.4byte gSpriteAnimations_ObjectAF_0
	.4byte gSpriteAnimations_ObjectAF_1
	.4byte gSpriteAnimations_ObjectAF_2
	.4byte gSpriteAnimations_ObjectAF_3
	.4byte 00000000
