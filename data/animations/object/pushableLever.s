	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_PushableLever_0:: @ 081234B4
	.include "animations/gSpriteAnimations_PushableLever_0.s"

gSpriteAnimations_PushableLever_1:: @ 081234C9
	.include "animations/gSpriteAnimations_PushableLever_1.s"

gSpriteAnimations_PushableLever:: @ 081234E0
	.4byte gSpriteAnimations_PushableLever_0
	.4byte gSpriteAnimations_PushableLever_1
	.4byte 00000000
