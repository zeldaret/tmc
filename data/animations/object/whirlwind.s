	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08122800:: @ 08122800
	.incbin "whirlwind/gUnk_08122800.bin"

gUnk_08122819:: @ 08122819
	.incbin "whirlwind/gUnk_08122819.bin"

gSpriteAnimations_Whirlwind:: @ 08122834
	.4byte gUnk_08122800
	.4byte gUnk_08122819
