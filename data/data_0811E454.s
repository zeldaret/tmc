	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_0811E4BC:: @ 0811E4BC
	.incbin "baserom.gba", 0x11E4BC, 0x0000054

gUnk_0811E510:: @ 0811E510
	.incbin "baserom.gba", 0x11E510, 0x0000004

gUnk_0811E514:: @ 0811E514
	.incbin "baserom.gba", 0x11E514, 0x0000010
