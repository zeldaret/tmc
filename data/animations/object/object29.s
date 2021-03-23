	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120DA0:: @ 08120DA0
	.incbin "baserom.gba", 0x120DA0, 0x0000011

gUnk_08120DB1:: @ 08120DB1
	.incbin "baserom.gba", 0x120DB1, 0x0000013

gUnk_08120DC4:: @ 08120DC4
	.4byte gUnk_08120DA0
	.4byte gUnk_08120DB1
	.4byte 00000000
