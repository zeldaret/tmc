	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080D0688:: @ 080D0688
	.incbin "assets/vaatiProjectile/gUnk_080D0688.bin"

gUnk_080D06A1:: @ 080D06A1
	.incbin "assets/vaatiProjectile/gUnk_080D06A1.bin"

gUnk_080D06B2:: @ 080D06B2
	.incbin "assets/vaatiProjectile/gUnk_080D06B2.bin"

gUnk_080D06D0:: @ 080D06D0
	.4byte gUnk_080D0688
	.4byte gUnk_080D06A1
	.4byte gUnk_080D06B2
	.4byte 00000000
