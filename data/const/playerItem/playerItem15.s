	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08127270:: @ 08127270
	.4byte sub_080A3084
	.4byte sub_080A310C

gUnk_08127278:: @ 08127278
	.incbin "baserom.gba", 0x127278, 0x0000008

