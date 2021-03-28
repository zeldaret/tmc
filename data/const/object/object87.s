	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123840:: @ 08123840
	.4byte sub_08099F14
	.4byte sub_0809A1B8
	.4byte sub_0809A648

gUnk_0812384C:: @ 0812384C
	.incbin "baserom.gba", 0x12384C, 0x0000040

gUnk_0812388C:: @ 0812388C
	.incbin "baserom.gba", 0x12388C, 0x0000014

gUnk_081238A0:: @ 081238A0
	.incbin "baserom.gba", 0x1238A0, 0x00003E0
