	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_BigPushableLever_0:: @ 081236FC
	.include "animations/gSpriteAnimations_BigPushableLever_0.s"

gSpriteAnimations_BigPushableLever_1:: @ 08123711
	.include "animations/gSpriteAnimations_BigPushableLever_1.s"

gSpriteAnimations_BigPushableLever:: @ 08123728
	.4byte gSpriteAnimations_BigPushableLever_0
	.4byte gSpriteAnimations_BigPushableLever_1
	.4byte 00000000
