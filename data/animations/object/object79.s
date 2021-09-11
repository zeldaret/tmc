	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08123422:: @ 08123422
	.incbin "assets/object79/gUnk_08123422.bin"

gUnk_0812343B:: @ 0812343B
	.incbin "assets/object79/gUnk_0812343B.bin"

gUnk_0812344C:: @ 0812344C
	.incbin "assets/object79/gUnk_0812344C.bin"

gUnk_08123474:: @ 08123474
	.4byte gUnk_08123422
	.4byte gUnk_0812343B
	.4byte gUnk_0812344C
	.4byte 00000000
