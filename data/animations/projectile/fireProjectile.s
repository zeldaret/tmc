	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812983C:: @ 0812983C
	.incbin "projectile8/gUnk_0812983C.bin"

gUnk_08129845:: @ 08129845
	.incbin "projectile8/gUnk_08129845.bin"

gUnk_0812984E:: @ 0812984E
	.incbin "projectile8/gUnk_0812984E.bin"

gUnk_08129857:: @ 08129857
	.incbin "projectile8/gUnk_08129857.bin"

gUnk_08129860:: @ 08129860
	.incbin "projectile8/gUnk_08129860.bin"

gUnk_0812986D:: @ 0812986D
	.incbin "projectile8/gUnk_0812986D.bin"

gUnk_0812987A:: @ 0812987A
	.incbin "projectile8/gUnk_0812987A.bin"

gUnk_08129887:: @ 08129887
	.incbin "projectile8/gUnk_08129887.bin"

gSpriteAnimations_FireProjectile:: @ 08129894
	.4byte gUnk_0812983C
	.4byte gUnk_08129845
	.4byte gUnk_0812984E
	.4byte gUnk_08129857
	.4byte gUnk_08129860
	.4byte gUnk_0812986D
	.4byte gUnk_0812987A
	.4byte gUnk_08129887
	.4byte 00000000
