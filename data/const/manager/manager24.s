	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08108CDC:: @ 08108CDC
	.4byte sub_0805BF30
	.4byte sub_0805BF78
	.4byte sub_0805BFA4

gUnk_08108CE8:: @ 08108CE8
	.4byte sub_0805C050
	.4byte sub_0805C178
	.4byte sub_0805C294
	.4byte sub_0805C3B4
	.4byte sub_0805C4E0

gUnk_08108CFC:: @ 08108CFC
	.incbin "assets/manager24/gUnk_08108CFC.bin"
