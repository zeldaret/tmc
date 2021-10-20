	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110120:: @ 08110120
	.incbin "milkCart/gUnk_08110120.bin"

gUnk_08110125:: @ 08110125
	.incbin "milkCart/gUnk_08110125.bin"

gSpriteAnimations_MilkCart:: @ 08110138
	.4byte gUnk_08110120
	.4byte gUnk_08110120
	.4byte gUnk_08110120
	.4byte gUnk_08110120
	.4byte gUnk_08110125
	.4byte gUnk_08110125
	.4byte gUnk_08110125
	.4byte gUnk_08110125
	.4byte 00000000
