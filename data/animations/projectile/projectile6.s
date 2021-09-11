	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129770:: @ 08129770
	.incbin "assets/projectile6/gUnk_08129770.bin"

gUnk_08129775:: @ 08129775
	.incbin "assets/projectile6/gUnk_08129775.bin"

gUnk_08129790:: @ 08129790
	.4byte gUnk_08129770
	.4byte gUnk_08129775
	.4byte 00000000
