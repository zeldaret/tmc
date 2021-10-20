	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnusedLabel_085BD620::
	.incbin "graphics/intro/capcom.gbapal"
	.incbin "graphics/intro/nintendo.gbapal"
	.incbin "data_08132B30/gFigurinePal136_1.bin"

gUnk_085C4620:: @ 085C4620
	.incbin "data_08132B30/gUnk_085C4620.bin"

gUnk_085C4B20:: @ 085C4B20
	.incbin "data_08132B30/gUnk_085C4B20.bin"

gUnk_data0_085C4DA0:: @ 085C4DA0
	.incbin "data_08132B30/gUnk_data0_085C4DA0.bin"

gUnk_data1_085C4E60:: @ 085C4E60
	.incbin "data_08132B30/gUnk_data1_085C4E60.bin"

gUnk_data2_085C4F20:: @ 085C4F20
	.incbin "data_08132B30/gUnk_data2_085C4F20.bin"

gUnk_data3_085C4FE0:: @ 085C4FE0
	.incbin "data_08132B30/gUnk_data3_085C4FE0.bin"

.ifdef EU
	@ TODO differs to gUnk_086926A0
	.incbin "data_08132B30/gUnk_data3_085C4FE0_1_EU.bin"
.else
	.incbin "data_08132B30/gUnk_data3_085C4FE0_2_USA-JP-DEMO_USA-DEMO_JP.bin"

.endif
gUnk_086926A0:: @ 086926A0
	.incbin "data_08132B30/gUnk_086926A0.bin"

gUnk_08692780:: @ 08692780
	.incbin "data_08132B30/gUnk_08692780.bin"

gUnk_08692860:: @ 08692860
	.incbin "data_08132B30/gUnk_08692860.bin"

gUnk_08692940:: @ 08692940
	.incbin "data_08132B30/gUnk_08692940.bin"

gUnk_08692A20:: @ 08692A20
	.incbin "data_08132B30/gUnk_08692A20.bin"

gUnk_08692B00:: @ 08692B00
	.incbin "data_08132B30/gUnk_08692B00.bin"

gUnk_08692BE0:: @ 08692BE0
	.incbin "data_08132B30/gUnk_08692BE0.bin"

gUnk_08692CC0:: @ 08692CC0
	.incbin "data_08132B30/gUnk_08692CC0.bin"

gUnk_08692DA0:: @ 08692DA0
	.incbin "data_08132B30/gUnk_08692DA0.bin"

gUnk_08692E80:: @ 08692E80
	.incbin "data_08132B30/gUnk_08692E80.bin"

gUnk_08692F60:: @ 08692F60
	.incbin "data_08132B30/gUnk_08692F60.bin"
	@ TODO 08692FA0 to 086A2A3F is .incbin "graphics/font.4bpp"
	.incbin "data_08132B30/gUnk_08692F60_1.bin"
gUnk_08696F60:: @ 08696F60
	.incbin "data_08132B30/gUnk_08696F60.bin"
gUnk_086978E0:: @ 086978E0
	.incbin "data_08132B30/gUnk_086978E0.bin"
gUnk_086998E0:: @ 086998E0
	.incbin "data_08132B30/gUnk_086998E0.bin"
gUnk_086A18E0:: @ 086A18E0
	.incbin "data_08132B30/gUnk_086A18E0.bin"

	.incbin "data_08132B30/gUnk_086A18E0_1.bin"
gUnk_086A2A60:: @ 086A2A60
	.incbin "data_08132B30/gUnk_086A2A60.bin"

gUnk_086A2EE0:: @ 086A2EE0
	.incbin "data_08132B30/gUnk_086A2EE0.bin"

gUnk_086AAEE0:: @ 086AAEE0
	.incbin "data_08132B30/gUnk_086AAEE0.bin"

@ TODO background graphics?
@ TODO check http://kylehalladay.com/blog/tutorial/gba/2017/04/11/GBA-By-Example-3.html
@ TODO contains credits images?
gUnk_086D4460:: @ 086D4460
	.incbin "data_08132B30/gUnk_086D4460.bin"

@ TODO 0x800 of this might be backgrond?
gUnk_086E8460:: @ 086E8460
	.incbin "data_08132B30/gUnk_086E8460.bin"


