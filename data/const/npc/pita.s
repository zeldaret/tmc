	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0810C428:: @ 0810C428
.ifdef EU
    @ TODO only small differences
	.incbin "pita/gUnk_0810C428_EU.bin"
.else
	.incbin "pita/gUnk_0810C428_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0810C430:: @ 0810C430
	.incbin "pita/gUnk_0810C430.bin"

gUnk_0810C435:: @ 0810C435
	.incbin "pita/gUnk_0810C435.bin"

gUnk_0810C43D:: @ 0810C43D
	.incbin "pita/gUnk_0810C43D.bin"
