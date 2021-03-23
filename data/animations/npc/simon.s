	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811362C:: @ 0811362C
	.incbin "baserom.gba", 0x11362C, 0x0000005

gUnk_08113631:: @ 08113631
	.incbin "baserom.gba", 0x113631, 0x0000005

gUnk_08113636:: @ 08113636
	.incbin "baserom.gba", 0x113636, 0x0000005

gUnk_0811363B:: @ 0811363B
	.incbin "baserom.gba", 0x11363B, 0x0000005

gUnk_08113640:: @ 08113640
	.incbin "baserom.gba", 0x113640, 0x0000005

gUnk_08113645:: @ 08113645
	.incbin "baserom.gba", 0x113645, 0x0000005

gUnk_0811364A:: @ 0811364A
	.incbin "baserom.gba", 0x11364A, 0x0000066

gUnk_081136B0:: @ 081136B0
	.4byte gUnk_0811362C
	.4byte gUnk_08113631
	.4byte gUnk_0811362C
	.4byte gUnk_08113636
	.4byte gUnk_0811363B
	.4byte gUnk_08113640
	.4byte gUnk_0811363B
	.4byte gUnk_08113645
	.4byte gUnk_0811364A
	.4byte 00000000
