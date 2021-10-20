	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08110088:: @ 08110088
	.incbin "epona/gUnk_08110088.bin"

gUnk_0811008D:: @ 0811008D
	.incbin "epona/gUnk_0811008D.bin"

gUnk_08110092:: @ 08110092
	.incbin "epona/gUnk_08110092.bin"

gUnk_08110097:: @ 08110097
	.incbin "epona/gUnk_08110097.bin"

gUnk_081100B8:: @ 081100B8
	.incbin "epona/gUnk_081100B8.bin"

gSpriteAnimations_Epona:: @ 081100E4
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
