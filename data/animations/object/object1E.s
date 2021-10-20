	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081208C8:: @ 081208C8
	.incbin "object1E/gUnk_081208C8.bin"

gUnk_081208FC:: @ 081208FC
	.incbin "object1E/gUnk_081208FC.bin"

gUnk_08120930:: @ 08120930
	.incbin "object1E/gUnk_08120930.bin"

gUnk_08120964:: @ 08120964
	.incbin "object1E/gUnk_08120964.bin"

gUnk_08120990:: @ 08120990
	.incbin "object1E/gUnk_08120990.bin"

gUnk_081209BC:: @ 081209BC
	.incbin "object1E/gUnk_081209BC.bin"

gSpriteAnimations_Object1E:: @ 081209E8
	.4byte gUnk_08120930
	.4byte gUnk_081208FC
	.4byte gUnk_081208C8
	.4byte gUnk_081208FC
	.4byte gUnk_081209BC
	.4byte gUnk_08120990
	.4byte gUnk_08120964
	.4byte gUnk_08120990
	.4byte 00000000

