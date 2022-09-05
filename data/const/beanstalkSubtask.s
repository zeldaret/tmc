	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B4410:: @ 080B4410
.ifdef JP
	@ TODO only small differences
	.incbin "data_080B4410/gUnk_080B4410_JP.bin"
.else
.ifdef EU
	.incbin "data_080B4410/gUnk_080B4410_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "data_080B4410/gUnk_080B4410_2_DEMO_JP.bin"
.else
	.incbin "data_080B4410/gUnk_080B4410_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080B4458:: @ 080B4458
	.4byte sub_08019698
	.4byte sub_08019740
	.4byte sub_08019764
	.4byte sub_080197A0

gUnk_080B4468:: @ 080B4468
	.incbin "data_080B4410/gUnk_080B4468.bin"

gUnk_080B4478:: @ 080B4478
	.incbin "data_080B4410/gUnk_080B4478.bin"

gUnk_080B4488:: @ 080B4488
	.incbin "data_080B4410/gUnk_080B4488.bin"

gUnk_080B4490:: @ 080B4490
	.incbin "data_080B4410/gUnk_080B4490.bin"

gUnk_080B44A0:: @ 080B44A0
	.incbin "data_080B4410/gUnk_080B44A0.bin"

gUnk_080B44A8:: @ 080B44A8
	.incbin "data_080B4410/gUnk_080B44A8.bin"

gUnk_080B44B8:: @ 080B44B8
	.4byte sub_0801AE30
	.4byte sub_0801AE34

gUnk_080B44C0:: @ 080B44C0
	.incbin "data_080B4410/gUnk_080B44C0.bin"

gUnk_080B44C2:: @ 080B44C2
	.incbin "data_080B4410/gUnk_080B44C2.bin"

