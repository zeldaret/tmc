	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810F96C:: @ 0810F96C
	.incbin "baserom.gba", 0x10F96C, 0x0000005

gUnk_0810F971:: @ 0810F971
	.incbin "baserom.gba", 0x10F971, 0x0000005

gUnk_0810F976:: @ 0810F976
	.incbin "baserom.gba", 0x10F976, 0x0000005

gUnk_0810F97B:: @ 0810F97B
	.incbin "baserom.gba", 0x10F97B, 0x0000011

gUnk_0810F98C:: @ 0810F98C
	.4byte gUnk_0810F96C
	.4byte gUnk_0810F976
	.4byte gUnk_0810F96C
	.4byte gUnk_0810F971
	.4byte gUnk_0810F97B
	.4byte gUnk_0810F97B
	.4byte gUnk_0810F97B
	.4byte gUnk_0810F97B
	.4byte 00000000
