	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_PushableRock_0:: @ 08121090
	.include "animations/gSpriteAnimations_PushableRock_0.s"

gSpriteAnimations_PushableRock_1:: @ 08121094
	.include "animations/gSpriteAnimations_PushableRock_1.s"

gSpriteAnimations_PushableRock_2:: @ 081210D0
	.include "animations/gSpriteAnimations_PushableRock_2.s"

gSpriteAnimations_PushableRock_3:: @ 0812110C
	.include "animations/gSpriteAnimations_PushableRock_3.s"

gSpriteAnimations_PushableRock_5:: @ 08121148
	.include "animations/gSpriteAnimations_PushableRock_5.s"

gSpriteAnimations_PushableRock_6:: @ 08121154
	.include "animations/gSpriteAnimations_PushableRock_6.s"

gSpriteAnimations_PushableRock:: @ 08121158
	.4byte gSpriteAnimations_PushableRock_0
	.4byte gSpriteAnimations_PushableRock_1
	.4byte gSpriteAnimations_PushableRock_2
	.4byte gSpriteAnimations_PushableRock_3
	.4byte gSpriteAnimations_PushableRock_2
	.4byte gSpriteAnimations_PushableRock_5
	.4byte gSpriteAnimations_PushableRock_6
	.4byte 00000000
