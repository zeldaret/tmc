	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_08129A28:: @ 08129A28
	.incbin "projectileD/gUnk_08129A28.bin"

gUnk_08129A2D:: @ 08129A2D
	.incbin "projectileD/gUnk_08129A2D.bin"

gUnk_08129A32:: @ 08129A32
	.incbin "projectileD/gUnk_08129A32.bin"

gUnk_08129A43:: @ 08129A43
	.incbin "projectileD/gUnk_08129A43.bin"

gSpriteAnimations_ArrowProjectile:: @ 08129A54
	.4byte gUnk_08129A28
	.4byte gUnk_08129A2D
	.4byte gUnk_08129A32
	.4byte gUnk_08129A43
