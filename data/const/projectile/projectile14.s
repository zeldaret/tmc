	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08129FB8:: @ 08129FB8
	.4byte sub_080AA41C
	.4byte sub_080AA450
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte DeleteEntity
	.4byte sub_080AA464

gUnk_08129FD0:: @ 08129FD0
	.incbin "baserom.gba", 0x129FD0, 0x0000014

gUnk_08129FE4:: @ 08129FE4
	.incbin "baserom.gba", 0x129FE4, 0x0000014

gUnk_08129FF8:: @ 08129FF8
	.incbin "baserom.gba", 0x129FF8, 0x000000C

gUnk_0812A004:: @ 0812A004
	.incbin "baserom.gba", 0x12A004, 0x0000010
