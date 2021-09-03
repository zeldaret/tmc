	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08120EF9:: @ 08120EF9
	.incbin "baserom.gba", 0x120EF9, 0x000000A
	.incbin "baserom.gba", 0x120F03, 0x0000018
	.incbin "baserom.gba", 0x120F1B, 0x000000F

gUnk_08120F2A:: @ 08120F2A
	.incbin "baserom.gba", 0x120F2A, 0x0000004

gUnk_08120F2E:: @ 08120F2E
	.incbin "baserom.gba", 0x120F2E, 0x0000004

gUnk_08120F32:: @ 08120F32
	.incbin "baserom.gba", 0x120F32, 0x0000028

gUnk_08120F5A:: @ 08120F5A
	.incbin "baserom.gba", 0x120F5A, 0x0000004

gUnk_08120F5E:: @ 08120F5E
	.incbin "baserom.gba", 0x120F5E, 0x0000020

gUnk_08120F7E:: @ 08120F7E
	.incbin "baserom.gba", 0x120F7E, 0x0000028

gUnk_08120FA6:: @ 08120FA6
	.incbin "baserom.gba", 0x120FA6, 0x0000004

gUnk_08120FAA:: @ 08120FAA
	.incbin "baserom.gba", 0x120FAA, 0x0000020

gUnk_08120FCA:: @ 08120FCA
	.incbin "baserom.gba", 0x120FCA, 0x0000028

gUnk_08120FF2:: @ 08120FF2
	.incbin "baserom.gba", 0x120FF2, 0x0000004

gUnk_08120FF6:: @ 08120FF6
	.incbin "baserom.gba", 0x120FF6, 0x0000013
	.incbin "baserom.gba", 0x121009, 0x0000002
	.incbin "baserom.gba", 0x12100B, 0x0000001
	.incbin "baserom.gba", 0x12100C, 0x0000001
	.incbin "baserom.gba", 0x12100D, 0x0000002
	.incbin "baserom.gba", 0x12100F, 0x0000003
	.incbin "baserom.gba", 0x121012, 0x0000002
	.incbin "baserom.gba", 0x121014, 0x0000002

gUnk_08121016:: @ 08121016
	.incbin "baserom.gba", 0x121016, 0x0000006

gUnk_0812101C:: @ 0812101C
	.4byte gUnk_08120E8C
	.4byte gUnk_08120ED1
	.4byte 00000000

gUnk_08121028:: @ 08121028
	.4byte gUnk_08120EF9
	.4byte gUnk_08120F2A
	.4byte gUnk_08120F2E
	.4byte gUnk_08120F32
	.4byte gUnk_08120F5A
	.4byte gUnk_08120F5E
	.4byte gUnk_08120F7E
	.4byte gUnk_08120FA6
	.4byte gUnk_08120FAA
	.4byte gUnk_08120FCA
	.4byte gUnk_08120FF2
	.4byte gUnk_08120FF6
	.4byte gUnk_08121016
	.4byte 00000000
