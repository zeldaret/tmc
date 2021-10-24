	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_JarPortal_0:: @ 0812149C
	.include "animations/gSpriteAnimations_JarPortal_0.s"

gSpriteAnimations_JarPortal_1:: @ 081214A0
	.include "animations/gSpriteAnimations_JarPortal_1.s"

gSpriteAnimations_JarPortal_2:: @ 081214A4
	.include "animations/gSpriteAnimations_JarPortal_2.s"

gSpriteAnimations_JarPortal_3:: @ 081214B5
	.include "animations/gSpriteAnimations_JarPortal_3.s"

gSpriteAnimations_JarPortal:: @ 081214C8
	.4byte gSpriteAnimations_JarPortal_0
	.4byte gSpriteAnimations_JarPortal_1
	.4byte gSpriteAnimations_JarPortal_2
	.4byte gSpriteAnimations_JarPortal_3
