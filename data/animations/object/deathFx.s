	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_DeathFx_1_0:: @ 0811ECD4
	.include "animations/gSpriteAnimations_DeathFx_1_0.s"

gSpriteAnimations_DeathFx_1_2:: @ 0811ED4D
	.include "animations/gSpriteAnimations_DeathFx_1_2.s"

gSpriteAnimations_DeathFx_1_1:: @ 0811ED86
	.include "animations/gSpriteAnimations_DeathFx_1_1.s"

gSpriteAnimations_DeathFx_0_0:: @ 0811EDB7
	.include "animations/gSpriteAnimations_DeathFx_0_0.s"

gSpriteAnimations_DeathFx_1:: @ 0811EE10
	.4byte gSpriteAnimations_DeathFx_1_0
	.4byte gSpriteAnimations_DeathFx_1_1
	.4byte gSpriteAnimations_DeathFx_1_2
	.4byte 00000000

gSpriteAnimations_DeathFx_0:: @ 0811EE20
	.4byte gSpriteAnimations_DeathFx_0_0
	.4byte 00000000
