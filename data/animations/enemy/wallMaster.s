	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD0B8:: @ 080CD0B8
	.incbin "wallMaster/gUnk_080CD0B8.bin"

gUnk_080CD0C5:: @ 080CD0C5
	.incbin "wallMaster/gUnk_080CD0C5.bin"

gUnk_080CD0DA:: @ 080CD0DA
	.incbin "wallMaster/gUnk_080CD0DA.bin"

gSpriteAnimations_WallMaster:: @ 080CD0E0
	.4byte gUnk_080CD0B8
	.4byte gUnk_080CD0C5
	.4byte gUnk_080CD0DA
	.4byte 00000000
