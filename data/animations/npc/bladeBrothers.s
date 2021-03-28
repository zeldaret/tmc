	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08111771:: @ 08111771
	.incbin "baserom.gba", 0x111771, 0x0000005

gUnk_08111776:: @ 08111776
	.incbin "baserom.gba", 0x111776, 0x0000005

gUnk_0811177B:: @ 0811177B
	.incbin "baserom.gba", 0x11177B, 0x000004D

gUnk_081117C8:: @ 081117C8
	.incbin "baserom.gba", 0x1117C8, 0x0000031

gUnk_081117F9:: @ 081117F9
	.incbin "baserom.gba", 0x1117F9, 0x000001E

gUnk_08111817:: @ 08111817
	.incbin "baserom.gba", 0x111817, 0x0000002

gUnk_08111819:: @ 08111819
	.incbin "baserom.gba", 0x111819, 0x0000002

gUnk_0811181B:: @ 0811181B
	.incbin "baserom.gba", 0x11181B, 0x0000001

gUnk_0811181C:: @ 0811181C
	.incbin "baserom.gba", 0x11181C, 0x0000001

gUnk_0811181D:: @ 0811181D
	.incbin "baserom.gba", 0x11181D, 0x0000001

gUnk_0811181E:: @ 0811181E
	.incbin "baserom.gba", 0x11181E, 0x0000004

gUnk_08111822:: @ 08111822
	.incbin "baserom.gba", 0x111822, 0x0000008

gUnk_0811182A:: @ 0811182A
	.incbin "baserom.gba", 0x11182A, 0x0000031

gUnk_0811185B:: @ 0811185B
	.incbin "baserom.gba", 0x11185B, 0x0000071

gUnk_081118CC:: @ 081118CC
	.4byte gUnk_08111771
	.4byte gUnk_0811176C
	.4byte gUnk_08111771
	.4byte gUnk_08111776
	.4byte gUnk_0811177B
	.4byte gUnk_0811177B
	.4byte gUnk_0811177B
	.4byte gUnk_0811177B
	.4byte 00000000

gUnk_081118F0:: @ 081118F0
	.4byte gUnk_081117F9
	.4byte gUnk_081117C8
	.4byte gUnk_081117F9
	.4byte gUnk_0811182A
	.4byte gUnk_0811185B
	.4byte gUnk_0811185B
	.4byte gUnk_0811185B
	.4byte gUnk_0811185B
	.4byte 00000000
