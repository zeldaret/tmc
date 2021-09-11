	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08124194:: @ 08124194
	.incbin "object98/gUnk_08124194.bin"

gUnk_081241DC:: @ 081241DC
	.incbin "object98/gUnk_081241DC.bin"

gUnk_08124224:: @ 08124224
	.incbin "object98/gUnk_08124224.bin"

gUnk_0812426C:: @ 0812426C
	.incbin "object98/gUnk_0812426C.bin"

gUnk_081242B4:: @ 081242B4
	.4byte gUnk_08124194
	.4byte gUnk_081241DC
	.4byte gUnk_08124224
	.4byte gUnk_0812426C
	.4byte 00000000
