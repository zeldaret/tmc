	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_081217BC:: @ 081217BC
	.4byte sub_0808DEE8
	.4byte sub_0808DFAC
	.4byte sub_0808E1BC
	.4byte sub_0808E208
	.4byte sub_0808E264

gUnk_081217D0:: @ 081217D0
	.incbin "baserom.gba", 0x1217D0, 0x0000008

gUnk_081217D8:: @ 081217D8
	.incbin "baserom.gba", 0x1217D8, 0x0000008
