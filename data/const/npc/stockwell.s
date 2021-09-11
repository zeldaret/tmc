	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

.ifndef EU
gUnk_0810FDA0:: @ 0810FDA0
	.incbin "assets/stockwell/gUnk_0810FDA0_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_0810FDA4:: @ 0810FDA4
	.4byte sub_08065080
	.4byte sub_080650CC
	.4byte sub_080651AC
	.4byte sub_080651D8
	.4byte sub_08065368

gUnk_0810FDB8:: @ 0810FDB8
	.incbin "assets/stockwell/gUnk_0810FDB8.bin"

gUnk_0810FDC8:: @ 0810FDC8
	.4byte sub_080651F8
	.4byte sub_0806522C
	.4byte sub_08065250
	.4byte sub_0806528C
	.4byte sub_080652B0
	.4byte sub_080652E4
	.4byte sub_08065314
	.4byte sub_08065338
