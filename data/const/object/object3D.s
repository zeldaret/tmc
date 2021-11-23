	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081216BC:: @ 081216BC
	.4byte sub_0808CF08
	.4byte sub_0808CF5C
	.4byte sub_0808D064

gUnk_081216C8:: @ 081216C8
.ifdef EU
    @ TODO only small differences
	.incbin "object3D/gUnk_081216C8_EU.bin"
.else
	.incbin "object3D/gUnk_081216C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
