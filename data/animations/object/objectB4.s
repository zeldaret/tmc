	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ObjectB4_0:: @ 08124B38
	.include "animations/gSpriteAnimations_ObjectB4_0.s"

gSpriteAnimations_ObjectB4_1:: @ 08124BA9
	.include "animations/gSpriteAnimations_ObjectB4_1.s"

gSpriteAnimations_ObjectB4:: @ 08124BFC
	.4byte gSpriteAnimations_ObjectB4_0
	.4byte gSpriteAnimations_ObjectB4_1
	.4byte 00000000
