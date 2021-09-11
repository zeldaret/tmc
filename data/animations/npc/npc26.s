	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081106E8:: @ 081106E8
	.incbin "npc26/gUnk_081106E8.bin"

gUnk_081106ED:: @ 081106ED
	.incbin "npc26/gUnk_081106ED.bin"

gUnk_081106FE:: @ 081106FE
	.incbin "npc26/gUnk_081106FE.bin"

gUnk_08110710:: @ 08110710
	.4byte gUnk_081106E8
	.4byte gUnk_081106E8
	.4byte gUnk_081106E8
	.4byte gUnk_081106E8
	.4byte gUnk_081106ED
	.4byte gUnk_081106ED
	.4byte gUnk_081106FE
	.4byte gUnk_081106FE
	.4byte 00000000
