	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gSpriteAnimations_SmallTownMinish_0:: @ 081144C8
	.include "animations/gSpriteAnimations_SmallTownMinish_0.s"

gSpriteAnimations_SmallTownMinish_1:: @ 081144CD
	.include "animations/gSpriteAnimations_SmallTownMinish_1.s"

gSpriteAnimations_SmallTownMinish_2:: @ 081144D2
	.include "animations/gSpriteAnimations_SmallTownMinish_2.s"

gSpriteAnimations_SmallTownMinish_3:: @ 081144D7
	.include "animations/gSpriteAnimations_SmallTownMinish_3.s"

gSpriteAnimations_SmallTownMinish:: @ 081144DC
	.4byte gSpriteAnimations_SmallTownMinish_0
	.4byte gSpriteAnimations_SmallTownMinish_1
	.4byte gSpriteAnimations_SmallTownMinish_2
	.4byte gSpriteAnimations_SmallTownMinish_3
	.4byte 00000000
