	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_ClothesRack_0:: @ 08114244
	.include "animations/gSpriteAnimations_ClothesRack_0.s"

gSpriteAnimations_ClothesRack_1:: @ 0811425D
	.include "animations/gSpriteAnimations_ClothesRack_1.s"

gSpriteAnimations_ClothesRack_2:: @ 08114276
	.include "animations/gSpriteAnimations_ClothesRack_2.s"

gSpriteAnimations_ClothesRack_3:: @ 0811428F
	.include "animations/gSpriteAnimations_ClothesRack_3.s"

gSpriteAnimations_ClothesRack:: @ 081142A8
	.4byte gSpriteAnimations_ClothesRack_0
	.4byte gSpriteAnimations_ClothesRack_1
	.4byte gSpriteAnimations_ClothesRack_2
	.4byte gSpriteAnimations_ClothesRack_3
	.4byte 00000000
