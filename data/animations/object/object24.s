	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08120BF1:: @ 08120BF1
	.incbin "baserom.gba", 0x120BF1, 0x0000003

gUnk_08120BF4:: @ 08120BF4
	.incbin "baserom.gba", 0x120BF4, 0x0000001

gUnk_08120BF5:: @ 08120BF5
	.incbin "baserom.gba", 0x120BF5, 0x0000004

gUnk_08120BF9:: @ 08120BF9
	.incbin "baserom.gba", 0x120BF9, 0x0000003

gUnk_08120BFC:: @ 08120BFC
	.incbin "baserom.gba", 0x120BFC, 0x0000001

gUnk_08120BFD:: @ 08120BFD
	.incbin "baserom.gba", 0x120BFD, 0x0000001

gUnk_08120BFE:: @ 08120BFE
	.incbin "baserom.gba", 0x120BFE, 0x0000003

gUnk_08120C01:: @ 08120C01
	.incbin "baserom.gba", 0x120C01, 0x0000007

gUnk_08120C08:: @ 08120C08
	.4byte gUnk_08120BF1
	.4byte gUnk_08120BF5
	.4byte gUnk_08120BF9
	.4byte gUnk_08120BFD
	.4byte gUnk_08120C01
