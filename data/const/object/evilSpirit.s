	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120668:: @ 08120668
	.4byte sub_080862B8
	.4byte sub_08086370
	.4byte sub_08086550
	.4byte sub_08086594

gUnk_08120678:: @ 08120678
	.incbin "baserom.gba", 0x120678, 0x000000A

gUnk_08120682:: @ 08120682
	.incbin "baserom.gba", 0x120682, 0x0000004

gUnk_08120686:: @ 08120686
	.incbin "baserom.gba", 0x120686, 0x0000004

gUnk_0812068A:: @ 0812068A
	.incbin "baserom.gba", 0x12068A, 0x0000004

gUnk_0812068E:: @ 0812068E
	.incbin "baserom.gba", 0x12068E, 0x0000004

gUnk_08120692:: @ 08120692
	.incbin "baserom.gba", 0x120692, 0x0000006

gUnk_08120698:: @ 08120698
	.4byte gUnk_08120682
	.4byte gUnk_08120686
	.4byte gUnk_0812068A
	.4byte gUnk_0812068E
	.4byte gUnk_08120692
