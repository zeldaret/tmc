	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gAssets:: @ 08324AE4
	.include "data/assets.s"
.align 2



gGlobalGfxAndPalettes:: @ 085A2E80
	.incbin "data_08132B30/gGlobalGfxAndPalettes.bin"

gUnk_085A7320:: @ 085A7320
	.incbin "data_08132B30/gUnk_085A7320.bin"

gUnk_085A97A0:: @ 085A97A0
	.incbin "data_08132B30/gUnk_085A97A0.bin"

gUnk_085B4180:: @ 085B4180
.ifdef EU
	@TODO differs to
	.incbin "data_08132B30/gUnk_085B4180_EU.bin"
.else
	.incbin "data_08132B30/gUnk_085B4180_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

