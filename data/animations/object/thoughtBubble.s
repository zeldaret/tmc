	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ThoughtBubble_0:: @ 081225A0
	.include "animations/gSpriteAnimations_ThoughtBubble_0.s"

gSpriteAnimations_ThoughtBubble_1:: @ 081225BC
	.include "animations/gSpriteAnimations_ThoughtBubble_1.s"

gSpriteAnimations_ThoughtBubble_2:: @ 081225D8
	.include "animations/gSpriteAnimations_ThoughtBubble_2.s"

gSpriteAnimations_ThoughtBubble:: @ 081225F4
	.4byte gSpriteAnimations_ThoughtBubble_0
	.4byte gSpriteAnimations_ThoughtBubble_1
	.4byte gSpriteAnimations_ThoughtBubble_2
	.4byte 00000000
