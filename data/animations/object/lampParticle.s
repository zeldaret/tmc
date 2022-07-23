	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_LampParticle_0:: @ 08121BE0
	.include "animations/gSpriteAnimations_LampParticle_0.s"

gSpriteAnimations_LampParticle_1:: @ 08121BF8
	.include "animations/gSpriteAnimations_LampParticle_1.s"

gSpriteAnimations_LampParticle:: @ 08121C34
	.4byte gSpriteAnimations_LampParticle_0
	.4byte gSpriteAnimations_LampParticle_1
	.4byte 00000000
