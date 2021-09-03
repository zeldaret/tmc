	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081133B8:: @ 081133B8
	.incbin "baserom.gba", 0x1133B8, 0x0000031

gUnk_081133E9:: @ 081133E9
	.incbin "baserom.gba", 0x1133E9, 0x0000011

gUnk_081133FA:: @ 081133FA
	.incbin "baserom.gba", 0x1133FA, 0x0000019

gUnk_08113413:: @ 08113413
	.incbin "baserom.gba", 0x113413, 0x0000021

gUnk_08113434:: @ 08113434
	.incbin "baserom.gba", 0x113434, 0x0000009

gUnk_0811343D:: @ 0811343D
	.incbin "baserom.gba", 0x11343D, 0x0000002
	.incbin "baserom.gba", 0x11343F, 0x0000007

gUnk_08113446:: @ 08113446
	.incbin "baserom.gba", 0x113446, 0x0000009

gUnk_0811344F:: @ 0811344F
	.incbin "baserom.gba", 0x11344F, 0x0000041

gUnk_08113490:: @ 08113490
	.4byte gUnk_081133B8
	.4byte gUnk_081133B8
	.4byte gUnk_081133B8
	.4byte gUnk_081133B8
	.4byte gUnk_0811343D
	.4byte gUnk_08113434
	.4byte gUnk_0811343D
	.4byte gUnk_08113446
	.4byte gUnk_0811344F
	.4byte gUnk_0811344F
	.4byte gUnk_0811344F
	.4byte gUnk_0811344F
	.4byte gUnk_081133E9
	.4byte gUnk_081133FA
	.4byte gUnk_08113413
	.4byte gUnk_081133FA
	.4byte 00000000
