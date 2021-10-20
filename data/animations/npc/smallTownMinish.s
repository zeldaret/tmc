	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081144C8:: @ 081144C8
	.incbin "smallTownMinish/gUnk_081144C8.bin"

gUnk_081144CD:: @ 081144CD
	.incbin "smallTownMinish/gUnk_081144CD.bin"

gUnk_081144D2:: @ 081144D2
	.incbin "smallTownMinish/gUnk_081144D2.bin"

gUnk_081144D7:: @ 081144D7
	.incbin "smallTownMinish/gUnk_081144D7.bin"

gSpriteAnimations_SmallTownMinish:: @ 081144DC
	.4byte gUnk_081144C8
	.4byte gUnk_081144CD
	.4byte gUnk_081144D2
	.4byte gUnk_081144D7
	.4byte 00000000
