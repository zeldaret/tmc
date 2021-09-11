	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
@    .align 2

gUnk_080CF831:: @ 080CF831
	.incbin "assets/cuccoAggr/gUnk_080CF831.bin"

gUnk_080CF836:: @ 080CF836
	.incbin "assets/cuccoAggr/gUnk_080CF836.bin"

gUnk_080CF847:: @ 080CF847
	.incbin "assets/cuccoAggr/gUnk_080CF847.bin"

gUnk_080CF85F:: @ 080CF85F
	.incbin "assets/cuccoAggr/gUnk_080CF85F.bin"

gUnk_080CF87F:: @ 080CF87F
	.incbin "assets/cuccoAggr/gUnk_080CF87F.bin"

gUnk_080CF890:: @ 080CF890
	.4byte gUnk_080CF831
	.4byte gUnk_080CF836
	.4byte gUnk_080CF847
	.4byte gUnk_080CF85F
	.4byte gUnk_080CF87F
