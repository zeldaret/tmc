	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810FF70:: @ 0810FF70
	.incbin "baserom.gba", 0x10FF70, 0x0000005

gUnk_0810FF75:: @ 0810FF75
	.incbin "baserom.gba", 0x10FF75, 0x0000005

gUnk_0810FF7A:: @ 0810FF7A
	.incbin "baserom.gba", 0x10FF7A, 0x0000005

gUnk_0810FF7F:: @ 0810FF7F
	.incbin "baserom.gba", 0x10FF7F, 0x0000005

gUnk_0810FF84:: @ 0810FF84
	.incbin "baserom.gba", 0x10FF84, 0x0000021

gUnk_0810FFA5:: @ 0810FFA5
	.incbin "baserom.gba", 0x10FFA5, 0x0000011

gUnk_0810FFB6:: @ 0810FFB6
	.incbin "baserom.gba", 0x10FFB6, 0x0000021

gUnk_0810FFD7:: @ 0810FFD7
	.incbin "baserom.gba", 0x10FFD7, 0x000003D

gUnk_08110014:: @ 08110014
	.incbin "baserom.gba", 0x110014, 0x0000014

gUnk_08110028:: @ 08110028
	.4byte gUnk_0810FF70
	.4byte gUnk_0810FF75
	.4byte gUnk_0810FF7A
	.4byte gUnk_0810FF7F
	.4byte gUnk_0810FFB6
	.4byte gUnk_0810FF84
	.4byte gUnk_0810FFA5
	.4byte gUnk_0810FFB6
	.4byte gUnk_0810FF70
	.4byte gUnk_0810FF75
	.4byte gUnk_08110014
	.4byte gUnk_0810FF7F
	.4byte gUnk_0810FFD7
	.4byte gUnk_0810FFD7
	.4byte gUnk_0810FFD7
	.4byte gUnk_0810FFD7
	.4byte 00000000
