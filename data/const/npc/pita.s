	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C428:: @ 0810C428
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x10BB7C, 0x0000008
.else
	.incbin "baserom.gba", 0x10C428, 0x0000008
.endif

gUnk_0810C430:: @ 0810C430
	.incbin "baserom.gba", 0x10C430, 0x0000005

gUnk_0810C435:: @ 0810C435
	.incbin "baserom.gba", 0x10C435, 0x0000008

gUnk_0810C43D:: @ 0810C43D
	.incbin "baserom.gba", 0x10C43D, 0x0000008
