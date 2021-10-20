	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08114244:: @ 08114244
	.incbin "clothesRack/gUnk_08114244.bin"

gUnk_0811425D:: @ 0811425D
	.incbin "clothesRack/gUnk_0811425D.bin"

gUnk_08114276:: @ 08114276
	.incbin "clothesRack/gUnk_08114276.bin"

gUnk_0811428F:: @ 0811428F
	.incbin "clothesRack/gUnk_0811428F.bin"

gSpriteAnimations_ClothesRack:: @ 081142A8
	.4byte gUnk_08114244
	.4byte gUnk_0811425D
	.4byte gUnk_08114276
	.4byte gUnk_0811428F
	.4byte 00000000
