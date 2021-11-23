	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_WaterDrop_0:: @ 080CD044
	.include "animations/gSpriteAnimations_WaterDrop_0.s"

gSpriteAnimations_WaterDrop_1:: @ 080CD069
	.include "animations/gSpriteAnimations_WaterDrop_1.s"

gSpriteAnimations_WaterDrop:: @ 080CD070
	.4byte gSpriteAnimations_WaterDrop_0
	.4byte gSpriteAnimations_WaterDrop_1
	.4byte 00000000
