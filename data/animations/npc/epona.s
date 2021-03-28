	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110088:: @ 08110088
	.incbin "baserom.gba", 0x110088, 0x0000005

gUnk_0811008D:: @ 0811008D
	.incbin "baserom.gba", 0x11008D, 0x0000005

gUnk_08110092:: @ 08110092
	.incbin "baserom.gba", 0x110092, 0x0000005

gUnk_08110097:: @ 08110097
	.incbin "baserom.gba", 0x110097, 0x0000021

gUnk_081100B8:: @ 081100B8
	.incbin "baserom.gba", 0x1100B8, 0x000002C

gUnk_081100E4:: @ 081100E4
	.4byte gUnk_08110088
	.4byte gUnk_08110092
	.4byte gUnk_0811008D
	.4byte gUnk_08110092
	.4byte gUnk_08110097
	.4byte gUnk_08110097
	.4byte gUnk_08110097
	.4byte gUnk_08110097
	.4byte gUnk_081100B8
	.4byte gUnk_081100B8
	.4byte gUnk_081100B8
	.4byte gUnk_081100B8
	.4byte 00000000
