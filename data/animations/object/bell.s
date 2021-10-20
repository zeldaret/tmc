	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812338C:: @ 0812338C
	.incbin "bell/gUnk_0812338C.bin"

gSpriteAnimations_Bell:: @ 081233B0
	.4byte gUnk_0812338C
	.incbin "bell/gSpriteAnimations_Bell.bin"
