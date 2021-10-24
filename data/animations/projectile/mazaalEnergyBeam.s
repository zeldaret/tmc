	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_MazaalEnergyBeam_0:: @ 08129A70
	.include "animations/gSpriteAnimations_MazaalEnergyBeam_0.s"

gSpriteAnimations_MazaalEnergyBeam_1:: @ 08129A89
	.include "animations/gSpriteAnimations_MazaalEnergyBeam_1.s"

gSpriteAnimations_MazaalEnergyBeam:: @ 08129AB0
	.4byte gSpriteAnimations_MazaalEnergyBeam_0
	.4byte gSpriteAnimations_MazaalEnergyBeam_1
	.4byte 00000000
