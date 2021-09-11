	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812A860:: @ 0812A860
	.incbin "projectile20/gUnk_0812A860.bin"

gUnk_0812A871:: @ 0812A871
	.incbin "projectile20/gUnk_0812A871.bin"

gUnk_0812A8CA:: @ 0812A8CA
	.incbin "projectile20/gUnk_0812A8CA.bin"

gUnk_0812A92B:: @ 0812A92B
	.incbin "projectile20/gUnk_0812A92B.bin"

gUnk_0812A940:: @ 0812A940
	.4byte gUnk_0812A860
	.4byte gUnk_0812A871
	.4byte gUnk_0812A8CA
	.4byte gUnk_0812A92B
	.4byte 00000000
