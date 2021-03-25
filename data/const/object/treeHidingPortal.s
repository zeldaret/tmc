	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124354:: @ 08124354
	.4byte sub_0809E83C
	.4byte sub_0809E86C
	.4byte sub_0809E8BC
	.4byte sub_0809E8EC

gUnk_08124364:: @ 08124364
	.incbin "baserom.gba", 0x124364, 0x0000050

