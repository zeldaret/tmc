	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_081136D8:: @ 081136D8
	.incbin "baserom.gba", 0x1136D8, 0x0000011

gUnk_081136E9:: @ 081136E9
	.incbin "baserom.gba", 0x1136E9, 0x0000011

gUnk_081136FA:: @ 081136FA
	.incbin "baserom.gba", 0x1136FA, 0x0000011

gUnk_0811370B:: @ 0811370B
	.incbin "baserom.gba", 0x11370B, 0x0000011

gUnk_0811371C:: @ 0811371C
	.incbin "baserom.gba", 0x11371C, 0x0000005

gUnk_08113721:: @ 08113721
	.incbin "baserom.gba", 0x113721, 0x0000005

gUnk_08113726:: @ 08113726
	.incbin "baserom.gba", 0x113726, 0x0000005

gUnk_0811372B:: @ 0811372B
	.incbin "baserom.gba", 0x11372B, 0x0000005

gUnk_08113730:: @ 08113730
	.4byte gUnk_0811371C
	.4byte gUnk_08113721
	.4byte gUnk_08113726
	.4byte gUnk_0811372B
	.4byte gUnk_081136D8
	.4byte gUnk_081136E9
	.4byte gUnk_081136FA
	.4byte gUnk_0811370B
	.4byte 00000000
