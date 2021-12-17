	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gSpriteAnimations_PressurePlate_0:: @ 08120BF1
	.include "animations/gSpriteAnimations_PressurePlate_0.s"

gSpriteAnimations_PressurePlate_1:: @ 08120BF5
	.include "animations/gSpriteAnimations_PressurePlate_1.s"

gSpriteAnimations_PressurePlate_2:: @ 08120BF9
	.include "animations/gSpriteAnimations_PressurePlate_2.s"

gSpriteAnimations_PressurePlate_3:: @ 08120BFD
	.include "animations/gSpriteAnimations_PressurePlate_3.s"

gSpriteAnimations_PressurePlate_4:: @ 08120C01
	.include "animations/gSpriteAnimations_PressurePlate_4.s"

gSpriteAnimations_PressurePlate:: @ 08120C08
	.4byte gSpriteAnimations_PressurePlate_0
	.4byte gSpriteAnimations_PressurePlate_1
	.4byte gSpriteAnimations_PressurePlate_2
	.4byte gSpriteAnimations_PressurePlate_3
	.4byte gSpriteAnimations_PressurePlate_4
