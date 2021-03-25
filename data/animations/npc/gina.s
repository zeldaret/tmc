	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2


gUnk_0811352C:: @ 0811352C
	.incbin "baserom.gba", 0x11352C, 0x0000021

gUnk_0811354D:: @ 0811354D
	.incbin "baserom.gba", 0x11354D, 0x0000019

gUnk_08113566:: @ 08113566
	.incbin "baserom.gba", 0x113566, 0x0000008

gUnk_0811356E:: @ 0811356E
	.incbin "baserom.gba", 0x11356E, 0x0000021

gUnk_0811358F:: @ 0811358F
	.incbin "baserom.gba", 0x11358F, 0x0000021

gUnk_081135B0:: @ 081135B0
	.incbin "baserom.gba", 0x1135B0, 0x000002D

gUnk_081135DD:: @ 081135DD
	.incbin "baserom.gba", 0x1135DD, 0x0000005

gUnk_081135E2:: @ 081135E2
	.incbin "baserom.gba", 0x1135E2, 0x0000006

gUnk_081135E8:: @ 081135E8
	.4byte gUnk_0811352C
	.4byte gUnk_0811354D
	.4byte gUnk_0811352C
	.4byte gUnk_0811356E
	.4byte gUnk_081135E2
	.4byte gUnk_081135DD
	.4byte gUnk_081135E2
	.4byte gUnk_081135E2
	.4byte gUnk_0811358F
	.4byte gUnk_0811358F
	.4byte gUnk_0811358F
	.4byte gUnk_0811358F
	.4byte gUnk_081135B0
	.4byte gUnk_081135B0
	.4byte gUnk_081135B0
	.4byte gUnk_081135B0
	.4byte 00000000
