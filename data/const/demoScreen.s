	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

.ifdef DEMO_USA
@ TODO choose demo screen
demoFunctions::
	.4byte sub_080A2E40
	.4byte sub_080A2FD0
	.4byte sub_080A2F8C

gUnk_08127C98::
	.incbin "demoScreen/gUnk_08127C98_DEMO_USA.bin"
gUnk_08127CC8::
	.incbin "demoScreen/gUnk_08127CC8_DEMO_USA.bin"
.endif
