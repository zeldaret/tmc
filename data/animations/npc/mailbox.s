	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C814:: @ 0810C814
	.incbin "baserom.gba", 0x10C814, 0x0000005

gUnk_0810C819:: @ 0810C819
	.incbin "baserom.gba", 0x10C819, 0x0000031

gUnk_0810C84A:: @ 0810C84A
	.incbin "baserom.gba", 0x10C84A, 0x000001E

gUnk_0810C868:: @ 0810C868
	.4byte gUnk_0810C814
	.4byte gUnk_0810C814
	.4byte gUnk_0810C814
	.4byte gUnk_0810C814
	.4byte gUnk_0810C819
	.4byte gUnk_0810C819
	.4byte gUnk_0810C819
	.4byte gUnk_0810C819
	.4byte gUnk_0810C84A
