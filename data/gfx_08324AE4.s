	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gAssets:: @ 08324AE4
	.incbin "data_08132B30/gAssets.bin"
	.incbin "tilesets/gTileset_MinishWoods_0_0.4bpp.lz"
	.incbin "tilesets/gTileset_MinishWoods_0_1.4bpp.lz"
	.incbin "tilesets/gTileset_MinishWoods_0_2.4bpp.lz"
	.incbin "data_08132B30/gAssets_1.bin"

@ TODO EU differs from here
.ifdef EU
	.incbin "data_08132B30/gAssets_2_EU.bin"
.else
	.incbin "data_08132B30/gAssets_3_USA-JP-DEMO_USA-DEMO_JP.bin"

@ TODO JP differs from here
.ifdef JP
	.incbin "data_08132B30/gAssets_4_JP.bin"
.else
@ TODO JP differs from here
.ifdef DEMO_JP
	.incbin "data_08132B30/gAssets_5_DEMO_JP.bin"
.else
	.incbin "data_08132B30/gAssets_6_USA-DEMO_USA.bin"

.endif
.endif
.endif

@ TODO JP and EU differ to here

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

