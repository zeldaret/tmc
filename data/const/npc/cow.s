	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08111914:: @ 08111914
	.4byte sub_08068FC0

gUnk_08111918:: @ 08111918
	.4byte sub_08069018
	.4byte sub_08069068

gUnk_08111920:: @ 08111920
	.4byte sub_08069124
	.4byte sub_080691E0

gUnk_08111928:: @ 08111928
	.4byte sub_08069148
	.4byte sub_08069168
	.4byte sub_08069188
	.4byte sub_080691BC

gUnk_08111938:: @ 08111938
	.incbin "baserom.gba", 0x111938, 0x0000028
