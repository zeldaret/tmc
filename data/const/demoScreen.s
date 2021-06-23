	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

.ifdef DEMO
@ TODO choose demo screen
demoFunctions::
	.4byte sub_080A2E40
	.4byte sub_080A2FD0
	.4byte sub_080A2F8C

gUnk_08127C98::
.incbin "baserom_demo.gba", 0x127c98, 0x30 
gUnk_08127CC8::
.incbin "baserom_demo.gba", 0x127CC8, 0x8 
.endif
