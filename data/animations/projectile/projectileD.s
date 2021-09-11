	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_08129A28:: @ 08129A28
	.incbin "assets/projectileD/gUnk_08129A28.bin"

gUnk_08129A2D:: @ 08129A2D
	.incbin "assets/projectileD/gUnk_08129A2D.bin"

gUnk_08129A32:: @ 08129A32
	.incbin "assets/projectileD/gUnk_08129A32.bin"

gUnk_08129A43:: @ 08129A43
	.incbin "assets/projectileD/gUnk_08129A43.bin"

gUnk_08129A54:: @ 08129A54
	.4byte gUnk_08129A28
	.4byte gUnk_08129A2D
	.4byte gUnk_08129A32
	.4byte gUnk_08129A43
