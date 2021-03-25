	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129718:: @ 08129718
	.4byte sub_080A86D8
	.4byte sub_080A86F0
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity

gUnk_0812972C:: @ 0812972C
	.4byte sub_080A8770
	.4byte sub_080A878C

gUnk_08129734:: @ 08129734
	.incbin "baserom.gba", 0x129734, 0x000000C
