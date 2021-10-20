	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_0812376A:: @ 0812376A
	.incbin "smallIceBlock/gUnk_0812376A.bin"

gUnk_0812376E:: @ 0812376E
	.incbin "smallIceBlock/gUnk_0812376E.bin"

gUnk_08123772:: @ 08123772
	.incbin "smallIceBlock/gUnk_08123772.bin"

gUnk_08123776:: @ 08123776
	.incbin "smallIceBlock/gUnk_08123776.bin"

gSpriteAnimations_SmallIceBlock:: @ 0812378C
	.4byte gUnk_0812376A
	.4byte gUnk_0812376E
	.4byte gUnk_08123772
	.4byte gUnk_08123776
	.4byte 00000000
