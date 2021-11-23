	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080CE124:: @ 080CE124
	.4byte sub_080301BC
	.4byte sub_080301D4
	.4byte sub_08001324
	.4byte sub_0804A7D4
	.4byte sub_08030240
	.4byte nullsub_17

gUnk_080CE13C:: @ 080CE13C
	.4byte sub_0803026C
	.4byte sub_0803030C
	.4byte sub_08030338
	.4byte sub_08030430
	.4byte sub_08030474
	.4byte sub_080304BC
	.4byte sub_080304F4
	.4byte sub_08030524
	.4byte sub_08030554

gUnk_080CE160:: @ 080CE160
	.incbin "armos/gUnk_080CE160.bin"
