	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081134D4:: @ 081134D4
	.incbin "kingGustaf/gUnk_081134D4.bin"

gSpriteAnimations_KingGustaf:: @ 08113508
	.4byte gUnk_081134D4
	.4byte gUnk_081134D4
	.4byte gUnk_081134D4
	.4byte gUnk_081134D4
	.4byte gUnk_081134D4
	.4byte gUnk_081134D4
	.4byte gUnk_081134D4
	.4byte gUnk_081134D4
	.4byte 00000000
