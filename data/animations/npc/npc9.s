	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C2A0:: @ 0810C2A0
	.incbin "npc9/gUnk_0810C2A0.bin"

gUnk_0810C2A5:: @ 0810C2A5
	.incbin "npc9/gUnk_0810C2A5.bin"

gUnk_0810C2B2:: @ 0810C2B2
	.incbin "npc9/gUnk_0810C2B2.bin"
	.4byte gUnk_0810C2A0
	.4byte gUnk_0810C2A5
	.4byte gUnk_0810C2B2
