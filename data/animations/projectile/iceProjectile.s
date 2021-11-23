	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081298C8:: @ 081298C8
	.incbin "projectile9/gUnk_081298C8.bin"

gUnk_081298D1:: @ 081298D1
	.incbin "projectile9/gUnk_081298D1.bin"

gUnk_081298DA:: @ 081298DA
	.incbin "projectile9/gUnk_081298DA.bin"

gUnk_081298E3:: @ 081298E3
	.incbin "projectile9/gUnk_081298E3.bin"

gUnk_081298EC:: @ 081298EC
	.incbin "projectile9/gUnk_081298EC.bin"

gUnk_081298FD:: @ 081298FD
	.incbin "projectile9/gUnk_081298FD.bin"

gUnk_0812990E:: @ 0812990E
	.incbin "projectile9/gUnk_0812990E.bin"

gUnk_0812991F:: @ 0812991F
	.incbin "projectile9/gUnk_0812991F.bin"

gSpriteAnimations_IceProjectile:: @ 08129930
	.4byte gUnk_081298C8
	.4byte gUnk_081298D1
	.4byte gUnk_081298DA
	.4byte gUnk_081298E3
	.4byte gUnk_081298EC
	.4byte gUnk_081298FD
	.4byte gUnk_0812990E
	.4byte gUnk_0812991F
	.4byte 00000000
