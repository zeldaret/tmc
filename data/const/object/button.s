	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811EE38:: @ 0811EE38
	.4byte sub_08081AE0
	.4byte sub_08081B84
	.4byte sub_08081BAC
	.4byte sub_08081BE0
	.4byte sub_08081C30
	.4byte sub_08081C98

gUnk_0811EE50:: @ 0811EE50
	.incbin "baserom.gba", 0x11EE50, 0x000000C
