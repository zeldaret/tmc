	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gUnk_080C93E0:: @ 080C93E0
	.incbin "baserom.gba", 0x0C93E0, 0x0000080

gUnk_080C9460:: @ 080C9460
	.incbin "baserom.gba", 0x0C9460, 0x0000020

gUnk_080C9480:: @ 080C9480
	.incbin "baserom.gba", 0x0C9480, 0x0000008

gUnk_080C9488:: @ 080C9488
	.4byte gUnk_080C9480

gUnk_080C948C:: @ 080C948C
	.incbin "baserom.gba", 0x0C948C, 0x0000018

gUnk_080C94A4:: @ 080C94A4
	.incbin "baserom.gba", 0x0C94A4, 0x0000070

gUnk_080C9514:: @ 080C9514
	.incbin "baserom.gba", 0x0C9514, 0x0000028

gUnk_080C953C:: @ 080C953C
	.4byte gUnk_080C948C
	.4byte gUnk_080C94A4
	.4byte gUnk_080C9514

gUnk_080C9548:: @ 080C9548
	.incbin "baserom.gba", 0x0C9548, 0x0000028

gUnk_080C9570:: @ 080C9570
	.incbin "baserom.gba", 0x0C9570, 0x0000048

gUnk_080C95B8:: @ 080C95B8
	.incbin "baserom.gba", 0x0C95B8, 0x0000038

gUnk_080C95F0:: @ 080C95F0
	.incbin "baserom.gba", 0x0C95F0, 0x0000010

gUnk_080C9600:: @ 080C9600
	.4byte gUnk_080C9548
	.4byte gUnk_080C9570
	.4byte gUnk_080C95B8
	.4byte gUnk_080C95F0

gUnk_080C9610:: @ 080C9610
	.incbin "baserom.gba", 0x0C9610, 0x0000038

gUnk_080C9648:: @ 080C9648
	.incbin "baserom.gba", 0x0C9648, 0x0000080

gUnk_080C96C8:: @ 080C96C8
	.incbin "baserom.gba", 0x0C96C8, 0x0000030

gUnk_080C96F8:: @ 080C96F8
	.4byte gUnk_080C9610
	.4byte gUnk_080C9648
	.4byte gUnk_080C96C8

gUnk_080C9704:: @ 080C9704
	.incbin "baserom.gba", 0x0C9704, 0x0000090

gUnk_080C9794:: @ 080C9794
	.incbin "baserom.gba", 0x0C9794, 0x00000C0

gUnk_080C9854:: @ 080C9854
	.incbin "baserom.gba", 0x0C9854, 0x0000010

gUnk_080C9864:: @ 080C9864
	.4byte gUnk_080C9704
	.4byte gUnk_080C9794
	.4byte gUnk_080C9854

gUnk_080C9870:: @ 080C9870
	.incbin "baserom.gba", 0x0C9870, 0x0000078

gUnk_080C98E8:: @ 080C98E8
	.incbin "baserom.gba", 0x0C98E8, 0x0000040

gUnk_080C9928:: @ 080C9928
	.incbin "baserom.gba", 0x0C9928, 0x0000060

gUnk_080C9988:: @ 080C9988
	.incbin "baserom.gba", 0x0C9988, 0x0000060

gUnk_080C99E8:: @ 080C99E8
	.incbin "baserom.gba", 0x0C99E8, 0x0000048

gUnk_080C9A30:: @ 080C9A30
	.4byte gUnk_080C9870
	.4byte gUnk_080C98E8
	.4byte gUnk_080C9928
	.4byte gUnk_080C9988
	.4byte gUnk_080C99E8

gUnk_080C9A44:: @ 080C9A44
	.incbin "baserom.gba", 0x0C9A44, 0x0000038

gUnk_080C9A7C:: @ 080C9A7C
	.incbin "baserom.gba", 0x0C9A7C, 0x00000B0

gUnk_080C9B2C:: @ 080C9B2C
	.incbin "baserom.gba", 0x0C9B2C, 0x0000088

gUnk_080C9BB4:: @ 080C9BB4
	.incbin "baserom.gba", 0x0C9BB4, 0x0000068

gUnk_080C9C1C:: @ 080C9C1C
	.incbin "baserom.gba", 0x0C9C1C, 0x0000020

gUnk_080C9C3C:: @ 080C9C3C
	.4byte gUnk_080C9A44
	.4byte gUnk_080C9A7C
	.4byte gUnk_080C9B2C
	.4byte gUnk_080C9BB4
	.4byte gUnk_080C9C1C

gUnk_080C9C50:: @ 080C9C50
	.4byte gUnk_080C9488
	.4byte gUnk_080C953C
	.4byte gUnk_080C9600
	.4byte gUnk_080C96F8
	.4byte gUnk_080C9864
	.4byte gUnk_080C9A30
	.4byte gUnk_080C9C3C

gUnk_080C9C6C:: @ 080C9C6C
	.incbin "baserom.gba", 0x0C9C6C, 0x0000040

gUnk_080C9CAC:: @ 080C9CAC
	.4byte sub_0801E02C
	.4byte sub_0801E044
	.4byte sub_0801E074
	.4byte sub_0801E0A0

gUnk_080C9CBC:: @ 080C9CBC
	.incbin "baserom.gba", 0x0C9CBC, 0x00003B0

gUnk_080CA06C:: @ 080CA06C
	.incbin "baserom.gba", 0x0CA06C, 0x00000B0

gUnk_080CA11C:: @ 080CA11C
	.incbin "baserom.gba", 0x0CA11C, 0x0000014
