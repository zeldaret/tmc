	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_MoleMittsParticle_2:: @ 081208C8
	.include "animations/gSpriteAnimations_MoleMittsParticle_2.s"

gSpriteAnimations_MoleMittsParticle_1:: @ 081208FC
	.include "animations/gSpriteAnimations_MoleMittsParticle_1.s"

gSpriteAnimations_MoleMittsParticle_0:: @ 08120930
	.include "animations/gSpriteAnimations_MoleMittsParticle_0.s"

gSpriteAnimations_MoleMittsParticle_6:: @ 08120964
	.include "animations/gSpriteAnimations_MoleMittsParticle_6.s"

gSpriteAnimations_MoleMittsParticle_5:: @ 08120990
	.include "animations/gSpriteAnimations_MoleMittsParticle_5.s"

gSpriteAnimations_MoleMittsParticle_4:: @ 081209BC
	.include "animations/gSpriteAnimations_MoleMittsParticle_4.s"

gSpriteAnimations_MoleMittsParticle:: @ 081209E8
	.4byte gSpriteAnimations_MoleMittsParticle_0
	.4byte gSpriteAnimations_MoleMittsParticle_1
	.4byte gSpriteAnimations_MoleMittsParticle_2
	.4byte gSpriteAnimations_MoleMittsParticle_1
	.4byte gSpriteAnimations_MoleMittsParticle_4
	.4byte gSpriteAnimations_MoleMittsParticle_5
	.4byte gSpriteAnimations_MoleMittsParticle_6
	.4byte gSpriteAnimations_MoleMittsParticle_5
	.4byte 00000000

