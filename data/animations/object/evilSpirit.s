	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
gSpriteAnimations_EvilSpirit_0:: @ 08120682
	.include "animations/gSpriteAnimations_EvilSpirit_0.s"

gSpriteAnimations_EvilSpirit_1:: @ 08120686
	.include "animations/gSpriteAnimations_EvilSpirit_1.s"

gSpriteAnimations_EvilSpirit_2:: @ 0812068A
	.include "animations/gSpriteAnimations_EvilSpirit_2.s"

gSpriteAnimations_EvilSpirit_3:: @ 0812068E
	.include "animations/gSpriteAnimations_EvilSpirit_3.s"

gSpriteAnimations_EvilSpirit_4:: @ 08120692
	.include "animations/gSpriteAnimations_EvilSpirit_4.s"

gSpriteAnimations_EvilSpirit:: @ 08120698
	.4byte gSpriteAnimations_EvilSpirit_0
	.4byte gSpriteAnimations_EvilSpirit_1
	.4byte gSpriteAnimations_EvilSpirit_2
	.4byte gSpriteAnimations_EvilSpirit_3
	.4byte gSpriteAnimations_EvilSpirit_4
