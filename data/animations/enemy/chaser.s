	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata

gUnk_080CD2A8:: @ 080CD2A8
	.incbin "chaser/gUnk_080CD2A8.bin"

gUnk_080CD2AC:: @ 080CD2AC
	.incbin "chaser/gUnk_080CD2AC.bin"

gUnk_080CD2BD:: @ 080CD2BD
	.incbin "chaser/gUnk_080CD2BD.bin"

gSpriteAnimations_Chaser:: @ 080CD2C8
	.4byte gUnk_080CD2A8
	.4byte gUnk_080CD2AC
	.4byte gUnk_080CD2BD
	.4byte 00000000
