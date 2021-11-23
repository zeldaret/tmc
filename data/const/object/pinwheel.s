	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_08125050:: @ 08125050
.ifdef JP
	.incbin "pinwheel/gUnk_08125050_JP.bin"
.else
.ifdef DEMO_JP
	.incbin "pinwheel/gUnk_08125050_1_DEMO_JP.bin"
.else
.ifdef EU
	.incbin "pinwheel/gUnk_08125050_2_EU.bin"
.else
	.incbin "pinwheel/gUnk_08125050_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_0812505C:: @ 0812505C
	.4byte sub_080A23DC
	.4byte sub_080A2420
	.4byte sub_080A243C
