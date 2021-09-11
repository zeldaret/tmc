	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A44C:: @ 0812A44C
	.incbin "assets/projectile18/gUnk_0812A44C.bin"

gUnk_0812A46D:: @ 0812A46D
	.incbin "assets/projectile18/gUnk_0812A46D.bin"

gUnk_0812A488:: @ 0812A488
	.4byte gUnk_0812A44C
	.4byte gUnk_0812A46D
	.4byte 00000000
