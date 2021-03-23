	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0812468C:: @ 0812468C
	.incbin "baserom.gba", 0x12468C, 0x0000004

gUnk_08124690:: @ 08124690
	.incbin "baserom.gba", 0x124690, 0x0000004

gUnk_08124694:: @ 08124694
	.incbin "baserom.gba", 0x124694, 0x0000004

gUnk_08124698:: @ 08124698
	.incbin "baserom.gba", 0x124698, 0x0000010

gUnk_081246A8:: @ 081246A8
	.incbin "baserom.gba", 0x1246A8, 0x0000010

gUnk_081246B8:: @ 081246B8
	.incbin "baserom.gba", 0x1246B8, 0x0000010

gUnk_081246C8:: @ 081246C8
	.4byte gUnk_08124690
	.4byte gUnk_0812468C
	.4byte gUnk_08124690
	.4byte gUnk_08124694
	.4byte gUnk_081246A8
	.4byte gUnk_08124698
	.4byte gUnk_081246A8
	.4byte gUnk_081246B8
	.4byte 00000000
