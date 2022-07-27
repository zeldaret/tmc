	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_Vaati2Particle_0:: @ 081242E8
	.include "animations/gSpriteAnimations_Vaati2Particle_0.s"

gSpriteAnimations_Vaati2Particle_1:: @ 08124320
	.include "animations/gSpriteAnimations_Vaati2Particle_1.s"

gSpriteAnimations_Vaati2Particle:: @ 08124348
	.4byte gSpriteAnimations_Vaati2Particle_0
	.4byte gSpriteAnimations_Vaati2Particle_1
	.4byte 00000000
