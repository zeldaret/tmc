	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811ECD4:: @ 0811ECD4
	.incbin "baserom.gba", 0x11ECD4, 0x0000079

gUnk_0811ED4D:: @ 0811ED4D
	.incbin "baserom.gba", 0x11ED4D, 0x0000039

gUnk_0811ED86:: @ 0811ED86
	.incbin "baserom.gba", 0x11ED86, 0x0000031

gUnk_0811EDB7:: @ 0811EDB7
	.incbin "baserom.gba", 0x11EDB7, 0x0000034

gUnk_0811EDEB:: @ 0811EDEB
	.incbin "baserom.gba", 0x11EDEB, 0x0000014

gUnk_0811EDFF:: @ 0811EDFF
	.incbin "baserom.gba", 0x11EDFF, 0x0000011

gUnk_0811EE10:: @ 0811EE10
	.4byte gUnk_0811ECD4
	.4byte gUnk_0811ED86
	.4byte gUnk_0811ED4D
	.4byte 00000000

gUnk_0811EE20:: @ 0811EE20
	.4byte gUnk_0811EDB7
	.4byte 00000000
