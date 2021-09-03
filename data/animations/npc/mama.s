	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081137B0:: @ 081137B0
	.incbin "baserom.gba", 0x1137B0, 0x0000039

gUnk_081137E9:: @ 081137E9
	.incbin "baserom.gba", 0x1137E9, 0x0000088
	.incbin "baserom.gba", 0x113871, 0x0000021

gUnk_08113892:: @ 08113892
	.incbin "baserom.gba", 0x113892, 0x0000005

gUnk_08113897:: @ 08113897
	.incbin "baserom.gba", 0x113897, 0x0000019

gUnk_081138B0:: @ 081138B0
	.incbin "baserom.gba", 0x1138B0, 0x0000008

gUnk_081138B8:: @ 081138B8
	.4byte gUnk_081137E9
	.4byte gUnk_08113892
	.4byte gUnk_08113897
	.4byte gUnk_081138B0
	.4byte gUnk_081137B0
	.4byte gUnk_081137B0
	.4byte gUnk_081137B0
	.4byte gUnk_081137B0
	.4byte 00000000
