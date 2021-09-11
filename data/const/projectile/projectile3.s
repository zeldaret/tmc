	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129650:: @ 08129650
	.4byte sub_080A8314
	.4byte sub_080A832C
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity

gUnk_08129664:: @ 08129664
	.4byte sub_080A83A0
	.4byte sub_080A83B4

gUnk_0812966C:: @ 0812966C
	.incbin "projectile3/gUnk_0812966C.bin"
