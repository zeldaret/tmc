	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_BigBarrel_0:: @ 08120C66
	.include "animations/gSpriteAnimations_BigBarrel_0.s"

gSpriteAnimations_BigBarrel_1:: @ 08120C6F
	.include "animations/gSpriteAnimations_BigBarrel_1.s"

gSpriteAnimations_BigBarrel:: @ 08120C78
	.4byte gSpriteAnimations_BigBarrel_0
	.4byte gSpriteAnimations_BigBarrel_1
