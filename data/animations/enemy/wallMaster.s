	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_WallMaster_0:: @ 080CD0B8
	.include "animations/gSpriteAnimations_WallMaster_0.s"

gSpriteAnimations_WallMaster_1:: @ 080CD0C5
	.include "animations/gSpriteAnimations_WallMaster_1.s"

gSpriteAnimations_WallMaster_2:: @ 080CD0DA
	.include "animations/gSpriteAnimations_WallMaster_2.s"

gSpriteAnimations_WallMaster:: @ 080CD0E0
	.4byte gSpriteAnimations_WallMaster_0
	.4byte gSpriteAnimations_WallMaster_1
	.4byte gSpriteAnimations_WallMaster_2
	.4byte 00000000
