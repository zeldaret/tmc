	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08121383:: @ 08121383
	.incbin "warpPoint/gUnk_08121383.bin"

gUnk_08121394:: @ 08121394
	.incbin "warpPoint/gUnk_08121394.bin"

gSpriteAnimations_WarpPoint:: @ 081213B8
	.4byte gUnk_08121383
	.4byte gUnk_08121394
	.4byte 00000000
