	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A3FC:: @ 0812A3FC
	.incbin "projectile16/gUnk_0812A3FC.bin"

gUnk_0812A410:: @ 0812A410
	.4byte gUnk_0812A3FC
	.4byte 00000000
