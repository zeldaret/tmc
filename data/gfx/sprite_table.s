	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

@ 	.byte 00, 0x0d, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00

@ @ More sprites in demo_usa
.ifdef DEMO_USA
	.incbin "sprite_table/gUnk_089FB780.bin"
gUnk_089FD1B4::
	.incbin "sprite_table/gUnk_089FD1B4_DEMO_USA.bin"
gUnk_089FD2F4::
	.incbin "sprite_table/gUnk_089FD2F4_DEMO_USA.bin"
gUnk_08A05751::
	.incbin "sprite_table/gUnk_08A05751_DEMO_USA.bin"
gUnk_08A068BF::
	.incbin "sprite_table/gUnk_08A068BF_DEMO_USA.bin"
.endif
