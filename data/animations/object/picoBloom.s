	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_PicoBloom_0:: @ 0812357A
	.include "animations/gSpriteAnimations_PicoBloom_0.s"

gSpriteAnimations_PicoBloom_3:: @ 08123593
	.include "animations/gSpriteAnimations_PicoBloom_3.s"

gSpriteAnimations_PicoBloom_2:: @ 081235AC
	.include "animations/gSpriteAnimations_PicoBloom_2.s"

gSpriteAnimations_PicoBloom_5:: @ 081235B1
	.include "animations/gSpriteAnimations_PicoBloom_5.s"

gSpriteAnimations_PicoBloom_1:: @ 081235B6
	.include "animations/gSpriteAnimations_PicoBloom_1.s"

gSpriteAnimations_PicoBloom_4:: @ 081235EB
	.include "animations/gSpriteAnimations_PicoBloom_4.s"

gSpriteAnimations_PicoBloom:: @ 08123620
	.4byte gSpriteAnimations_PicoBloom_0
	.4byte gSpriteAnimations_PicoBloom_1
	.4byte gSpriteAnimations_PicoBloom_2
	.4byte gSpriteAnimations_PicoBloom_3
	.4byte gSpriteAnimations_PicoBloom_4
	.4byte gSpriteAnimations_PicoBloom_5
	.4byte 00000000

gUnk_0812363C:: @ 0812363C
	.incbin "picoBloom/gUnk_0812363C.bin"
	.4byte gUnk_0812363C
	.4byte 00000000
