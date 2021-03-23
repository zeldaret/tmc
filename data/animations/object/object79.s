	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_08123422:: @ 08123422
	.incbin "baserom.gba", 0x123422, 0x0000019

gUnk_0812343B:: @ 0812343B
	.incbin "baserom.gba", 0x12343B, 0x0000011

gUnk_0812344C:: @ 0812344C
	.incbin "baserom.gba", 0x12344C, 0x0000028

gUnk_08123474:: @ 08123474
	.4byte gUnk_08123422
	.4byte gUnk_0812343B
	.4byte gUnk_0812344C
	.4byte 00000000
