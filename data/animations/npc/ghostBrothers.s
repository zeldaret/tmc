	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110300:: @ 08110300
	.incbin "ghostBrothers/gUnk_08110300.bin"

gUnk_08110311:: @ 08110311
	.incbin "ghostBrothers/gUnk_08110311.bin"

gUnk_08110322:: @ 08110322
	.incbin "ghostBrothers/gUnk_08110322.bin"

gUnk_08110333:: @ 08110333
	.incbin "ghostBrothers/gUnk_08110333.bin"

gSpriteAnimations_GhostBrothers:: @ 0811033C
	.4byte gUnk_08110300
	.4byte gUnk_08110322
	.4byte gUnk_08110300
	.4byte gUnk_08110311
	.4byte gUnk_08110333
	.4byte 00000000
