	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B77FC:: @ 080B77FC
	.4byte sub_0801B4C8
	.4byte sub_0801B584
	.4byte sub_0801B680
	.4byte sub_0801B7A8
	.incbin "baserom.gba", 0x0B780C, 0x000001A

gUnk_080B7826:: @ 080B7826
	.incbin "baserom.gba", 0x0B7826, 0x0000008

gUnk_080B782E:: @ 080B782E
	.incbin "baserom.gba", 0x0B782E, 0x0000012
