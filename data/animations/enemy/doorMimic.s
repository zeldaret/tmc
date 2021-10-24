	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gSpriteAnimations_DoorMimic_0:: @ 080CB8B4
	.include "animations/gSpriteAnimations_DoorMimic_0.s"

gSpriteAnimations_DoorMimic_1:: @ 080CB8B9
	.include "animations/gSpriteAnimations_DoorMimic_1.s"

gSpriteAnimations_DoorMimic_4:: @ 080CB8BE
	.include "animations/gSpriteAnimations_DoorMimic_4.s"

gSpriteAnimations_DoorMimic_5:: @ 080CB8D7
	.include "animations/gSpriteAnimations_DoorMimic_5.s"

gSpriteAnimations_DoorMimic_8:: @ 080CB8F0
	.include "animations/gSpriteAnimations_DoorMimic_8.s"

gSpriteAnimations_DoorMimic_9:: @ 080CB901
	.include "animations/gSpriteAnimations_DoorMimic_9.s"

gSpriteAnimations_DoorMimic:: @ 080CB914
	.4byte gSpriteAnimations_DoorMimic_0
	.4byte gSpriteAnimations_DoorMimic_1
	.4byte gSpriteAnimations_DoorMimic_1
	.4byte gSpriteAnimations_DoorMimic_0
	.4byte gSpriteAnimations_DoorMimic_4
	.4byte gSpriteAnimations_DoorMimic_5
	.4byte gSpriteAnimations_DoorMimic_5
	.4byte gSpriteAnimations_DoorMimic_4
	.4byte gSpriteAnimations_DoorMimic_8
	.4byte gSpriteAnimations_DoorMimic_9
	.4byte gSpriteAnimations_DoorMimic_9
	.4byte gSpriteAnimations_DoorMimic_8
	.4byte 00000000
