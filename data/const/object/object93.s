	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08123E80:: @ 08123E80
	.4byte sub_0809CEA8
	.4byte sub_0809CEC0

gUnk_08123E88:: @ 08123E88
	.incbin "baserom.gba", 0x123E88, 0x0000014

gUnk_08123E9C:: @ 08123E9C
	.4byte gUnk_08123E88
	.incbin "baserom.gba", 0x123EA0, 0x0000004

gUnk_08123EA4:: @ 08123EA4
	.incbin "baserom.gba", 0x123EA4, 0x0000014

gUnk_08123EB8:: @ 08123EB8
	.4byte gUnk_08123EA4
	.incbin "baserom.gba", 0x123EBC, 0x0000004
