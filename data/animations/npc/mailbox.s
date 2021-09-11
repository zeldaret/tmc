	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C814:: @ 0810C814
	.incbin "mailbox/gUnk_0810C814.bin"

gUnk_0810C819:: @ 0810C819
	.incbin "mailbox/gUnk_0810C819.bin"

gUnk_0810C84A:: @ 0810C84A
	.incbin "mailbox/gUnk_0810C84A.bin"

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
