	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08112208:: @ 08112208
	.incbin "baserom.gba", 0x112208, 0x0000024

gUnk_0811222C:: @ 0811222C
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte gUnk_08112208
	.4byte 00000000
