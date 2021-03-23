	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08120608:: @ 08120608
	.4byte sub_08085504
	.4byte sub_080855E8
	.4byte sub_08085A1C
	.4byte sub_08085C5C
	.4byte sub_08085CDC
	.4byte sub_08085D10

gUnk_08120620:: @ 08120620
	.incbin "baserom.gba", 0x120620, 0x000000C

gUnk_0812062C:: @ 0812062C
	.4byte sub_08085A44
	.4byte sub_08085A98
	.4byte sub_08085B40

gUnk_08120638:: @ 08120638
	.incbin "baserom.gba", 0x120638, 0x0000008

gUnk_08120640:: @ 08120640
	.incbin "baserom.gba", 0x120640, 0x0000008
