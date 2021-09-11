	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129A70:: @ 08129A70
	.incbin "assets/projectileE/gUnk_08129A70.bin"

gUnk_08129A89:: @ 08129A89
	.incbin "assets/projectileE/gUnk_08129A89.bin"

gUnk_08129AB0:: @ 08129AB0
	.4byte gUnk_08129A70
	.4byte gUnk_08129A89
	.4byte 00000000
