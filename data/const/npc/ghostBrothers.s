	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811015C:: @ 0811015C
	.incbin "baserom.gba", 0x11015C, 0x0000008

gUnk_08110164:: @ 08110164
	.4byte sub_08065BF4
	.4byte sub_08065BF4
	.4byte sub_08065BF4
	.4byte sub_08065BF4
	.4byte sub_08065EBC
	.4byte sub_08065EBC

gUnk_0811017C:: @ 0811017C
	.4byte sub_08065D18
	.4byte sub_08065D74
	.4byte sub_08065DB8

gUnk_08110188:: @ 08110188
	.incbin "baserom.gba", 0x110188, 0x0000055
	.incbin "baserom.gba", 0x1101DD, 0x000001A
	.incbin "baserom.gba", 0x1101F7, 0x0000037

gUnk_0811022E:: @ 0811022E
	.incbin "baserom.gba", 0x11022E, 0x0000046

gUnk_08110274:: @ 08110274
	.4byte sub_08065D18
	.4byte sub_08065EDC
	.4byte sub_08065F20

gUnk_08110280:: @ 08110280
	.incbin "baserom.gba", 0x110280, 0x0000080
