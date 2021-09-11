	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_0811F744:: @ 0811F744
.ifdef EU
    @ TODO only small differences
	.incbin "object9/gUnk_0811F744_EU.bin"
.else
	.incbin "object9/gUnk_0811F744_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0811F754:: @ 0811F754
	.4byte sub_08083914
	.4byte sub_0808395C
	.4byte sub_08083998
