	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B4410:: @ 080B4410
.ifdef JP
	@ TODO only small differences
	.incbin "assets/data_080B4410/gUnk_080B4410_JP.bin"
.else
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4410_1_EU.bin"
.else
.ifdef DEMO_JP
	.incbin "assets/data_080B4410/gUnk_080B4410_2_DEMO_JP.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4410_3_USA-DEMO_USA.bin"
.endif
.endif
.endif

gUnk_080B4458:: @ 080B4458
	.4byte sub_08019698
	.4byte sub_08019740
	.4byte sub_08019764
	.4byte sub_080197A0

gUnk_080B4468:: @ 080B4468
	.incbin "assets/data_080B4410/gUnk_080B4468.bin"

gUnk_080B4478:: @ 080B4478
	.incbin "assets/data_080B4410/gUnk_080B4478.bin"

gUnk_080B4488:: @ 080B4488
	.incbin "assets/data_080B4410/gUnk_080B4488.bin"

gUnk_080B4490:: @ 080B4490
	.incbin "assets/data_080B4410/gUnk_080B4490.bin"

gUnk_080B44A0:: @ 080B44A0
	.incbin "assets/data_080B4410/gUnk_080B44A0.bin"

gUnk_080B44A8:: @ 080B44A8
	.incbin "assets/data_080B4410/gUnk_080B44A8.bin"

gUnk_080B44B8:: @ 080B44B8
	.4byte sub_0801AE30
	.4byte sub_0801AE34

gUnk_080B44C0:: @ 080B44C0
	.incbin "assets/data_080B4410/gUnk_080B44C0.bin"

gUnk_080B44C2:: @ 080B44C2
	.incbin "assets/data_080B4410/gUnk_080B44C2.bin"

gUnk_080B44D0:: @ 080B44D0
	.incbin "assets/data_080B4410/gUnk_080B44D0.bin"

gUnk_080B44F0:: @ 080B44F0
	.incbin "assets/data_080B4410/gUnk_080B44F0.bin"

gUnk_080B4500:: @ 080B4500
	.incbin "assets/data_080B4410/gUnk_080B4500.bin"

gUnk_080B4510:: @ 080B4510
	.incbin "assets/data_080B4410/gUnk_080B4510.bin"

gUnk_080B4520:: @ 080B4520
	.incbin "assets/data_080B4410/gUnk_080B4520.bin"

gUnk_080B4530:: @ 080B4530
	.incbin "assets/data_080B4410/gUnk_080B4530.bin"

gUnk_080B4540:: @ 080B4540
	.incbin "assets/data_080B4410/gUnk_080B4540.bin"

gUnk_080B4550:: @ 080B4550
	.4byte gUnk_080B44F0
	.4byte gUnk_080B4500
	.4byte gUnk_080B4510
	.4byte gUnk_080B4520
	.4byte gUnk_080B4530
	.4byte gUnk_080B4540

gUnk_080B4568:: @ 080B4568
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4568_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4568_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4570:: @ 080B4570
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4570_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4570_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4578:: @ 080B4578
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4578_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4578_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif
	

gUnk_080B4580:: @ 080B4580
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4580_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4580_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4588:: @ 080B4588
	.4byte gUnk_080B4568
	.incbin "assets/data_080B4410/gUnk_080B4588.bin"
	.4byte gUnk_080B4570
	.incbin "assets/data_080B4410/gUnk_080B4588_1.bin"
	.4byte gUnk_080B4578
	.incbin "assets/data_080B4410/gUnk_080B4588_2.bin"
	.4byte gUnk_080B4580
	.incbin "assets/data_080B4410/gUnk_080B4588_3.bin"

gUnk_080B45B0:: @ 080B45B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B45B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B45B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B45B8:: @ 080B45B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B45B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B45B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B45C0:: @ 080B45C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B45C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B45C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B45C8:: @ 080B45C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B45C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B45C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B45D0:: @ 080B45D0
	.4byte gUnk_080B45B0
	.incbin "assets/data_080B4410/gUnk_080B45D0.bin"
	.4byte gUnk_080B45B8
	.incbin "assets/data_080B4410/gUnk_080B45D0_1.bin"
	.4byte gUnk_080B45C0
	.incbin "assets/data_080B4410/gUnk_080B45D0_2.bin"
	.4byte gUnk_080B45C8
	.incbin "assets/data_080B4410/gUnk_080B45D0_3.bin"

gUnk_080B45F8:: @ 080B45F8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B45F8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B45F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4600:: @ 080B4600
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4600_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4600_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4608:: @ 080B4608
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4608_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4608_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4610:: @ 080B4610
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4610_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4610_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4618:: @ 080B4618
	.4byte gUnk_080B45F8
	.incbin "assets/data_080B4410/gUnk_080B4618.bin"
	.4byte gUnk_080B4600
	.incbin "assets/data_080B4410/gUnk_080B4618_1.bin"
	.4byte gUnk_080B4608
	.incbin "assets/data_080B4410/gUnk_080B4618_2.bin"
	.4byte gUnk_080B4610
	.incbin "assets/data_080B4410/gUnk_080B4618_3.bin"

gUnk_080B4640:: @ 080B4640
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4640_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4640_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4648:: @ 080B4648
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4648_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4648_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4650:: @ 080B4650
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4650_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4650_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4658:: @ 080B4658
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4658_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4658_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4660:: @ 080B4660
	.4byte gUnk_080B4640
	.incbin "assets/data_080B4410/gUnk_080B4660.bin"
	.4byte gUnk_080B4648
	.incbin "assets/data_080B4410/gUnk_080B4660_1.bin"
	.4byte gUnk_080B4650
	.incbin "assets/data_080B4410/gUnk_080B4660_2.bin"
	.4byte gUnk_080B4658
	.incbin "assets/data_080B4410/gUnk_080B4660_3.bin"

gUnk_080B4688:: @ 080B4688
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4688_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4688_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4690:: @ 080B4690
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4690_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4690_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4698:: @ 080B4698
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4698_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4698_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B46A0:: @ 080B46A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B46A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B46A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B46A8:: @ 080B46A8
	.4byte gUnk_080B4688
	.incbin "assets/data_080B4410/gUnk_080B46A8.bin"
	.4byte gUnk_080B4690
	.incbin "assets/data_080B4410/gUnk_080B46A8_1.bin"
	.4byte gUnk_080B4698
	.incbin "assets/data_080B4410/gUnk_080B46A8_2.bin"
	.4byte gUnk_080B46A0
	.incbin "assets/data_080B4410/gUnk_080B46A8_3.bin"

gUnk_080B46D0:: @ 080B46D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B46D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B46D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B46D8:: @ 080B46D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B46D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B46D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B46E0:: @ 080B46E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B46E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B46E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B46E8:: @ 080B46E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B46E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B46E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B46F0:: @ 080B46F0
	.4byte gUnk_080B46D0
	.incbin "assets/data_080B4410/gUnk_080B46F0.bin"
	.4byte gUnk_080B46D8
	.incbin "assets/data_080B4410/gUnk_080B46F0_1.bin"
	.4byte gUnk_080B46E0
	.incbin "assets/data_080B4410/gUnk_080B46F0_2.bin"
	.4byte gUnk_080B46E8
	.incbin "assets/data_080B4410/gUnk_080B46F0_3.bin"

gUnk_080B4718:: @ 080B4718
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4718_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4718_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4720:: @ 080B4720
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4720_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4720_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4728:: @ 080B4728
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4728_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4728_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4730:: @ 080B4730
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4730_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4730_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4738:: @ 080B4738
	.4byte gUnk_080B4718
	.incbin "assets/data_080B4410/gUnk_080B4738.bin"
	.4byte gUnk_080B4720
	.incbin "assets/data_080B4410/gUnk_080B4738_1.bin"
	.4byte gUnk_080B4728
	.incbin "assets/data_080B4410/gUnk_080B4738_2.bin"
	.4byte gUnk_080B4730
	.incbin "assets/data_080B4410/gUnk_080B4738_3.bin"

gUnk_080B4760:: @ 080B4760
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4760_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4760_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4768:: @ 080B4768
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4768_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4768_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4770:: @ 080B4770
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4770_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4770_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4778:: @ 080B4778
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4778_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4778_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4780:: @ 080B4780
	.4byte gUnk_080B4760
	.incbin "assets/data_080B4410/gUnk_080B4780.bin"
	.4byte gUnk_080B4768
	.incbin "assets/data_080B4410/gUnk_080B4780_1.bin"
	.4byte gUnk_080B4770
	.incbin "assets/data_080B4410/gUnk_080B4780_2.bin"
	.4byte gUnk_080B4778
	.incbin "assets/data_080B4410/gUnk_080B4780_3.bin"

gUnk_080B47A8:: @ 080B47A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B47A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B47A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B47B0:: @ 080B47B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B47B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B47B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B47B8:: @ 080B47B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B47B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B47B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B47C0:: @ 080B47C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B47C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B47C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B47C8:: @ 080B47C8
	.4byte gUnk_080B47A8
	.incbin "assets/data_080B4410/gUnk_080B47C8.bin"
	.4byte gUnk_080B47B0
	.incbin "assets/data_080B4410/gUnk_080B47C8_1.bin"
	.4byte gUnk_080B47B8
	.incbin "assets/data_080B4410/gUnk_080B47C8_2.bin"
	.4byte gUnk_080B47C0
	.incbin "assets/data_080B4410/gUnk_080B47C8_3.bin"

gUnk_080B47F0:: @ 080B47F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B47F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B47F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B47F8:: @ 080B47F8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B47F8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B47F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4800:: @ 080B4800
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4800_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4800_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4808:: @ 080B4808
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4808_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4808_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4810:: @ 080B4810
	.4byte gUnk_080B47F0
	.incbin "assets/data_080B4410/gUnk_080B4810.bin"
	.4byte gUnk_080B47F8
	.incbin "assets/data_080B4410/gUnk_080B4810_1.bin"
	.4byte gUnk_080B4800
	.incbin "assets/data_080B4410/gUnk_080B4810_2.bin"
	.4byte gUnk_080B4808
	.incbin "assets/data_080B4410/gUnk_080B4810_3.bin"

gUnk_080B4838:: @ 080B4838
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4838_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4838_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4848:: @ 080B4848
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4848_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4848_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4858:: @ 080B4858
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4858_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4858_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4868:: @ 080B4868
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4868_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4868_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4878:: @ 080B4878
	.4byte gUnk_080B4838
	.incbin "assets/data_080B4410/gUnk_080B4878.bin"
	.4byte gUnk_080B4848
	.incbin "assets/data_080B4410/gUnk_080B4878_1.bin"
	.4byte gUnk_080B4858
	.incbin "assets/data_080B4410/gUnk_080B4878_2.bin"
	.4byte gUnk_080B4868
	.incbin "assets/data_080B4410/gUnk_080B4878_3.bin"

gUnk_080B48A0:: @ 080B48A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B48A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B48A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B48A8:: @ 080B48A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B48A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B48A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B48B0:: @ 080B48B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B48B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B48B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B48B8:: @ 080B48B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B48B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B48B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B48C0:: @ 080B48C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B48C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B48C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B48C8:: @ 080B48C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B48C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B48C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B48D0:: @ 080B48D0
	.4byte gUnk_080B48A0
	.incbin "assets/data_080B4410/gUnk_080B48D0.bin"
	.4byte gUnk_080B48A8
	.incbin "assets/data_080B4410/gUnk_080B48D0_1.bin"
	.4byte gUnk_080B48B0
	.incbin "assets/data_080B4410/gUnk_080B48D0_2.bin"
	.4byte gUnk_080B48B8
	.incbin "assets/data_080B4410/gUnk_080B48D0_3.bin"
	.4byte gUnk_080B48C0
	.incbin "assets/data_080B4410/gUnk_080B48D0_4.bin"
	.4byte gUnk_080B48C8
	.incbin "assets/data_080B4410/gUnk_080B48D0_5.bin"

gUnk_080B4908:: @ 080B4908
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4908_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4908_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4910:: @ 080B4910
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4910_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4910_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4918:: @ 080B4918
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4918_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4918_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4920:: @ 080B4920
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4920_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4920_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4928:: @ 080B4928
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4928_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4928_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4930:: @ 080B4930
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4930_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4930_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4938:: @ 080B4938
	.4byte gUnk_080B4908
	.incbin "assets/data_080B4410/gUnk_080B4938.bin"
	.4byte gUnk_080B4910
	.incbin "assets/data_080B4410/gUnk_080B4938_1.bin"
	.4byte gUnk_080B4918
	.incbin "assets/data_080B4410/gUnk_080B4938_2.bin"
	.4byte gUnk_080B4920
	.incbin "assets/data_080B4410/gUnk_080B4938_3.bin"
	.4byte gUnk_080B4928
	.incbin "assets/data_080B4410/gUnk_080B4938_4.bin"
	.4byte gUnk_080B4930
	.incbin "assets/data_080B4410/gUnk_080B4938_5.bin"

gUnk_080B4970:: @ 080B4970
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4970_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4970_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4978:: @ 080B4978
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4978_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4978_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4980:: @ 080B4980
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4980_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4980_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4988:: @ 080B4988
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4988_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4988_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4990:: @ 080B4990
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4990_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4990_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4998:: @ 080B4998
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4998_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4998_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B49A0:: @ 080B49A0
	.4byte gUnk_080B4970
	.incbin "assets/data_080B4410/gUnk_080B49A0.bin"
	.4byte gUnk_080B4978
	.incbin "assets/data_080B4410/gUnk_080B49A0_1.bin"
	.4byte gUnk_080B4980
	.incbin "assets/data_080B4410/gUnk_080B49A0_2.bin"
	.4byte gUnk_080B4988
	.incbin "assets/data_080B4410/gUnk_080B49A0_3.bin"
	.4byte gUnk_080B4990
	.incbin "assets/data_080B4410/gUnk_080B49A0_4.bin"
	.4byte gUnk_080B4998
	.incbin "assets/data_080B4410/gUnk_080B49A0_5.bin"

gUnk_080B49D8:: @ 080B49D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B49D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B49D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B49E0:: @ 080B49E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B49E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B49E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B49E8:: @ 080B49E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B49E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B49E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B49F0:: @ 080B49F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B49F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B49F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B49F8:: @ 080B49F8
	.4byte gUnk_080B49D8
	.incbin "assets/data_080B4410/gUnk_080B49F8.bin"
	.4byte gUnk_080B49E0
	.incbin "assets/data_080B4410/gUnk_080B49F8_1.bin"
	.4byte gUnk_080B49E8
	.incbin "assets/data_080B4410/gUnk_080B49F8_2.bin"
	.4byte gUnk_080B49F0
	.incbin "assets/data_080B4410/gUnk_080B49F8_3.bin"

gUnk_080B4A20:: @ 080B4A20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4A20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4A20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4A28:: @ 080B4A28
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4A28_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4A28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4A30:: @ 080B4A30
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4A30_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4A30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4A38:: @ 080B4A38
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4A38_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4A38_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4A40:: @ 080B4A40
	.4byte gUnk_080B4A20
	.incbin "assets/data_080B4410/gUnk_080B4A40.bin"
	.4byte gUnk_080B4A28
	.incbin "assets/data_080B4410/gUnk_080B4A40_1.bin"
	.4byte gUnk_080B4A30
	.incbin "assets/data_080B4410/gUnk_080B4A40_2.bin"
	.4byte gUnk_080B4A38
	.incbin "assets/data_080B4410/gUnk_080B4A40_3.bin"

gUnk_080B4A68:: @ 080B4A68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4A68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4A68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4A70:: @ 080B4A70
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4A70_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4A70_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4A78:: @ 080B4A78
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4A78_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4A78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4A80:: @ 080B4A80
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4A80_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4A80_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4A88:: @ 080B4A88
	.4byte gUnk_080B4A68
	.incbin "assets/data_080B4410/gUnk_080B4A88.bin"
	.4byte gUnk_080B4A70
	.incbin "assets/data_080B4410/gUnk_080B4A88_1.bin"
	.4byte gUnk_080B4A78
	.incbin "assets/data_080B4410/gUnk_080B4A88_2.bin"
	.4byte gUnk_080B4A80
	.incbin "assets/data_080B4410/gUnk_080B4A88_3.bin"

gUnk_080B4AB0:: @ 080B4AB0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4AB0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4AB0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4AB8:: @ 080B4AB8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4AB8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4AB8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4AC0:: @ 080B4AC0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4AC0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4AC0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4AC8:: @ 080B4AC8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4AC8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4AC8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4AD0:: @ 080B4AD0
	.4byte gUnk_080B4AB0
	.incbin "assets/data_080B4410/gUnk_080B4AD0.bin"
	.4byte gUnk_080B4AB8
	.incbin "assets/data_080B4410/gUnk_080B4AD0_1.bin"
	.4byte gUnk_080B4AC0
	.incbin "assets/data_080B4410/gUnk_080B4AD0_2.bin"
	.4byte gUnk_080B4AC8
	.incbin "assets/data_080B4410/gUnk_080B4AD0_3.bin"

gUnk_080B4AF8:: @ 080B4AF8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4AF8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4AF8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B00:: @ 080B4B00
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B00_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B00_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B08:: @ 080B4B08
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B08_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B08_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B10:: @ 080B4B10
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B10_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B10_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B18:: @ 080B4B18
	.4byte gUnk_080B4AF8
	.incbin "assets/data_080B4410/gUnk_080B4B18.bin"
	.4byte gUnk_080B4B00
	.incbin "assets/data_080B4410/gUnk_080B4B18_1.bin"
	.4byte gUnk_080B4B08
	.incbin "assets/data_080B4410/gUnk_080B4B18_2.bin"
	.4byte gUnk_080B4B10
	.incbin "assets/data_080B4410/gUnk_080B4B18_3.bin"

gUnk_080B4B40:: @ 080B4B40
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B40_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B40_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B48:: @ 080B4B48
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B48_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B50:: @ 080B4B50
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B50_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B50_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B58:: @ 080B4B58
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B58_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B58_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B60:: @ 080B4B60
	.4byte gUnk_080B4B40
	.incbin "assets/data_080B4410/gUnk_080B4B60.bin"
	.4byte gUnk_080B4B48
	.incbin "assets/data_080B4410/gUnk_080B4B60_1.bin"
	.4byte gUnk_080B4B50
	.incbin "assets/data_080B4410/gUnk_080B4B60_2.bin"
	.4byte gUnk_080B4B58
	.incbin "assets/data_080B4410/gUnk_080B4B60_3.bin"

gUnk_080B4B88:: @ 080B4B88
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B88_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B88_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B90:: @ 080B4B90
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B90_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B90_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4B98:: @ 080B4B98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4B98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4B98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4BA0:: @ 080B4BA0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4BA0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4BA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4BA8:: @ 080B4BA8
	.4byte gUnk_080B4B88
	.incbin "assets/data_080B4410/gUnk_080B4BA8.bin"
	.4byte gUnk_080B4B90
	.incbin "assets/data_080B4410/gUnk_080B4BA8_1.bin"
	.4byte gUnk_080B4B98
	.incbin "assets/data_080B4410/gUnk_080B4BA8_2.bin"
	.4byte gUnk_080B4BA0
	.incbin "assets/data_080B4410/gUnk_080B4BA8_3.bin"

gUnk_080B4BD0:: @ 080B4BD0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4BD0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4BD0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4BD8:: @ 080B4BD8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4BD8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4BD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4BE0:: @ 080B4BE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4BE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4BE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4BE8:: @ 080B4BE8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4BE8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4BE8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4BF0:: @ 080B4BF0
	.4byte gUnk_080B4BD0
	.incbin "assets/data_080B4410/gUnk_080B4BF0.bin"
	.4byte gUnk_080B4BD8
	.incbin "assets/data_080B4410/gUnk_080B4BF0_1.bin"
	.4byte gUnk_080B4BE0
	.incbin "assets/data_080B4410/gUnk_080B4BF0_2.bin"
	.4byte gUnk_080B4BE8
	.incbin "assets/data_080B4410/gUnk_080B4BF0_3.bin"

gUnk_080B4C18:: @ 080B4C18
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4C18_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4C18_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4C20:: @ 080B4C20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4C20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4C20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4C28:: @ 080B4C28
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4C28_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4C28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4C30:: @ 080B4C30
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4C30_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4C30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4C38:: @ 080B4C38
	.4byte gUnk_080B4C18
	.incbin "assets/data_080B4410/gUnk_080B4C38.bin"
	.4byte gUnk_080B4C20
	.incbin "assets/data_080B4410/gUnk_080B4C38_1.bin"
	.4byte gUnk_080B4C28
	.incbin "assets/data_080B4410/gUnk_080B4C38_2.bin"
	.4byte gUnk_080B4C30
	.incbin "assets/data_080B4410/gUnk_080B4C38_3.bin"

gUnk_080B4C60:: @ 080B4C60
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4C60_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4C60_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4C68:: @ 080B4C68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4C68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4C68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4C70:: @ 080B4C70
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4C70_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4C70_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4C78:: @ 080B4C78
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4C78_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4C78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4C80:: @ 080B4C80
	.4byte gUnk_080B4C60
	.incbin "assets/data_080B4410/gUnk_080B4C80.bin"
	.4byte gUnk_080B4C68
	.incbin "assets/data_080B4410/gUnk_080B4C80_1.bin"
	.4byte gUnk_080B4C70
	.incbin "assets/data_080B4410/gUnk_080B4C80_2.bin"
	.4byte gUnk_080B4C78
	.incbin "assets/data_080B4410/gUnk_080B4C80_3.bin"

gUnk_080B4CA8:: @ 080B4CA8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4CA8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4CA8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4CB0:: @ 080B4CB0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4CB0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4CB0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4CB8:: @ 080B4CB8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4CB8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4CB8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4CC0:: @ 080B4CC0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4CC0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4CC0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4CC8:: @ 080B4CC8
	.4byte gUnk_080B4CA8
	.incbin "assets/data_080B4410/gUnk_080B4CC8.bin"
	.4byte gUnk_080B4CB0
	.incbin "assets/data_080B4410/gUnk_080B4CC8_1.bin"
	.4byte gUnk_080B4CB8
	.incbin "assets/data_080B4410/gUnk_080B4CC8_2.bin"
	.4byte gUnk_080B4CC0
	.incbin "assets/data_080B4410/gUnk_080B4CC8_3.bin"

gUnk_080B4CF0:: @ 080B4CF0
	.incbin "assets/data_080B4410/gUnk_080B4CF0.bin"

gUnk_080B4D00:: @ 080B4D00
	.incbin "assets/data_080B4410/gUnk_080B4D00.bin"

gUnk_080B4D10:: @ 080B4D10
	.4byte gUnk_080B4CF0
	.incbin "assets/data_080B4410/gUnk_080B4D10.bin"
	.4byte gUnk_080B4D00
	.incbin "assets/data_080B4410/gUnk_080B4D10_1.bin"

gUnk_080B4D28:: @ 080B4D28
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D28_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D30:: @ 080B4D30
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D30_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D38:: @ 080B4D38
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D38_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D38_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D40:: @ 080B4D40
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D40_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D40_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D48:: @ 080B4D48
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D48_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D50:: @ 080B4D50
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D50_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D50_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D58:: @ 080B4D58
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D58_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D58_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D60:: @ 080B4D60
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D60_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D60_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D68:: @ 080B4D68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D70:: @ 080B4D70
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D70_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D70_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D78:: @ 080B4D78
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D78_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D80:: @ 080B4D80
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D80_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D80_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D88:: @ 080B4D88
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D88_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D88_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D90:: @ 080B4D90
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D90_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D90_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4D98:: @ 080B4D98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4D98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4D98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4DA0:: @ 080B4DA0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4DA0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4DA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4DA8:: @ 080B4DA8
	.4byte gUnk_080B4D28
	.incbin "assets/data_080B4410/gUnk_080B4DA8.bin"
	.4byte gUnk_080B4D30
	.incbin "assets/data_080B4410/gUnk_080B4DA8_1.bin"
	.4byte gUnk_080B4D38
	.incbin "assets/data_080B4410/gUnk_080B4DA8_2.bin"
	.4byte gUnk_080B4D40
	.incbin "assets/data_080B4410/gUnk_080B4DA8_3.bin"
	.4byte gUnk_080B4D48
	.incbin "assets/data_080B4410/gUnk_080B4DA8_4.bin"
	.4byte gUnk_080B4D50
	.incbin "assets/data_080B4410/gUnk_080B4DA8_5.bin"
	.4byte gUnk_080B4D58
	.incbin "assets/data_080B4410/gUnk_080B4DA8_6.bin"
	.4byte gUnk_080B4D60
	.incbin "assets/data_080B4410/gUnk_080B4DA8_7.bin"
	.4byte gUnk_080B4D68
	.incbin "assets/data_080B4410/gUnk_080B4DA8_8.bin"
	.4byte gUnk_080B4D70
	.incbin "assets/data_080B4410/gUnk_080B4DA8_9.bin"
	.4byte gUnk_080B4D78
	.incbin "assets/data_080B4410/gUnk_080B4DA8_10.bin"
	.4byte gUnk_080B4D80
	.incbin "assets/data_080B4410/gUnk_080B4DA8_11.bin"
	.4byte gUnk_080B4D88
	.incbin "assets/data_080B4410/gUnk_080B4DA8_12.bin"
	.4byte gUnk_080B4D90
	.incbin "assets/data_080B4410/gUnk_080B4DA8_13.bin"
	.4byte gUnk_080B4D98
	.incbin "assets/data_080B4410/gUnk_080B4DA8_14.bin"
	.4byte gUnk_080B4DA0
	.incbin "assets/data_080B4410/gUnk_080B4DA8_15.bin"

gUnk_080B4E30:: @ 080B4E30
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4E30_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4E30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4E38:: @ 080B4E38
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4E38_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4E38_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4E40:: @ 080B4E40
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4E40_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4E40_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4E48:: @ 080B4E48
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4E48_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4E48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4E50:: @ 080B4E50
	.4byte gUnk_080B4E30
	.incbin "assets/data_080B4410/gUnk_080B4E50.bin"
	.4byte gUnk_080B4E38
	.incbin "assets/data_080B4410/gUnk_080B4E50_1.bin"
	.4byte gUnk_080B4E40
	.incbin "assets/data_080B4410/gUnk_080B4E50_2.bin"
	.4byte gUnk_080B4E48
	.incbin "assets/data_080B4410/gUnk_080B4E50_3.bin"

gUnk_080B4E78:: @ 080B4E78
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4E78_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4E78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4E80:: @ 080B4E80
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4E80_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4E80_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4E88:: @ 080B4E88
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4E88_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4E88_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4E90:: @ 080B4E90
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4E90_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4E90_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4E98:: @ 080B4E98
	.4byte gUnk_080B4E78
	.incbin "assets/data_080B4410/gUnk_080B4E98.bin"
	.4byte gUnk_080B4E80
	.incbin "assets/data_080B4410/gUnk_080B4E98_1.bin"
	.4byte gUnk_080B4E88
	.incbin "assets/data_080B4410/gUnk_080B4E98_2.bin"
	.4byte gUnk_080B4E90
	.incbin "assets/data_080B4410/gUnk_080B4E98_3.bin"

gUnk_080B4EC0:: @ 080B4EC0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4EC0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4EC0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4EC8:: @ 080B4EC8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4EC8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4EC8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4ED0:: @ 080B4ED0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4ED0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4ED0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4ED8:: @ 080B4ED8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4ED8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4ED8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4EE0:: @ 080B4EE0
	.4byte gUnk_080B4EC0
	.incbin "assets/data_080B4410/gUnk_080B4EE0.bin"
	.4byte gUnk_080B4EC8
	.incbin "assets/data_080B4410/gUnk_080B4EE0_1.bin"
	.4byte gUnk_080B4ED0
	.incbin "assets/data_080B4410/gUnk_080B4EE0_2.bin"
	.4byte gUnk_080B4ED8
	.incbin "assets/data_080B4410/gUnk_080B4EE0_3.bin"

gUnk_080B4F08:: @ 080B4F08
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F08_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F08_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4F10:: @ 080B4F10
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F10_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F10_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4F18:: @ 080B4F18
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F18_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F18_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4F20:: @ 080B4F20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4F28:: @ 080B4F28
	.4byte gUnk_080B4F08
	.incbin "assets/data_080B4410/gUnk_080B4F28.bin"
	.4byte gUnk_080B4F10
	.incbin "assets/data_080B4410/gUnk_080B4F28_1.bin"
	.4byte gUnk_080B4F18
	.incbin "assets/data_080B4410/gUnk_080B4F28_2.bin"
	.4byte gUnk_080B4F20
	.incbin "assets/data_080B4410/gUnk_080B4F28_3.bin"

gUnk_080B4F50:: @ 080B4F50
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F50_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F50_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4F58:: @ 080B4F58
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F58_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F58_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4F60:: @ 080B4F60
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F60_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F60_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4F68:: @ 080B4F68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4F70:: @ 080B4F70
	.4byte gUnk_080B4F50
	.incbin "assets/data_080B4410/gUnk_080B4F70.bin"
	.4byte gUnk_080B4F58
	.incbin "assets/data_080B4410/gUnk_080B4F70_1.bin"
	.4byte gUnk_080B4F60
	.incbin "assets/data_080B4410/gUnk_080B4F70_2.bin"
	.4byte gUnk_080B4F68
	.incbin "assets/data_080B4410/gUnk_080B4F70_3.bin"

gUnk_080B4F98:: @ 080B4F98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4F98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4F98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4FA8:: @ 080B4FA8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4FA8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4FA8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4FB8:: @ 080B4FB8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4FB8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4FB8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4FC8:: @ 080B4FC8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B4FC8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B4FC8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B4FD8:: @ 080B4FD8
	.4byte gUnk_080B4F98
	.incbin "assets/data_080B4410/gUnk_080B4FD8.bin"
	.4byte gUnk_080B4FA8
	.incbin "assets/data_080B4410/gUnk_080B4FD8_1.bin"
	.4byte gUnk_080B4FB8
	.incbin "assets/data_080B4410/gUnk_080B4FD8_2.bin"
	.4byte gUnk_080B4FC8
	.incbin "assets/data_080B4410/gUnk_080B4FD8_3.bin"

gUnk_080B5000:: @ 080B5000
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5000_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5000_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5008:: @ 080B5008
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5008_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5008_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5010:: @ 080B5010
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5010_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5010_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5018:: @ 080B5018
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5018_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5018_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5020:: @ 080B5020
	.4byte gUnk_080B5000
	.incbin "assets/data_080B4410/gUnk_080B5020.bin"
	.4byte gUnk_080B5008
	.incbin "assets/data_080B4410/gUnk_080B5020_1.bin"
	.4byte gUnk_080B5010
	.incbin "assets/data_080B4410/gUnk_080B5020_2.bin"
	.4byte gUnk_080B5018
	.incbin "assets/data_080B4410/gUnk_080B5020_3.bin"

gUnk_080B5048:: @ 080B5048
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5048_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5048_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5050:: @ 080B5050
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5050_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5050_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5058:: @ 080B5058
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5058_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5058_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5060:: @ 080B5060
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5060_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5060_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5068:: @ 080B5068
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5068_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5068_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5070:: @ 080B5070
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5070_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5070_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5078:: @ 080B5078
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5078_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5078_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5080:: @ 080B5080
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5080_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5080_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5088:: @ 080B5088
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5088_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5088_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5090:: @ 080B5090
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5090_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5090_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5098:: @ 080B5098
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5098_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5098_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B50A0:: @ 080B50A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B50A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B50A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B50A8:: @ 080B50A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B50A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B50A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B50B0:: @ 080B50B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B50B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B50B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B50B8:: @ 080B50B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B50B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B50B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B50C0:: @ 080B50C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B50C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B50C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B50C8:: @ 080B50C8
	.4byte gUnk_080B5048
	.incbin "assets/data_080B4410/gUnk_080B50C8.bin"
	.4byte gUnk_080B5050
	.incbin "assets/data_080B4410/gUnk_080B50C8_1.bin"
	.4byte gUnk_080B5058
	.incbin "assets/data_080B4410/gUnk_080B50C8_2.bin"
	.4byte gUnk_080B5060
	.incbin "assets/data_080B4410/gUnk_080B50C8_3.bin"
	.4byte gUnk_080B5068
	.incbin "assets/data_080B4410/gUnk_080B50C8_4.bin"
	.4byte gUnk_080B5070
	.incbin "assets/data_080B4410/gUnk_080B50C8_5.bin"
	.4byte gUnk_080B5078
	.incbin "assets/data_080B4410/gUnk_080B50C8_6.bin"
	.4byte gUnk_080B5080
	.incbin "assets/data_080B4410/gUnk_080B50C8_7.bin"
	.4byte gUnk_080B5088
	.incbin "assets/data_080B4410/gUnk_080B50C8_8.bin"
	.4byte gUnk_080B5090
	.incbin "assets/data_080B4410/gUnk_080B50C8_9.bin"
	.4byte gUnk_080B5098
	.incbin "assets/data_080B4410/gUnk_080B50C8_10.bin"
	.4byte gUnk_080B50A0
	.incbin "assets/data_080B4410/gUnk_080B50C8_11.bin"
	.4byte gUnk_080B50A8
	.incbin "assets/data_080B4410/gUnk_080B50C8_12.bin"
	.4byte gUnk_080B50B0
	.incbin "assets/data_080B4410/gUnk_080B50C8_13.bin"
	.4byte gUnk_080B50B8
	.incbin "assets/data_080B4410/gUnk_080B50C8_14.bin"
	.4byte gUnk_080B50C0
	.incbin "assets/data_080B4410/gUnk_080B50C8_15.bin"

gUnk_080B5150:: @ 080B5150
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5150_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5150_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5158:: @ 080B5158
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5158_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5158_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5160:: @ 080B5160
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5160_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5160_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5168:: @ 080B5168
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5168_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5168_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5170:: @ 080B5170
	.4byte gUnk_080B5150
	.incbin "assets/data_080B4410/gUnk_080B5170.bin"
	.4byte gUnk_080B5158
	.incbin "assets/data_080B4410/gUnk_080B5170_1.bin"
	.4byte gUnk_080B5160
	.incbin "assets/data_080B4410/gUnk_080B5170_2.bin"
	.4byte gUnk_080B5168
	.incbin "assets/data_080B4410/gUnk_080B5170_3.bin"

gUnk_080B5198:: @ 080B5198
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5198_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5198_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B51A0:: @ 080B51A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B51A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B51A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B51A8:: @ 080B51A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B51A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B51A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B51B0:: @ 080B51B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B51B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B51B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B51B8:: @ 080B51B8
	.4byte gUnk_080B5198
	.incbin "assets/data_080B4410/gUnk_080B51B8.bin"
	.4byte gUnk_080B51A0
	.incbin "assets/data_080B4410/gUnk_080B51B8_1.bin"
	.4byte gUnk_080B51A8
	.incbin "assets/data_080B4410/gUnk_080B51B8_2.bin"
	.4byte gUnk_080B51B0
	.incbin "assets/data_080B4410/gUnk_080B51B8_3.bin"

gUnk_080B51E0:: @ 080B51E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B51E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B51E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B51E8:: @ 080B51E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B51E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B51E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B51F0:: @ 080B51F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B51F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B51F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B51F8:: @ 080B51F8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B51F8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B51F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5200:: @ 080B5200
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5200_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5200_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5208:: @ 080B5208
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5208_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5208_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5210:: @ 080B5210
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5210_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5210_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5218:: @ 080B5218
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5218_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5218_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5220:: @ 080B5220
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5220_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5220_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5228:: @ 080B5228
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5228_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5228_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5230:: @ 080B5230
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5230_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5230_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5238:: @ 080B5238
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5238_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5238_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5240:: @ 080B5240
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5240_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5240_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5248:: @ 080B5248
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5248_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5248_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5250:: @ 080B5250
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5250_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5250_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5258:: @ 080B5258
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5258_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5258_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5260:: @ 080B5260
	.4byte gUnk_080B51E0
	.incbin "assets/data_080B4410/gUnk_080B5260.bin"
	.4byte gUnk_080B51E8
	.incbin "assets/data_080B4410/gUnk_080B5260_1.bin"
	.4byte gUnk_080B51F0
	.incbin "assets/data_080B4410/gUnk_080B5260_2.bin"
	.4byte gUnk_080B51F8
	.incbin "assets/data_080B4410/gUnk_080B5260_3.bin"
	.4byte gUnk_080B5200
	.incbin "assets/data_080B4410/gUnk_080B5260_4.bin"
	.4byte gUnk_080B5208
	.incbin "assets/data_080B4410/gUnk_080B5260_5.bin"
	.4byte gUnk_080B5210
	.incbin "assets/data_080B4410/gUnk_080B5260_6.bin"
	.4byte gUnk_080B5218
	.incbin "assets/data_080B4410/gUnk_080B5260_7.bin"
	.4byte gUnk_080B5220
	.incbin "assets/data_080B4410/gUnk_080B5260_8.bin"
	.4byte gUnk_080B5228
	.incbin "assets/data_080B4410/gUnk_080B5260_9.bin"
	.4byte gUnk_080B5230
	.incbin "assets/data_080B4410/gUnk_080B5260_10.bin"
	.4byte gUnk_080B5238
	.incbin "assets/data_080B4410/gUnk_080B5260_11.bin"
	.4byte gUnk_080B5240
	.incbin "assets/data_080B4410/gUnk_080B5260_12.bin"
	.4byte gUnk_080B5248
	.incbin "assets/data_080B4410/gUnk_080B5260_13.bin"
	.4byte gUnk_080B5250
	.incbin "assets/data_080B4410/gUnk_080B5260_14.bin"
	.4byte gUnk_080B5258
	.incbin "assets/data_080B4410/gUnk_080B5260_15.bin"

gUnk_080B52E8:: @ 080B52E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B52E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B52E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B52F0:: @ 080B52F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B52F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B52F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B52F8:: @ 080B52F8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B52F8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B52F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5300:: @ 080B5300
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5300_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5300_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5308:: @ 080B5308
	.4byte gUnk_080B52E8
	.incbin "assets/data_080B4410/gUnk_080B5308.bin"
	.4byte gUnk_080B52F0
	.incbin "assets/data_080B4410/gUnk_080B5308_1.bin"
	.4byte gUnk_080B52F8
	.incbin "assets/data_080B4410/gUnk_080B5308_2.bin"
	.4byte gUnk_080B5300
	.incbin "assets/data_080B4410/gUnk_080B5308_3.bin"

gUnk_080B5330:: @ 080B5330
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5330_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5330_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5338:: @ 080B5338
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5338_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5338_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5340:: @ 080B5340
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5340_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5340_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5348:: @ 080B5348
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5348_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5348_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5350:: @ 080B5350
	.4byte gUnk_080B5330
	.incbin "assets/data_080B4410/gUnk_080B5350.bin"
	.4byte gUnk_080B5338
	.incbin "assets/data_080B4410/gUnk_080B5350_1.bin"
	.4byte gUnk_080B5340
	.incbin "assets/data_080B4410/gUnk_080B5350_2.bin"
	.4byte gUnk_080B5348
	.incbin "assets/data_080B4410/gUnk_080B5350_3.bin"

gUnk_080B5378:: @ 080B5378
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5378_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5378_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5380:: @ 080B5380
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5380_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5380_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5388:: @ 080B5388
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5388_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5388_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5390:: @ 080B5390
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5390_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5390_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5398:: @ 080B5398
	.4byte gUnk_080B5378
	.incbin "assets/data_080B4410/gUnk_080B5398.bin"
	.4byte gUnk_080B5380
	.incbin "assets/data_080B4410/gUnk_080B5398_1.bin"
	.4byte gUnk_080B5388
	.incbin "assets/data_080B4410/gUnk_080B5398_2.bin"
	.4byte gUnk_080B5390
	.incbin "assets/data_080B4410/gUnk_080B5398_3.bin"

gUnk_080B53C0:: @ 080B53C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B53C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B53C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B53C8:: @ 080B53C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B53C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B53C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B53D0:: @ 080B53D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B53D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B53D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B53D8:: @ 080B53D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B53D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B53D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B53E0:: @ 080B53E0
	.4byte gUnk_080B53C0
	.incbin "assets/data_080B4410/gUnk_080B53E0.bin"
	.4byte gUnk_080B53C8
	.incbin "assets/data_080B4410/gUnk_080B53E0_1.bin"
	.4byte gUnk_080B53D0
	.incbin "assets/data_080B4410/gUnk_080B53E0_2.bin"
	.4byte gUnk_080B53D8
	.incbin "assets/data_080B4410/gUnk_080B53E0_3.bin"

gUnk_080B5408:: @ 080B5408
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5408_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5408_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5410:: @ 080B5410
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5410_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5410_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5418:: @ 080B5418
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5418_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5418_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5420:: @ 080B5420
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5420_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5420_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5428:: @ 080B5428
	.4byte gUnk_080B5408
	.incbin "assets/data_080B4410/gUnk_080B5428.bin"
	.4byte gUnk_080B5410
	.incbin "assets/data_080B4410/gUnk_080B5428_1.bin"
	.4byte gUnk_080B5418
	.incbin "assets/data_080B4410/gUnk_080B5428_2.bin"
	.4byte gUnk_080B5420
	.incbin "assets/data_080B4410/gUnk_080B5428_3.bin"

gUnk_080B5450:: @ 080B5450
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5450_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5450_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5458:: @ 080B5458
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5458_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5458_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5460:: @ 080B5460
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5460_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5460_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5468:: @ 080B5468
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5468_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5468_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5470:: @ 080B5470
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5470_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5470_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5478:: @ 080B5478
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5478_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5478_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5480:: @ 080B5480
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5480_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5480_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5488:: @ 080B5488
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5488_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5488_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5490:: @ 080B5490
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5490_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5490_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5498:: @ 080B5498
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5498_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5498_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B54A0:: @ 080B54A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B54A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B54A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B54A8:: @ 080B54A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B54A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B54A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B54B0:: @ 080B54B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B54B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B54B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B54B8:: @ 080B54B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B54B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B54B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B54C0:: @ 080B54C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B54C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B54C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B54C8:: @ 080B54C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B54C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B54C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B54D0:: @ 080B54D0
	.4byte gUnk_080B5450
	.incbin "assets/data_080B4410/gUnk_080B54D0.bin"
	.4byte gUnk_080B5458
	.incbin "assets/data_080B4410/gUnk_080B54D0_1.bin"
	.4byte gUnk_080B5460
	.incbin "assets/data_080B4410/gUnk_080B54D0_2.bin"
	.4byte gUnk_080B5468
	.incbin "assets/data_080B4410/gUnk_080B54D0_3.bin"
	.4byte gUnk_080B5470
	.incbin "assets/data_080B4410/gUnk_080B54D0_4.bin"
	.4byte gUnk_080B5478

	.incbin "assets/data_080B4410/gUnk_080B54D0_5.bin"
	.4byte gUnk_080B5480
	.incbin "assets/data_080B4410/gUnk_080B54D0_6.bin"
	.4byte gUnk_080B5488
	.incbin "assets/data_080B4410/gUnk_080B54D0_7.bin"
	.4byte gUnk_080B5490
	.incbin "assets/data_080B4410/gUnk_080B54D0_8.bin"
	.4byte gUnk_080B5498
	.incbin "assets/data_080B4410/gUnk_080B54D0_9.bin"
	.4byte gUnk_080B54A0
	.incbin "assets/data_080B4410/gUnk_080B54D0_10.bin"
	.4byte gUnk_080B54A8
	.incbin "assets/data_080B4410/gUnk_080B54D0_11.bin"
	.4byte gUnk_080B54B0
	.incbin "assets/data_080B4410/gUnk_080B54D0_12.bin"
	.4byte gUnk_080B54B8
	.incbin "assets/data_080B4410/gUnk_080B54D0_13.bin"
	.4byte gUnk_080B54C0
	.incbin "assets/data_080B4410/gUnk_080B54D0_14.bin"
	.4byte gUnk_080B54C8
	.incbin "assets/data_080B4410/gUnk_080B54D0_15.bin"

gUnk_080B5558:: @ 080B5558
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5558_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5558_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5560:: @ 080B5560
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5560_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5560_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5568:: @ 080B5568
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5568_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5568_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5570:: @ 080B5570
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5570_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5570_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5578:: @ 080B5578
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5578_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5578_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5580:: @ 080B5580
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5580_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5580_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5588:: @ 080B5588
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5588_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5588_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5590:: @ 080B5590
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5590_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5590_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5598:: @ 080B5598
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5598_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5598_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B55A0:: @ 080B55A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B55A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B55A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B55A8:: @ 080B55A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B55A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B55A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B55B0:: @ 080B55B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B55B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B55B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B55B8:: @ 080B55B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B55B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B55B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B55C0:: @ 080B55C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B55C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B55C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B55C8:: @ 080B55C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B55C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B55C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B55D0:: @ 080B55D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B55D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B55D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B55D8:: @ 080B55D8
	.4byte gUnk_080B5558
	.incbin "assets/data_080B4410/gUnk_080B55D8.bin"
	.4byte gUnk_080B5560
	.incbin "assets/data_080B4410/gUnk_080B55D8_1.bin"
	.4byte gUnk_080B5568
	.incbin "assets/data_080B4410/gUnk_080B55D8_2.bin"
	.4byte gUnk_080B5570
	.incbin "assets/data_080B4410/gUnk_080B55D8_3.bin"
	.4byte gUnk_080B5578
	.incbin "assets/data_080B4410/gUnk_080B55D8_4.bin"
	.4byte gUnk_080B5580
	.incbin "assets/data_080B4410/gUnk_080B55D8_5.bin"
	.4byte gUnk_080B5588
	.incbin "assets/data_080B4410/gUnk_080B55D8_6.bin"
	.4byte gUnk_080B5590
	.incbin "assets/data_080B4410/gUnk_080B55D8_7.bin"
	.4byte gUnk_080B5598
	.incbin "assets/data_080B4410/gUnk_080B55D8_8.bin"
	.4byte gUnk_080B55A0
	.incbin "assets/data_080B4410/gUnk_080B55D8_9.bin"
	.4byte gUnk_080B55A8
	.incbin "assets/data_080B4410/gUnk_080B55D8_10.bin"
	.4byte gUnk_080B55B0
	.incbin "assets/data_080B4410/gUnk_080B55D8_11.bin"
	.4byte gUnk_080B55B8
	.incbin "assets/data_080B4410/gUnk_080B55D8_12.bin"
	.4byte gUnk_080B55C0
	.incbin "assets/data_080B4410/gUnk_080B55D8_13.bin"
	.4byte gUnk_080B55C8
	.incbin "assets/data_080B4410/gUnk_080B55D8_14.bin"
	.4byte gUnk_080B55D0
	.incbin "assets/data_080B4410/gUnk_080B55D8_15.bin"

gUnk_080B5660:: @ 080B5660
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5660_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5660_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5668:: @ 080B5668
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5668_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5668_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5670:: @ 080B5670
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5670_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5670_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5678:: @ 080B5678
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5678_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5678_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5680:: @ 080B5680
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5680_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5680_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5688:: @ 080B5688
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5688_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5688_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5690:: @ 080B5690
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5690_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5690_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5698:: @ 080B5698
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5698_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5698_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56A0:: @ 080B56A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B56A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B56A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56A8:: @ 080B56A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B56A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B56A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56B0:: @ 080B56B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B56B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B56B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56B8:: @ 080B56B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B56B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B56B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56C0:: @ 080B56C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B56C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B56C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56C8:: @ 080B56C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B56C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B56C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56D0:: @ 080B56D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B56D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B56D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56D8:: @ 080B56D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B56D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B56D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B56E0:: @ 080B56E0
	.4byte gUnk_080B5660
	.incbin "assets/data_080B4410/gUnk_080B56E0.bin"
	.4byte gUnk_080B5668
	.incbin "assets/data_080B4410/gUnk_080B56E0_1.bin"
	.4byte gUnk_080B5670
	.incbin "assets/data_080B4410/gUnk_080B56E0_2.bin"
	.4byte gUnk_080B5678
	.incbin "assets/data_080B4410/gUnk_080B56E0_3.bin"
	.4byte gUnk_080B5680
	.incbin "assets/data_080B4410/gUnk_080B56E0_4.bin"
	.4byte gUnk_080B5688
	.incbin "assets/data_080B4410/gUnk_080B56E0_5.bin"
	.4byte gUnk_080B5690
	.incbin "assets/data_080B4410/gUnk_080B56E0_6.bin"
	.4byte gUnk_080B5698
	.incbin "assets/data_080B4410/gUnk_080B56E0_7.bin"
	.4byte gUnk_080B56A0
	.incbin "assets/data_080B4410/gUnk_080B56E0_8.bin"
	.4byte gUnk_080B56A8
	.incbin "assets/data_080B4410/gUnk_080B56E0_9.bin"
	.4byte gUnk_080B56B0
	.incbin "assets/data_080B4410/gUnk_080B56E0_10.bin"
	.4byte gUnk_080B56B8
	.incbin "assets/data_080B4410/gUnk_080B56E0_11.bin"
	.4byte gUnk_080B56C0
	.incbin "assets/data_080B4410/gUnk_080B56E0_12.bin"
	.4byte gUnk_080B56C8
	.incbin "assets/data_080B4410/gUnk_080B56E0_13.bin"
	.4byte gUnk_080B56D0
	.incbin "assets/data_080B4410/gUnk_080B56E0_14.bin"
	.4byte gUnk_080B56D8
	.incbin "assets/data_080B4410/gUnk_080B56E0_15.bin"

gUnk_080B5768:: @ 080B5768
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5768_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5768_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5770:: @ 080B5770
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5770_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5770_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5778:: @ 080B5778
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5778_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5778_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5780:: @ 080B5780
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5780_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5780_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5788:: @ 080B5788
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5788_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5788_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5790:: @ 080B5790
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5790_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5790_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5798:: @ 080B5798
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5798_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5798_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57A0:: @ 080B57A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57A8:: @ 080B57A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57B0:: @ 080B57B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57B8:: @ 080B57B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57C0:: @ 080B57C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57C8:: @ 080B57C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57D0:: @ 080B57D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57D8:: @ 080B57D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57E0:: @ 080B57E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B57E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B57E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B57E8:: @ 080B57E8
	.4byte gUnk_080B5768
	.incbin "assets/data_080B4410/gUnk_080B57E8.bin"
	.4byte gUnk_080B5770
	.incbin "assets/data_080B4410/gUnk_080B57E8_1.bin"
	.4byte gUnk_080B5778
	.incbin "assets/data_080B4410/gUnk_080B57E8_2.bin"
	.4byte gUnk_080B5780
	.incbin "assets/data_080B4410/gUnk_080B57E8_3.bin"
	.4byte gUnk_080B5788
	.incbin "assets/data_080B4410/gUnk_080B57E8_4.bin"
	.4byte gUnk_080B5790
	.incbin "assets/data_080B4410/gUnk_080B57E8_5.bin"
	.4byte gUnk_080B5798
	.incbin "assets/data_080B4410/gUnk_080B57E8_6.bin"
	.4byte gUnk_080B57A0
	.incbin "assets/data_080B4410/gUnk_080B57E8_7.bin"
	.4byte gUnk_080B57A8
	.incbin "assets/data_080B4410/gUnk_080B57E8_8.bin"
	.4byte gUnk_080B57B0
	.incbin "assets/data_080B4410/gUnk_080B57E8_9.bin"
	.4byte gUnk_080B57B8
	.incbin "assets/data_080B4410/gUnk_080B57E8_10.bin"
	.4byte gUnk_080B57C0
	.incbin "assets/data_080B4410/gUnk_080B57E8_11.bin"
	.4byte gUnk_080B57C8
	.incbin "assets/data_080B4410/gUnk_080B57E8_12.bin"
	.4byte gUnk_080B57D0
	.incbin "assets/data_080B4410/gUnk_080B57E8_13.bin"
	.4byte gUnk_080B57D8
	.incbin "assets/data_080B4410/gUnk_080B57E8_14.bin"
	.4byte gUnk_080B57E0
	.incbin "assets/data_080B4410/gUnk_080B57E8_15.bin"

gUnk_080B5870:: @ 080B5870
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5870_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5870_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5878:: @ 080B5878
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5878_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5878_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5880:: @ 080B5880
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5880_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5880_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5888:: @ 080B5888
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5888_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5888_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5890:: @ 080B5890
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5890_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5890_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5898:: @ 080B5898
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5898_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5898_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58A0:: @ 080B58A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58A8:: @ 080B58A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58B0:: @ 080B58B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58B8:: @ 080B58B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58C0:: @ 080B58C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58C8:: @ 080B58C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58D0:: @ 080B58D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58D8:: @ 080B58D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58E0:: @ 080B58E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58E8:: @ 080B58E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B58E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B58E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B58F0:: @ 080B58F0
	.4byte gUnk_080B5870
	.incbin "assets/data_080B4410/gUnk_080B58F0.bin"
	.4byte gUnk_080B5878
	.incbin "assets/data_080B4410/gUnk_080B58F0_1.bin"
	.4byte gUnk_080B5880
	.incbin "assets/data_080B4410/gUnk_080B58F0_2.bin"
	.4byte gUnk_080B5888
	.incbin "assets/data_080B4410/gUnk_080B58F0_3.bin"
	.4byte gUnk_080B5890
	.incbin "assets/data_080B4410/gUnk_080B58F0_4.bin"
	.4byte gUnk_080B5898
	.incbin "assets/data_080B4410/gUnk_080B58F0_5.bin"
	.4byte gUnk_080B58A0
	.incbin "assets/data_080B4410/gUnk_080B58F0_6.bin"
	.4byte gUnk_080B58A8
	.incbin "assets/data_080B4410/gUnk_080B58F0_7.bin"
	.4byte gUnk_080B58B0
	.incbin "assets/data_080B4410/gUnk_080B58F0_8.bin"
	.4byte gUnk_080B58B8
	.incbin "assets/data_080B4410/gUnk_080B58F0_9.bin"
	.4byte gUnk_080B58C0
	.incbin "assets/data_080B4410/gUnk_080B58F0_10.bin"
	.4byte gUnk_080B58C8
	.incbin "assets/data_080B4410/gUnk_080B58F0_11.bin"
	.4byte gUnk_080B58D0
	.incbin "assets/data_080B4410/gUnk_080B58F0_12.bin"
	.4byte gUnk_080B58D8
	.incbin "assets/data_080B4410/gUnk_080B58F0_13.bin"
	.4byte gUnk_080B58E0
	.incbin "assets/data_080B4410/gUnk_080B58F0_14.bin"
	.4byte gUnk_080B58E8
	.incbin "assets/data_080B4410/gUnk_080B58F0_15.bin"

gUnk_080B5978:: @ 080B5978
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5978_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5978_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5980:: @ 080B5980
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5980_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5980_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5988:: @ 080B5988
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5988_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5988_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5990:: @ 080B5990
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5990_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5990_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5998:: @ 080B5998
	.4byte gUnk_080B5978
	.incbin "assets/data_080B4410/gUnk_080B5998.bin"
	.4byte gUnk_080B5980
	.incbin "assets/data_080B4410/gUnk_080B5998_1.bin"
	.4byte gUnk_080B5988
	.incbin "assets/data_080B4410/gUnk_080B5998_2.bin"
	.4byte gUnk_080B5990
	.incbin "assets/data_080B4410/gUnk_080B5998_3.bin"

gUnk_080B59C0:: @ 080B59C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B59C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B59C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B59C8:: @ 080B59C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B59C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B59C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B59D0:: @ 080B59D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B59D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B59D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B59D8:: @ 080B59D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B59D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B59D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B59E0:: @ 080B59E0
	.4byte gUnk_080B59C0
	.incbin "assets/data_080B4410/gUnk_080B59E0.bin"
	.4byte gUnk_080B59C8
	.incbin "assets/data_080B4410/gUnk_080B59E0_1.bin"
	.4byte gUnk_080B59D0
	.incbin "assets/data_080B4410/gUnk_080B59E0_2.bin"
	.4byte gUnk_080B59D8
	.incbin "assets/data_080B4410/gUnk_080B59E0_3.bin"

gUnk_080B5A08:: @ 080B5A08
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A08_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A08_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5A10:: @ 080B5A10
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A10_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A10_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5A18:: @ 080B5A18
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A18_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A18_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5A20:: @ 080B5A20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5A28:: @ 080B5A28
	.4byte gUnk_080B5A08
	.incbin "assets/data_080B4410/gUnk_080B5A28.bin"
	.4byte gUnk_080B5A10
	.incbin "assets/data_080B4410/gUnk_080B5A28_1.bin"
	.4byte gUnk_080B5A18
	.incbin "assets/data_080B4410/gUnk_080B5A28_2.bin"
	.4byte gUnk_080B5A20
	.incbin "assets/data_080B4410/gUnk_080B5A28_3.bin"

gUnk_080B5A50:: @ 080B5A50
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A50_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A50_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5A58:: @ 080B5A58
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A58_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A58_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5A60:: @ 080B5A60
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A60_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A60_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5A68:: @ 080B5A68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5A70:: @ 080B5A70
	.4byte gUnk_080B5A50
	.incbin "assets/data_080B4410/gUnk_080B5A70.bin"
	.4byte gUnk_080B5A58
	.incbin "assets/data_080B4410/gUnk_080B5A70_1.bin"
	.4byte gUnk_080B5A60
	.incbin "assets/data_080B4410/gUnk_080B5A70_2.bin"
	.4byte gUnk_080B5A68
	.incbin "assets/data_080B4410/gUnk_080B5A70_3.bin"

gUnk_080B5A98:: @ 080B5A98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5A98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5A98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5AA0:: @ 080B5AA0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5AA0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5AA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5AA8:: @ 080B5AA8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5AA8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5AA8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5AB0:: @ 080B5AB0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5AB0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5AB0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5AB8:: @ 080B5AB8
	.4byte gUnk_080B5A98
	.incbin "assets/data_080B4410/gUnk_080B5AB8.bin"
	.4byte gUnk_080B5AA0
	.incbin "assets/data_080B4410/gUnk_080B5AB8_1.bin"
	.4byte gUnk_080B5AA8
	.incbin "assets/data_080B4410/gUnk_080B5AB8_2.bin"
	.4byte gUnk_080B5AB0
	.incbin "assets/data_080B4410/gUnk_080B5AB8_3.bin"

gUnk_080B5AE0:: @ 080B5AE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5AE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5AE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5AF0:: @ 080B5AF0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5AF0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5AF0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5B00:: @ 080B5B00
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5B00_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5B00_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5B10:: @ 080B5B10
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5B10_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5B10_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5B20:: @ 080B5B20
	.4byte gUnk_080B5AE0
	.incbin "assets/data_080B4410/gUnk_080B5B20.bin"
	.4byte gUnk_080B5AF0
	.incbin "assets/data_080B4410/gUnk_080B5B20_1.bin"
	.4byte gUnk_080B5B00
	.incbin "assets/data_080B4410/gUnk_080B5B20_2.bin"
	.4byte gUnk_080B5B10
	.incbin "assets/data_080B4410/gUnk_080B5B20_3.bin"

gUnk_080B5B48:: @ 080B5B48
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5B48_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5B48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5B50:: @ 080B5B50
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5B50_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5B50_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5B58:: @ 080B5B58
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5B58_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5B58_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5B60:: @ 080B5B60
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5B60_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5B60_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5B68:: @ 080B5B68
	.4byte gUnk_080B5B48
	.incbin "assets/data_080B4410/gUnk_080B5B68.bin"
	.4byte gUnk_080B5B50
	.incbin "assets/data_080B4410/gUnk_080B5B68_1.bin"
	.4byte gUnk_080B5B58
	.incbin "assets/data_080B4410/gUnk_080B5B68_2.bin"
	.4byte gUnk_080B5B60
	.incbin "assets/data_080B4410/gUnk_080B5B68_3.bin"

gUnk_080B5B90:: @ 080B5B90
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5B90_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5B90_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5B98:: @ 080B5B98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5B98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5B98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5BA0:: @ 080B5BA0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5BA0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5BA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5BA8:: @ 080B5BA8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5BA8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5BA8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5BB0:: @ 080B5BB0
	.4byte gUnk_080B5B90
	.incbin "assets/data_080B4410/gUnk_080B5BB0.bin"
	.4byte gUnk_080B5B98
	.incbin "assets/data_080B4410/gUnk_080B5BB0_1.bin"
	.4byte gUnk_080B5BA0
	.incbin "assets/data_080B4410/gUnk_080B5BB0_2.bin"
	.4byte gUnk_080B5BA8
	.incbin "assets/data_080B4410/gUnk_080B5BB0_3.bin"

gUnk_080B5BD8:: @ 080B5BD8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5BD8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5BD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5BE0:: @ 080B5BE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5BE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5BE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5BE8:: @ 080B5BE8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5BE8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5BE8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5BF0:: @ 080B5BF0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5BF0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5BF0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5BF8:: @ 080B5BF8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5BF8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5BF8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C00:: @ 080B5C00
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C00_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C00_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C08:: @ 080B5C08
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C08_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C08_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C10:: @ 080B5C10
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C10_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C10_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C18:: @ 080B5C18
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C18_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C18_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C20:: @ 080B5C20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C28:: @ 080B5C28
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C28_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C30:: @ 080B5C30
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C30_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C38:: @ 080B5C38
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C38_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C38_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C40:: @ 080B5C40
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C40_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C40_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C48:: @ 080B5C48
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C48_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C50:: @ 080B5C50
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5C50_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5C50_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5C58:: @ 080B5C58
	.4byte gUnk_080B5BD8
	.incbin "assets/data_080B4410/gUnk_080B5C58.bin"
	.4byte gUnk_080B5BE0
	.incbin "assets/data_080B4410/gUnk_080B5C58_1.bin"
	.4byte gUnk_080B5BE8
	.incbin "assets/data_080B4410/gUnk_080B5C58_2.bin"
	.4byte gUnk_080B5BF0
	.incbin "assets/data_080B4410/gUnk_080B5C58_3.bin"
	.4byte gUnk_080B5BF8
	.incbin "assets/data_080B4410/gUnk_080B5C58_4.bin"
	.4byte gUnk_080B5C00
	.incbin "assets/data_080B4410/gUnk_080B5C58_5.bin"
	.4byte gUnk_080B5C08
	.incbin "assets/data_080B4410/gUnk_080B5C58_6.bin"
	.4byte gUnk_080B5C10
	.incbin "assets/data_080B4410/gUnk_080B5C58_7.bin"
	.4byte gUnk_080B5C18
	.incbin "assets/data_080B4410/gUnk_080B5C58_8.bin"
	.4byte gUnk_080B5C20
	.incbin "assets/data_080B4410/gUnk_080B5C58_9.bin"
	.4byte gUnk_080B5C28
	.incbin "assets/data_080B4410/gUnk_080B5C58_10.bin"
	.4byte gUnk_080B5C30
	.incbin "assets/data_080B4410/gUnk_080B5C58_11.bin"
	.4byte gUnk_080B5C38
	.incbin "assets/data_080B4410/gUnk_080B5C58_12.bin"
	.4byte gUnk_080B5C40
	.incbin "assets/data_080B4410/gUnk_080B5C58_13.bin"
	.4byte gUnk_080B5C48
	.incbin "assets/data_080B4410/gUnk_080B5C58_14.bin"
	.4byte gUnk_080B5C50
	.incbin "assets/data_080B4410/gUnk_080B5C58_15.bin"

gUnk_080B5CE0:: @ 080B5CE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5CE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5CE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5CF8:: @ 080B5CF8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5CF8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5CF8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5D10:: @ 080B5D10
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5D10_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5D10_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5D28:: @ 080B5D28
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5D28_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5D28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5D40:: @ 080B5D40
	.4byte gUnk_080B5CE0
	.incbin "assets/data_080B4410/gUnk_080B5D40.bin"
	.4byte gUnk_080B5CF8
	.incbin "assets/data_080B4410/gUnk_080B5D40_1.bin"
	.4byte gUnk_080B5D10
	.incbin "assets/data_080B4410/gUnk_080B5D40_2.bin"
	.4byte gUnk_080B5D28
	.incbin "assets/data_080B4410/gUnk_080B5D40_3.bin"

gUnk_080B5D68:: @ 080B5D68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5D68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5D68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5D78:: @ 080B5D78
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5D78_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5D78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5D88:: @ 080B5D88
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5D88_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5D88_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5D98:: @ 080B5D98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5D98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5D98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5DA8:: @ 080B5DA8
	.4byte gUnk_080B5D68
	.incbin "assets/data_080B4410/gUnk_080B5DA8.bin"
	.4byte gUnk_080B5D78
	.incbin "assets/data_080B4410/gUnk_080B5DA8_1.bin"
	.4byte gUnk_080B5D88
	.incbin "assets/data_080B4410/gUnk_080B5DA8_2.bin"
	.4byte gUnk_080B5D98
	.incbin "assets/data_080B4410/gUnk_080B5DA8_3.bin"

gUnk_080B5DD0:: @ 080B5DD0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5DD0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5DD0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5DD8:: @ 080B5DD8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5DD8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5DD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5DE0:: @ 080B5DE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5DE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5DE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5DE8:: @ 080B5DE8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5DE8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5DE8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5DF0:: @ 080B5DF0
	.4byte gUnk_080B5DD0
	.incbin "assets/data_080B4410/gUnk_080B5DF0.bin"
	.4byte gUnk_080B5DD8
	.incbin "assets/data_080B4410/gUnk_080B5DF0_1.bin"
	.4byte gUnk_080B5DE0
	.incbin "assets/data_080B4410/gUnk_080B5DF0_2.bin"
	.4byte gUnk_080B5DE8
	.incbin "assets/data_080B4410/gUnk_080B5DF0_3.bin"

gUnk_080B5E18:: @ 080B5E18
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E18_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E18_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E20:: @ 080B5E20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E28:: @ 080B5E28
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E28_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E30:: @ 080B5E30
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E30_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E38:: @ 080B5E38
	.4byte gUnk_080B5E18
	.incbin "assets/data_080B4410/gUnk_080B5E38.bin"
	.4byte gUnk_080B5E20
	.incbin "assets/data_080B4410/gUnk_080B5E38_1.bin"
	.4byte gUnk_080B5E28
	.incbin "assets/data_080B4410/gUnk_080B5E38_2.bin"
	.4byte gUnk_080B5E30
	.incbin "assets/data_080B4410/gUnk_080B5E38_3.bin"

gUnk_080B5E60:: @ 080B5E60
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E60_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E60_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E68:: @ 080B5E68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E70:: @ 080B5E70
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E70_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E70_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E78:: @ 080B5E78
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E78_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E80:: @ 080B5E80
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5E80_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5E80_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5E88:: @ 080B5E88
	.4byte gUnk_080B5E60
	.incbin "assets/data_080B4410/gUnk_080B5E88.bin"
	.4byte gUnk_080B5E68
	.incbin "assets/data_080B4410/gUnk_080B5E88_1.bin"
	.4byte gUnk_080B5E70
	.incbin "assets/data_080B4410/gUnk_080B5E88_2.bin"
	.4byte gUnk_080B5E78
	.incbin "assets/data_080B4410/gUnk_080B5E88_3.bin"
	.4byte gUnk_080B5E80
	.incbin "assets/data_080B4410/gUnk_080B5E88_4.bin"

gUnk_080B5EB8:: @ 080B5EB8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5EB8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5EB8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5EC0:: @ 080B5EC0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5EC0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5EC0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5EC8:: @ 080B5EC8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5EC8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5EC8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5ED0:: @ 080B5ED0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5ED0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5ED0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5ED8:: @ 080B5ED8
	.4byte gUnk_080B5EB8
	.incbin "assets/data_080B4410/gUnk_080B5ED8.bin"
	.4byte gUnk_080B5EC0
	.incbin "assets/data_080B4410/gUnk_080B5ED8_1.bin"
	.4byte gUnk_080B5EC8
	.incbin "assets/data_080B4410/gUnk_080B5ED8_2.bin"
	.4byte gUnk_080B5ED0
	.incbin "assets/data_080B4410/gUnk_080B5ED8_3.bin"

gUnk_080B5F00:: @ 080B5F00
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F00_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F00_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F08:: @ 080B5F08
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F08_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F08_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F10:: @ 080B5F10
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F10_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F10_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F18:: @ 080B5F18
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F18_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F18_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F20:: @ 080B5F20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F28:: @ 080B5F28
	.4byte gUnk_080B5F00
	.incbin "assets/data_080B4410/gUnk_080B5F28.bin"
	.4byte gUnk_080B5F08
	.incbin "assets/data_080B4410/gUnk_080B5F28_1.bin"
	.4byte gUnk_080B5F10
	.incbin "assets/data_080B4410/gUnk_080B5F28_2.bin"
	.4byte gUnk_080B5F18
	.incbin "assets/data_080B4410/gUnk_080B5F28_3.bin"
	.4byte gUnk_080B5F20
	.incbin "assets/data_080B4410/gUnk_080B5F28_4.bin"

gUnk_080B5F58:: @ 080B5F58
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F58_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F58_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F60:: @ 080B5F60
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F60_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F60_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F68:: @ 080B5F68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F70:: @ 080B5F70
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F70_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F70_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F78:: @ 080B5F78
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5F78_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5F78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5F80:: @ 080B5F80
	.4byte gUnk_080B5F58
	.incbin "assets/data_080B4410/gUnk_080B5F80.bin"
	.4byte gUnk_080B5F60
	.incbin "assets/data_080B4410/gUnk_080B5F80_1.bin"
	.4byte gUnk_080B5F68
	.incbin "assets/data_080B4410/gUnk_080B5F80_2.bin"
	.4byte gUnk_080B5F70
	.incbin "assets/data_080B4410/gUnk_080B5F80_3.bin"
	.4byte gUnk_080B5F78
	.incbin "assets/data_080B4410/gUnk_080B5F80_4.bin"

gUnk_080B5FB0:: @ 080B5FB0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5FB0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5FB0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5FB8:: @ 080B5FB8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5FB8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5FB8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5FC0:: @ 080B5FC0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5FC0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5FC0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5FC8:: @ 080B5FC8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5FC8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5FC8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B5FD0:: @ 080B5FD0
	.4byte gUnk_080B5FB0
	.incbin "assets/data_080B4410/gUnk_080B5FD0.bin"
	.4byte gUnk_080B5FB8
	.incbin "assets/data_080B4410/gUnk_080B5FD0_1.bin"
	.4byte gUnk_080B5FC0
	.incbin "assets/data_080B4410/gUnk_080B5FD0_2.bin"
	.4byte gUnk_080B5FC8
	.incbin "assets/data_080B4410/gUnk_080B5FD0_3.bin"

gUnk_080B5FF8:: @ 080B5FF8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B5FF8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B5FF8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6000:: @ 080B6000
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6000_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6000_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6008:: @ 080B6008
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6008_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6008_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6010:: @ 080B6010
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6010_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6010_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6018:: @ 080B6018
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6018_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6018_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6020:: @ 080B6020
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6020_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6020_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6028:: @ 080B6028
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6028_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6028_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6030:: @ 080B6030
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6030_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6030_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6038:: @ 080B6038
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6038_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6038_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6040:: @ 080B6040
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6040_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6040_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6048:: @ 080B6048
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6048_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6048_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6050:: @ 080B6050
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6050_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6050_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6058:: @ 080B6058
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6058_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6058_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6060:: @ 080B6060
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6060_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6060_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6068:: @ 080B6068
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6068_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6068_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6070:: @ 080B6070
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6070_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6070_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6078:: @ 080B6078
	.4byte gUnk_080B5FF8
	.incbin "assets/data_080B4410/gUnk_080B6078.bin"
	.4byte gUnk_080B6000
	.incbin "assets/data_080B4410/gUnk_080B6078_1.bin"
	.4byte gUnk_080B6008
	.incbin "assets/data_080B4410/gUnk_080B6078_2.bin"
	.4byte gUnk_080B6010
	.incbin "assets/data_080B4410/gUnk_080B6078_3.bin"
	.4byte gUnk_080B6018
	.incbin "assets/data_080B4410/gUnk_080B6078_4.bin"
	.4byte gUnk_080B6020
	.incbin "assets/data_080B4410/gUnk_080B6078_5.bin"
	.4byte gUnk_080B6028
	.incbin "assets/data_080B4410/gUnk_080B6078_6.bin"
	.4byte gUnk_080B6030
	.incbin "assets/data_080B4410/gUnk_080B6078_7.bin"
	.4byte gUnk_080B6038
	.incbin "assets/data_080B4410/gUnk_080B6078_8.bin"
	.4byte gUnk_080B6040
	.incbin "assets/data_080B4410/gUnk_080B6078_9.bin"
	.4byte gUnk_080B6048
	.incbin "assets/data_080B4410/gUnk_080B6078_10.bin"
	.4byte gUnk_080B6050
	.incbin "assets/data_080B4410/gUnk_080B6078_11.bin"
	.4byte gUnk_080B6058
	.incbin "assets/data_080B4410/gUnk_080B6078_12.bin"
	.4byte gUnk_080B6060
	.incbin "assets/data_080B4410/gUnk_080B6078_13.bin"
	.4byte gUnk_080B6068
	.incbin "assets/data_080B4410/gUnk_080B6078_14.bin"
	.4byte gUnk_080B6070
	.incbin "assets/data_080B4410/gUnk_080B6078_15.bin"

gUnk_080B6100:: @ 080B6100
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6100_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6100_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6108:: @ 080B6108
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6108_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6108_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6110:: @ 080B6110
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6110_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6110_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6118:: @ 080B6118
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6118_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6118_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6120:: @ 080B6120
	.4byte gUnk_080B6100
	.incbin "assets/data_080B4410/gUnk_080B6120.bin"
	.4byte gUnk_080B6108
	.incbin "assets/data_080B4410/gUnk_080B6120_1.bin"
	.4byte gUnk_080B6110
	.incbin "assets/data_080B4410/gUnk_080B6120_2.bin"
	.4byte gUnk_080B6118
	.incbin "assets/data_080B4410/gUnk_080B6120_3.bin"

gUnk_080B6148:: @ 080B6148
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6148_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6148_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6150:: @ 080B6150
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6150_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6150_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6158:: @ 080B6158
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6158_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6158_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6160:: @ 080B6160
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6160_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6160_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6168:: @ 080B6168
	.4byte gUnk_080B6148
	.incbin "assets/data_080B4410/gUnk_080B6168.bin"
	.4byte gUnk_080B6150
	.incbin "assets/data_080B4410/gUnk_080B6168_1.bin"
	.4byte gUnk_080B6158
	.incbin "assets/data_080B4410/gUnk_080B6168_2.bin"
	.4byte gUnk_080B6160
	.incbin "assets/data_080B4410/gUnk_080B6168_3.bin"

gUnk_080B6190:: @ 080B6190
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6190_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6190_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6198:: @ 080B6198
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6198_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6198_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B61A0:: @ 080B61A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B61A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B61A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B61A8:: @ 080B61A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B61A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B61A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B61B0:: @ 080B61B0
	.4byte gUnk_080B6190
	.incbin "assets/data_080B4410/gUnk_080B61B0.bin"
	.4byte gUnk_080B6198
	.incbin "assets/data_080B4410/gUnk_080B61B0_1.bin"
	.4byte gUnk_080B61A0
	.incbin "assets/data_080B4410/gUnk_080B61B0_2.bin"
	.4byte gUnk_080B61A8
	.incbin "assets/data_080B4410/gUnk_080B61B0_3.bin"

gUnk_080B61D8:: @ 080B61D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B61D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B61D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B61E0:: @ 080B61E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B61E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B61E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B61E8:: @ 080B61E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B61E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B61E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B61F0:: @ 080B61F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B61F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B61F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B61F8:: @ 080B61F8
	.4byte gUnk_080B61D8
	.incbin "assets/data_080B4410/gUnk_080B61F8.bin"
	.4byte gUnk_080B61E0
	.incbin "assets/data_080B4410/gUnk_080B61F8_1.bin"
	.4byte gUnk_080B61E8
	.incbin "assets/data_080B4410/gUnk_080B61F8_2.bin"
	.4byte gUnk_080B61F0
	.incbin "assets/data_080B4410/gUnk_080B61F8_3.bin"

gUnk_080B6220:: @ 080B6220
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6220_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6220_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6228:: @ 080B6228
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6228_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6228_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6230:: @ 080B6230
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6230_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6230_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6238:: @ 080B6238
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6238_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6238_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6240:: @ 080B6240
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6240_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6240_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6248:: @ 080B6248
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6248_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6248_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6250:: @ 080B6250
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6250_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6250_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6258:: @ 080B6258
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6258_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6258_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6260:: @ 080B6260
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6260_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6260_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6268:: @ 080B6268
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6268_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6268_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6270:: @ 080B6270
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6270_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6270_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6278:: @ 080B6278
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6278_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6278_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6280:: @ 080B6280
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6280_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6280_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6288:: @ 080B6288
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6288_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6288_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6290:: @ 080B6290
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6290_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6290_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6298:: @ 080B6298
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6298_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6298_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B62A0:: @ 080B62A0
	.4byte gUnk_080B6220
	.incbin "assets/data_080B4410/gUnk_080B62A0.bin"
	.4byte gUnk_080B6228
	.incbin "assets/data_080B4410/gUnk_080B62A0_1.bin"
	.4byte gUnk_080B6230
	.incbin "assets/data_080B4410/gUnk_080B62A0_2.bin"
	.4byte gUnk_080B6238
	.incbin "assets/data_080B4410/gUnk_080B62A0_3.bin"
	.4byte gUnk_080B6240
	.incbin "assets/data_080B4410/gUnk_080B62A0_4.bin"
	.4byte gUnk_080B6248
	.incbin "assets/data_080B4410/gUnk_080B62A0_5.bin"
	.4byte gUnk_080B6250
	.incbin "assets/data_080B4410/gUnk_080B62A0_6.bin"
	.4byte gUnk_080B6258
	.incbin "assets/data_080B4410/gUnk_080B62A0_7.bin"
	.4byte gUnk_080B6260
	.incbin "assets/data_080B4410/gUnk_080B62A0_8.bin"
	.4byte gUnk_080B6268
	.incbin "assets/data_080B4410/gUnk_080B62A0_9.bin"
	.4byte gUnk_080B6270
	.incbin "assets/data_080B4410/gUnk_080B62A0_10.bin"
	.4byte gUnk_080B6278
	.incbin "assets/data_080B4410/gUnk_080B62A0_11.bin"
	.4byte gUnk_080B6280
	.incbin "assets/data_080B4410/gUnk_080B62A0_12.bin"
	.4byte gUnk_080B6288
	.incbin "assets/data_080B4410/gUnk_080B62A0_13.bin"
	.4byte gUnk_080B6290
	.incbin "assets/data_080B4410/gUnk_080B62A0_14.bin"
	.4byte gUnk_080B6298
	.incbin "assets/data_080B4410/gUnk_080B62A0_15.bin"

gUnk_080B6328:: @ 080B6328
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6328_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6328_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6330:: @ 080B6330
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6330_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6330_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6338:: @ 080B6338
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6338_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6338_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6340:: @ 080B6340
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6340_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6340_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6348:: @ 080B6348
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6348_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6348_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6350:: @ 080B6350
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6350_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6350_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6358:: @ 080B6358
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6358_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6358_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6360:: @ 080B6360
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6360_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6360_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6368:: @ 080B6368
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6368_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6368_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6370:: @ 080B6370
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6370_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6370_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6378:: @ 080B6378
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6378_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6378_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6380:: @ 080B6380
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6380_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6380_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6388:: @ 080B6388
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6388_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6388_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6390:: @ 080B6390
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6390_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6390_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6398:: @ 080B6398
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6398_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6398_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B63A0:: @ 080B63A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B63A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B63A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B63A8:: @ 080B63A8
	.4byte gUnk_080B6328
	.incbin "assets/data_080B4410/gUnk_080B63A8.bin"
	.4byte gUnk_080B6330
	.incbin "assets/data_080B4410/gUnk_080B63A8_1.bin"
	.4byte gUnk_080B6338
	.incbin "assets/data_080B4410/gUnk_080B63A8_2.bin"
	.4byte gUnk_080B6340
	.incbin "assets/data_080B4410/gUnk_080B63A8_3.bin"
	.4byte gUnk_080B6348
	.incbin "assets/data_080B4410/gUnk_080B63A8_4.bin"
	.4byte gUnk_080B6350
	.incbin "assets/data_080B4410/gUnk_080B63A8_5.bin"
	.4byte gUnk_080B6358
	.incbin "assets/data_080B4410/gUnk_080B63A8_6.bin"
	.4byte gUnk_080B6360
	.incbin "assets/data_080B4410/gUnk_080B63A8_7.bin"
	.4byte gUnk_080B6368
	.incbin "assets/data_080B4410/gUnk_080B63A8_8.bin"
	.4byte gUnk_080B6370
	.incbin "assets/data_080B4410/gUnk_080B63A8_9.bin"
	.4byte gUnk_080B6378
	.incbin "assets/data_080B4410/gUnk_080B63A8_10.bin"
	.4byte gUnk_080B6380
	.incbin "assets/data_080B4410/gUnk_080B63A8_11.bin"
	.4byte gUnk_080B6388
	.incbin "assets/data_080B4410/gUnk_080B63A8_12.bin"
	.4byte gUnk_080B6390
	.incbin "assets/data_080B4410/gUnk_080B63A8_13.bin"
	.4byte gUnk_080B6398
	.incbin "assets/data_080B4410/gUnk_080B63A8_14.bin"
	.4byte gUnk_080B63A0
	.incbin "assets/data_080B4410/gUnk_080B63A8_15.bin"

gUnk_080B6430:: @ 080B6430
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6430_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6430_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6438:: @ 080B6438
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6438_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6438_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6440:: @ 080B6440
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6440_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6440_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6448:: @ 080B6448
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6448_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6448_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6450:: @ 080B6450
	.4byte gUnk_080B6430
	.incbin "assets/data_080B4410/gUnk_080B6450.bin"
	.4byte gUnk_080B6438
	.incbin "assets/data_080B4410/gUnk_080B6450_1.bin"
	.4byte gUnk_080B6440
	.incbin "assets/data_080B4410/gUnk_080B6450_2.bin"
	.4byte gUnk_080B6448
	.incbin "assets/data_080B4410/gUnk_080B6450_3.bin"

gUnk_080B6478:: @ 080B6478
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6478_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6478_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6480:: @ 080B6480
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6480_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6480_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6488:: @ 080B6488
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6488_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6488_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6490:: @ 080B6490
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6490_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6490_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6498:: @ 080B6498
	.4byte gUnk_080B6478
	.incbin "assets/data_080B4410/gUnk_080B6498.bin"
	.4byte gUnk_080B6480
	.incbin "assets/data_080B4410/gUnk_080B6498_1.bin"
	.4byte gUnk_080B6488
	.incbin "assets/data_080B4410/gUnk_080B6498_2.bin"
	.4byte gUnk_080B6490
	.incbin "assets/data_080B4410/gUnk_080B6498_3.bin"

gUnk_080B64C0:: @ 080B64C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B64C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B64C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B64C8:: @ 080B64C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B64C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B64C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B64D0:: @ 080B64D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B64D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B64D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B64D8:: @ 080B64D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B64D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B64D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B64E0:: @ 080B64E0
	.4byte gUnk_080B64C0
	.incbin "assets/data_080B4410/gUnk_080B64E0.bin"
	.4byte gUnk_080B64C8
	.incbin "assets/data_080B4410/gUnk_080B64E0_1.bin"
	.4byte gUnk_080B64D0
	.incbin "assets/data_080B4410/gUnk_080B64E0_2.bin"
	.4byte gUnk_080B64D8
	.incbin "assets/data_080B4410/gUnk_080B64E0_3.bin"

gUnk_080B6508:: @ 080B6508
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6508_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6508_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6510:: @ 080B6510
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6510_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6510_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6518:: @ 080B6518
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6518_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6518_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6520:: @ 080B6520
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6520_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6520_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6528:: @ 080B6528
	.4byte gUnk_080B6508
	.incbin "assets/data_080B4410/gUnk_080B6528.bin"
	.4byte gUnk_080B6510
	.incbin "assets/data_080B4410/gUnk_080B6528_1.bin"
	.4byte gUnk_080B6518
	.incbin "assets/data_080B4410/gUnk_080B6528_2.bin"
	.4byte gUnk_080B6520
	.incbin "assets/data_080B4410/gUnk_080B6528_3.bin"

gUnk_080B6550:: @ 080B6550
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6550_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6550_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6558:: @ 080B6558
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6558_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6558_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6560:: @ 080B6560
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6560_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6560_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6568:: @ 080B6568
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6568_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6568_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6570:: @ 080B6570
	.4byte gUnk_080B6550
	.incbin "assets/data_080B4410/gUnk_080B6570.bin"
	.4byte gUnk_080B6558
	.incbin "assets/data_080B4410/gUnk_080B6570_1.bin"
	.4byte gUnk_080B6560
	.incbin "assets/data_080B4410/gUnk_080B6570_2.bin"
	.4byte gUnk_080B6568
	.incbin "assets/data_080B4410/gUnk_080B6570_3.bin"

gUnk_080B6598:: @ 080B6598
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6598_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6598_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65A0:: @ 080B65A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65A8:: @ 080B65A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65B0:: @ 080B65B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65B8:: @ 080B65B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65C0:: @ 080B65C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65C8:: @ 080B65C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65D0:: @ 080B65D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65D8:: @ 080B65D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65E0:: @ 080B65E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65E8:: @ 080B65E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65F0:: @ 080B65F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B65F8:: @ 080B65F8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B65F8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B65F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6600:: @ 080B6600
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6600_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6600_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6608:: @ 080B6608
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6608_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6608_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6610:: @ 080B6610
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6610_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6610_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6618:: @ 080B6618
	.4byte gUnk_080B6598
	.incbin "assets/data_080B4410/gUnk_080B6618.bin"
	.4byte gUnk_080B65A0
	.incbin "assets/data_080B4410/gUnk_080B6618_1.bin"
	.4byte gUnk_080B65A8
	.incbin "assets/data_080B4410/gUnk_080B6618_2.bin"
	.4byte gUnk_080B65B0
	.incbin "assets/data_080B4410/gUnk_080B6618_3.bin"
	.4byte gUnk_080B65B8
	.incbin "assets/data_080B4410/gUnk_080B6618_4.bin"
	.4byte gUnk_080B65C0
	.incbin "assets/data_080B4410/gUnk_080B6618_5.bin"
	.4byte gUnk_080B65C8
	.incbin "assets/data_080B4410/gUnk_080B6618_6.bin"
	.4byte gUnk_080B65D0
	.incbin "assets/data_080B4410/gUnk_080B6618_7.bin"
	.4byte gUnk_080B65D8
	.incbin "assets/data_080B4410/gUnk_080B6618_8.bin"
	.4byte gUnk_080B65E0
	.incbin "assets/data_080B4410/gUnk_080B6618_9.bin"
	.4byte gUnk_080B65E8
	.incbin "assets/data_080B4410/gUnk_080B6618_10.bin"
	.4byte gUnk_080B65F0
	.incbin "assets/data_080B4410/gUnk_080B6618_11.bin"
	.4byte gUnk_080B65F8
	.incbin "assets/data_080B4410/gUnk_080B6618_12.bin"
	.4byte gUnk_080B6600
	.incbin "assets/data_080B4410/gUnk_080B6618_13.bin"
	.4byte gUnk_080B6608
	.incbin "assets/data_080B4410/gUnk_080B6618_14.bin"
	.4byte gUnk_080B6610
	.incbin "assets/data_080B4410/gUnk_080B6618_15.bin"

gUnk_080B66A0:: @ 080B66A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66A8:: @ 080B66A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66B0:: @ 080B66B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66B8:: @ 080B66B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66C0:: @ 080B66C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66C8:: @ 080B66C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66D0:: @ 080B66D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66D8:: @ 080B66D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66E0:: @ 080B66E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66E8:: @ 080B66E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66F0:: @ 080B66F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B66F8:: @ 080B66F8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B66F8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B66F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6700:: @ 080B6700
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6700_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6700_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6708:: @ 080B6708
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6708_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6708_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6710:: @ 080B6710
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6710_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6710_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6718:: @ 080B6718
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6718_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6718_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6720:: @ 080B6720
	.4byte gUnk_080B66A0
	.incbin "assets/data_080B4410/gUnk_080B6720.bin"
	.4byte gUnk_080B66A8
	.incbin "assets/data_080B4410/gUnk_080B6720_1.bin"
	.4byte gUnk_080B66B0
	.incbin "assets/data_080B4410/gUnk_080B6720_2.bin"
	.4byte gUnk_080B66B8
	.incbin "assets/data_080B4410/gUnk_080B6720_3.bin"
	.4byte gUnk_080B66C0
	.incbin "assets/data_080B4410/gUnk_080B6720_4.bin"
	.4byte gUnk_080B66C8
	.incbin "assets/data_080B4410/gUnk_080B6720_5.bin"
	.4byte gUnk_080B66D0
	.incbin "assets/data_080B4410/gUnk_080B6720_6.bin"
	.4byte gUnk_080B66D8
	.incbin "assets/data_080B4410/gUnk_080B6720_7.bin"
	.4byte gUnk_080B66E0
	.incbin "assets/data_080B4410/gUnk_080B6720_8.bin"
	.4byte gUnk_080B66E8
	.incbin "assets/data_080B4410/gUnk_080B6720_9.bin"
	.4byte gUnk_080B66F0
	.incbin "assets/data_080B4410/gUnk_080B6720_10.bin"
	.4byte gUnk_080B66F8
	.incbin "assets/data_080B4410/gUnk_080B6720_11.bin"
	.4byte gUnk_080B6700
	.incbin "assets/data_080B4410/gUnk_080B6720_12.bin"
	.4byte gUnk_080B6708
	.incbin "assets/data_080B4410/gUnk_080B6720_13.bin"
	.4byte gUnk_080B6710
	.incbin "assets/data_080B4410/gUnk_080B6720_14.bin"
	.4byte gUnk_080B6718
	.incbin "assets/data_080B4410/gUnk_080B6720_15.bin"

gUnk_080B67A8:: @ 080B67A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B67A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B67A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B67B0:: @ 080B67B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B67B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B67B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B67B8:: @ 080B67B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B67B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B67B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B67C0:: @ 080B67C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B67C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B67C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B67C8:: @ 080B67C8
	.4byte gUnk_080B67A8
	.incbin "assets/data_080B4410/gUnk_080B67C8.bin"
	.4byte gUnk_080B67B0
	.incbin "assets/data_080B4410/gUnk_080B67C8_1.bin"
	.4byte gUnk_080B67B8
	.incbin "assets/data_080B4410/gUnk_080B67C8_2.bin"
	.4byte gUnk_080B67C0
	.incbin "assets/data_080B4410/gUnk_080B67C8_3.bin"

gUnk_080B67F0:: @ 080B67F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B67F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B67F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B67F8:: @ 080B67F8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B67F8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B67F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6800:: @ 080B6800
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6800_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6800_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6808:: @ 080B6808
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6808_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6808_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6810:: @ 080B6810
	.4byte gUnk_080B67F0
	.incbin "assets/data_080B4410/gUnk_080B6810.bin"
	.4byte gUnk_080B67F8
	.incbin "assets/data_080B4410/gUnk_080B6810_1.bin"
	.4byte gUnk_080B6800
	.incbin "assets/data_080B4410/gUnk_080B6810_2.bin"
	.4byte gUnk_080B6808
	.incbin "assets/data_080B4410/gUnk_080B6810_3.bin"

gUnk_080B6838:: @ 080B6838
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6838_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6838_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6840:: @ 080B6840
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6840_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6840_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6848:: @ 080B6848
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6848_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6848_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6850:: @ 080B6850
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6850_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6850_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6858:: @ 080B6858
	.4byte gUnk_080B6838
	.incbin "assets/data_080B4410/gUnk_080B6858.bin"
	.4byte gUnk_080B6840
	.incbin "assets/data_080B4410/gUnk_080B6858_1.bin"
	.4byte gUnk_080B6848
	.incbin "assets/data_080B4410/gUnk_080B6858_2.bin"
	.4byte gUnk_080B6850
	.incbin "assets/data_080B4410/gUnk_080B6858_3.bin"

gUnk_080B6880:: @ 080B6880
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6880_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6880_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6888:: @ 080B6888
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6888_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6888_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6890:: @ 080B6890
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6890_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6890_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6898:: @ 080B6898
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6898_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6898_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B68A0:: @ 080B68A0
	.4byte gUnk_080B6880
	.incbin "assets/data_080B4410/gUnk_080B68A0.bin"
	.4byte gUnk_080B6888
	.incbin "assets/data_080B4410/gUnk_080B68A0_1.bin"
	.4byte gUnk_080B6890
	.incbin "assets/data_080B4410/gUnk_080B68A0_2.bin"
	.4byte gUnk_080B6898
	.incbin "assets/data_080B4410/gUnk_080B68A0_3.bin"

gUnk_080B68C8:: @ 080B68C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B68C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B68C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B68D0:: @ 080B68D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B68D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B68D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B68D8:: @ 080B68D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B68D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B68D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B68E0:: @ 080B68E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B68E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B68E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B68E8:: @ 080B68E8
	.4byte gUnk_080B68C8
	.incbin "assets/data_080B4410/gUnk_080B68E8.bin"
	.4byte gUnk_080B68D0
	.incbin "assets/data_080B4410/gUnk_080B68E8_1.bin"
	.4byte gUnk_080B68D8
	.incbin "assets/data_080B4410/gUnk_080B68E8_2.bin"
	.4byte gUnk_080B68E0
	.incbin "assets/data_080B4410/gUnk_080B68E8_3.bin"

gUnk_080B6910:: @ 080B6910
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6910_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6910_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6918:: @ 080B6918
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6918_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6918_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6920:: @ 080B6920
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6920_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6920_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6928:: @ 080B6928
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6928_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6928_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6930:: @ 080B6930
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6930_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6930_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6938:: @ 080B6938
	.4byte gUnk_080B6910
	.incbin "assets/data_080B4410/gUnk_080B6938.bin"
	.4byte gUnk_080B6918
	.incbin "assets/data_080B4410/gUnk_080B6938_1.bin"
	.4byte gUnk_080B6920
	.incbin "assets/data_080B4410/gUnk_080B6938_2.bin"
	.4byte gUnk_080B6928
	.incbin "assets/data_080B4410/gUnk_080B6938_3.bin"
	.4byte gUnk_080B6930
	.incbin "assets/data_080B4410/gUnk_080B6938_4.bin"
	.4byte gUnk_080B6928
	.incbin "assets/data_080B4410/gUnk_080B6938_5.bin"
	.4byte gUnk_080B6920
	.incbin "assets/data_080B4410/gUnk_080B6938_6.bin"
	.4byte gUnk_080B6918
	.incbin "assets/data_080B4410/gUnk_080B6938_7.bin"

gUnk_080B6980:: @ 080B6980
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6980_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6980_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6988:: @ 080B6988
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6988_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6988_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6990:: @ 080B6990
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6990_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6990_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6998:: @ 080B6998
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6998_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6998_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69A0:: @ 080B69A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69A8:: @ 080B69A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69B0:: @ 080B69B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69B8:: @ 080B69B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69C0:: @ 080B69C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69C8:: @ 080B69C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69D0:: @ 080B69D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69D8:: @ 080B69D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69E0:: @ 080B69E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69E8:: @ 080B69E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69F0:: @ 080B69F0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69F0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69F0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B69F8:: @ 080B69F8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B69F8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B69F8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6A00:: @ 080B6A00
	.4byte gUnk_080B6980
	.incbin "assets/data_080B4410/gUnk_080B6A00.bin"
	.4byte gUnk_080B6988
	.incbin "assets/data_080B4410/gUnk_080B6A00_1.bin"
	.4byte gUnk_080B6990
	.incbin "assets/data_080B4410/gUnk_080B6A00_2.bin"
	.4byte gUnk_080B6998
	.incbin "assets/data_080B4410/gUnk_080B6A00_3.bin"
	.4byte gUnk_080B69A0
	.incbin "assets/data_080B4410/gUnk_080B6A00_4.bin"
	.4byte gUnk_080B69A8
	.incbin "assets/data_080B4410/gUnk_080B6A00_5.bin"
	.4byte gUnk_080B69B0
	.incbin "assets/data_080B4410/gUnk_080B6A00_6.bin"
	.4byte gUnk_080B69B8
	.incbin "assets/data_080B4410/gUnk_080B6A00_7.bin"
	.4byte gUnk_080B69C0
	.incbin "assets/data_080B4410/gUnk_080B6A00_8.bin"
	.4byte gUnk_080B69C8
	.incbin "assets/data_080B4410/gUnk_080B6A00_9.bin"
	.4byte gUnk_080B69D0
	.incbin "assets/data_080B4410/gUnk_080B6A00_10.bin"
	.4byte gUnk_080B69D8
	.incbin "assets/data_080B4410/gUnk_080B6A00_11.bin"
	.4byte gUnk_080B69E0
	.incbin "assets/data_080B4410/gUnk_080B6A00_12.bin"
	.4byte gUnk_080B69E8
	.incbin "assets/data_080B4410/gUnk_080B6A00_13.bin"
	.4byte gUnk_080B69F0
	.incbin "assets/data_080B4410/gUnk_080B6A00_14.bin"
	.4byte gUnk_080B69F8
	.incbin "assets/data_080B4410/gUnk_080B6A00_15.bin"

gUnk_080B6A88:: @ 080B6A88
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6A88_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6A88_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6A90:: @ 080B6A90
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6A90_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6A90_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6A98:: @ 080B6A98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6A98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6A98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AA0:: @ 080B6AA0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AA0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AA8:: @ 080B6AA8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AA8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AA8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AB0:: @ 080B6AB0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AB0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AB0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AB8:: @ 080B6AB8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AB8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AB8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AC0:: @ 080B6AC0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AC0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AC0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AC8:: @ 080B6AC8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AC8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AC8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AD0:: @ 080B6AD0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AD0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AD0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AD8:: @ 080B6AD8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AD8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AE0:: @ 080B6AE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AE8:: @ 080B6AE8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AE8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AE8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AF0:: @ 080B6AF0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AF0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AF0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6AF8:: @ 080B6AF8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6AF8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6AF8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6B00:: @ 080B6B00
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6B00_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6B00_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6B08:: @ 080B6B08
	.4byte gUnk_080B6A88
	.incbin "assets/data_080B4410/gUnk_080B6B08.bin"
	.4byte gUnk_080B6A90
	.incbin "assets/data_080B4410/gUnk_080B6B08_1.bin"
	.4byte gUnk_080B6A98
	.incbin "assets/data_080B4410/gUnk_080B6B08_2.bin"
	.4byte gUnk_080B6AA0
	.incbin "assets/data_080B4410/gUnk_080B6B08_3.bin"
	.4byte gUnk_080B6AA8
	.incbin "assets/data_080B4410/gUnk_080B6B08_4.bin"
	.4byte gUnk_080B6AB0
	.incbin "assets/data_080B4410/gUnk_080B6B08_5.bin"
	.4byte gUnk_080B6AB8
	.incbin "assets/data_080B4410/gUnk_080B6B08_6.bin"
	.4byte gUnk_080B6AC0
	.incbin "assets/data_080B4410/gUnk_080B6B08_7.bin"
	.4byte gUnk_080B6AC8
	.incbin "assets/data_080B4410/gUnk_080B6B08_8.bin"
	.4byte gUnk_080B6AD0
	.incbin "assets/data_080B4410/gUnk_080B6B08_9.bin"
	.4byte gUnk_080B6AD8
	.incbin "assets/data_080B4410/gUnk_080B6B08_10.bin"
	.4byte gUnk_080B6AE0
	.incbin "assets/data_080B4410/gUnk_080B6B08_11.bin"
	.4byte gUnk_080B6AE8
	.incbin "assets/data_080B4410/gUnk_080B6B08_12.bin"
	.4byte gUnk_080B6AF0
	.incbin "assets/data_080B4410/gUnk_080B6B08_13.bin"
	.4byte gUnk_080B6AF8
	.incbin "assets/data_080B4410/gUnk_080B6B08_14.bin"
	.4byte gUnk_080B6B00
	.incbin "assets/data_080B4410/gUnk_080B6B08_15.bin"

gUnk_080B6B90:: @ 080B6B90
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6B90_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6B90_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6B98:: @ 080B6B98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6B98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6B98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6BA0:: @ 080B6BA0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6BA0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6BA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6BA8:: @ 080B6BA8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6BA8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6BA8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6BB0:: @ 080B6BB0
	.4byte gUnk_080B6B90
	.incbin "assets/data_080B4410/gUnk_080B6BB0.bin"
	.4byte gUnk_080B6B98
	.incbin "assets/data_080B4410/gUnk_080B6BB0_1.bin"
	.4byte gUnk_080B6BA0
	.incbin "assets/data_080B4410/gUnk_080B6BB0_2.bin"
	.4byte gUnk_080B6BA8
	.incbin "assets/data_080B4410/gUnk_080B6BB0_3.bin"

gUnk_080B6BD8:: @ 080B6BD8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6BD8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6BD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6BE0:: @ 080B6BE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6BE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6BE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6BE8:: @ 080B6BE8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6BE8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6BE8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6BF0:: @ 080B6BF0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6BF0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6BF0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6BF8:: @ 080B6BF8
	.4byte gUnk_080B6BD8
	.incbin "assets/data_080B4410/gUnk_080B6BF8.bin"
	.4byte gUnk_080B6BE0
	.incbin "assets/data_080B4410/gUnk_080B6BF8_1.bin"
	.4byte gUnk_080B6BE8
	.incbin "assets/data_080B4410/gUnk_080B6BF8_2.bin"
	.4byte gUnk_080B6BF0
	.incbin "assets/data_080B4410/gUnk_080B6BF8_3.bin"

gUnk_080B6C20:: @ 080B6C20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6C20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6C20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6C28:: @ 080B6C28
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6C28_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6C28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6C30:: @ 080B6C30
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6C30_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6C30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6C38:: @ 080B6C38
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6C38_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6C38_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6C40:: @ 080B6C40
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6C40_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6C40_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6C48:: @ 080B6C48
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6C48_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6C48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6C50:: @ 080B6C50
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6C50_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6C50_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6C58:: @ 080B6C58
	.4byte gUnk_080B6C20
	.incbin "assets/data_080B4410/gUnk_080B6C58.bin"
	.4byte gUnk_080B6C28
	.incbin "assets/data_080B4410/gUnk_080B6C58_1.bin"
	.4byte gUnk_080B6C30
	.incbin "assets/data_080B4410/gUnk_080B6C58_2.bin"
	.4byte gUnk_080B6C38
	.incbin "assets/data_080B4410/gUnk_080B6C58_3.bin"
	.4byte gUnk_080B6C40
	.incbin "assets/data_080B4410/gUnk_080B6C58_4.bin"
	.4byte gUnk_080B6C48
	.incbin "assets/data_080B4410/gUnk_080B6C58_5.bin"
	.4byte gUnk_080B6C50
	.incbin "assets/data_080B4410/gUnk_080B6C58_6.bin"

gUnk_080B6C98:: @ 080B6C98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6C98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6C98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6CA0:: @ 080B6CA0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6CA0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6CA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6CA8:: @ 080B6CA8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6CA8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6CA8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6CB0:: @ 080B6CB0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6CB0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6CB0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6CB8:: @ 080B6CB8
	.4byte gUnk_080B6C98
	.incbin "assets/data_080B4410/gUnk_080B6CB8.bin"
	.4byte gUnk_080B6CA0
	.incbin "assets/data_080B4410/gUnk_080B6CB8_1.bin"
	.4byte gUnk_080B6CA8
	.incbin "assets/data_080B4410/gUnk_080B6CB8_2.bin"
	.4byte gUnk_080B6CB0
	.incbin "assets/data_080B4410/gUnk_080B6CB8_3.bin"

gUnk_080B6CE0:: @ 080B6CE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6CE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6CE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6CE8:: @ 080B6CE8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6CE8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6CE8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6CF0:: @ 080B6CF0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6CF0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6CF0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6CF8:: @ 080B6CF8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6CF8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6CF8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D00:: @ 080B6D00
	.4byte gUnk_080B6CE0
	.incbin "assets/data_080B4410/gUnk_080B6D00.bin"
	.4byte gUnk_080B6CE8
	.incbin "assets/data_080B4410/gUnk_080B6D00_1.bin"
	.4byte gUnk_080B6CF0
	.incbin "assets/data_080B4410/gUnk_080B6D00_2.bin"
	.4byte gUnk_080B6CF8
	.incbin "assets/data_080B4410/gUnk_080B6D00_3.bin"

gUnk_080B6D28:: @ 080B6D28
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D28_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D28_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D30:: @ 080B6D30
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D30_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D30_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D38:: @ 080B6D38
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D38_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D38_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D40:: @ 080B6D40
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D40_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D40_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D48:: @ 080B6D48
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D48_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D48_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D50:: @ 080B6D50
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D50_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D50_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D58:: @ 080B6D58
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D58_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D58_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D60:: @ 080B6D60
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D60_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D60_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D68:: @ 080B6D68
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D68_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D68_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D70:: @ 080B6D70
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D70_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D70_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D78:: @ 080B6D78
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D78_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D78_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D80:: @ 080B6D80
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D80_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D80_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D88:: @ 080B6D88
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D88_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D88_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D90:: @ 080B6D90
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D90_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D90_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6D98:: @ 080B6D98
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6D98_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6D98_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6DA0:: @ 080B6DA0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6DA0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6DA0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6DA8:: @ 080B6DA8
	.4byte gUnk_080B6D28
	.incbin "assets/data_080B4410/gUnk_080B6DA8.bin"
	.4byte gUnk_080B6D30
	.incbin "assets/data_080B4410/gUnk_080B6DA8_1.bin"
	.4byte gUnk_080B6D38
	.incbin "assets/data_080B4410/gUnk_080B6DA8_2.bin"
	.4byte gUnk_080B6D40
	.incbin "assets/data_080B4410/gUnk_080B6DA8_3.bin"
	.4byte gUnk_080B6D48
	.incbin "assets/data_080B4410/gUnk_080B6DA8_4.bin"
	.4byte gUnk_080B6D50
	.incbin "assets/data_080B4410/gUnk_080B6DA8_5.bin"
	.4byte gUnk_080B6D58
	.incbin "assets/data_080B4410/gUnk_080B6DA8_6.bin"
	.4byte gUnk_080B6D60
	.incbin "assets/data_080B4410/gUnk_080B6DA8_7.bin"
	.4byte gUnk_080B6D68
	.incbin "assets/data_080B4410/gUnk_080B6DA8_8.bin"
	.4byte gUnk_080B6D70
	.incbin "assets/data_080B4410/gUnk_080B6DA8_9.bin"
	.4byte gUnk_080B6D78
	.incbin "assets/data_080B4410/gUnk_080B6DA8_10.bin"
	.4byte gUnk_080B6D80
	.incbin "assets/data_080B4410/gUnk_080B6DA8_11.bin"
	.4byte gUnk_080B6D88
	.incbin "assets/data_080B4410/gUnk_080B6DA8_12.bin"
	.4byte gUnk_080B6D90
	.incbin "assets/data_080B4410/gUnk_080B6DA8_13.bin"
	.4byte gUnk_080B6D98
	.incbin "assets/data_080B4410/gUnk_080B6DA8_14.bin"
	.4byte gUnk_080B6DA0
	.incbin "assets/data_080B4410/gUnk_080B6DA8_15.bin"
	.4byte gUnk_080B6D98
	.incbin "assets/data_080B4410/gUnk_080B6DA8_16.bin"
	.4byte gUnk_080B6D90
	.incbin "assets/data_080B4410/gUnk_080B6DA8_17.bin"
	.4byte gUnk_080B6D88
	.incbin "assets/data_080B4410/gUnk_080B6DA8_18.bin"
	.4byte gUnk_080B6D80
	.incbin "assets/data_080B4410/gUnk_080B6DA8_19.bin"
	.4byte gUnk_080B6D78
	.incbin "assets/data_080B4410/gUnk_080B6DA8_20.bin"
	.4byte gUnk_080B6D70
	.incbin "assets/data_080B4410/gUnk_080B6DA8_21.bin"
	.4byte gUnk_080B6D68
	.incbin "assets/data_080B4410/gUnk_080B6DA8_22.bin"
	.4byte gUnk_080B6D60
	.incbin "assets/data_080B4410/gUnk_080B6DA8_23.bin"
	.4byte gUnk_080B6D58
	.incbin "assets/data_080B4410/gUnk_080B6DA8_24.bin"
	.4byte gUnk_080B6D50
	.incbin "assets/data_080B4410/gUnk_080B6DA8_25.bin"
	.4byte gUnk_080B6D48
	.incbin "assets/data_080B4410/gUnk_080B6DA8_26.bin"
	.4byte gUnk_080B6D40
	.incbin "assets/data_080B4410/gUnk_080B6DA8_27.bin"
	.4byte gUnk_080B6D38
	.incbin "assets/data_080B4410/gUnk_080B6DA8_28.bin"
	.4byte gUnk_080B6D30
	.incbin "assets/data_080B4410/gUnk_080B6DA8_29.bin"
	.4byte gUnk_080B6D28
	.incbin "assets/data_080B4410/gUnk_080B6DA8_30.bin"

gUnk_080B6EA8:: @ 080B6EA8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EA8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EA8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6EB0:: @ 080B6EB0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EB0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EB0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6EB8:: @ 080B6EB8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EB8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EB8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6EC0:: @ 080B6EC0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EC0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EC0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6EC8:: @ 080B6EC8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EC8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EC8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6ED0:: @ 080B6ED0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6ED0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6ED0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6ED8:: @ 080B6ED8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6ED8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6ED8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6EE0:: @ 080B6EE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6EE8:: @ 080B6EE8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EE8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EE8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6EF0:: @ 080B6EF0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EF0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EF0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6EF8:: @ 080B6EF8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6EF8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6EF8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6F00:: @ 080B6F00
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6F00_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6F00_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6F08:: @ 080B6F08
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6F08_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6F08_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6F10:: @ 080B6F10
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6F10_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6F10_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6F18:: @ 080B6F18
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6F18_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6F18_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6F20:: @ 080B6F20
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6F20_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6F20_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6F28:: @ 080B6F28
	.4byte gUnk_080B6EA8
	.incbin "assets/data_080B4410/gUnk_080B6F28.bin"
	.4byte gUnk_080B6EB0
	.incbin "assets/data_080B4410/gUnk_080B6F28_1.bin"
	.4byte gUnk_080B6EB8
	.incbin "assets/data_080B4410/gUnk_080B6F28_2.bin"
	.4byte gUnk_080B6EC0
	.incbin "assets/data_080B4410/gUnk_080B6F28_3.bin"
	.4byte gUnk_080B6EC8
	.incbin "assets/data_080B4410/gUnk_080B6F28_4.bin"
	.4byte gUnk_080B6ED0
	.incbin "assets/data_080B4410/gUnk_080B6F28_5.bin"
	.4byte gUnk_080B6ED8
	.incbin "assets/data_080B4410/gUnk_080B6F28_6.bin"
	.4byte gUnk_080B6EE0
	.incbin "assets/data_080B4410/gUnk_080B6F28_7.bin"
	.4byte gUnk_080B6EE8
	.incbin "assets/data_080B4410/gUnk_080B6F28_8.bin"
	.4byte gUnk_080B6EF0
	.incbin "assets/data_080B4410/gUnk_080B6F28_9.bin"
	.4byte gUnk_080B6EF8
	.incbin "assets/data_080B4410/gUnk_080B6F28_10.bin"
	.4byte gUnk_080B6F00
	.incbin "assets/data_080B4410/gUnk_080B6F28_11.bin"
	.4byte gUnk_080B6F08
	.incbin "assets/data_080B4410/gUnk_080B6F28_12.bin"
	.4byte gUnk_080B6F10
	.incbin "assets/data_080B4410/gUnk_080B6F28_13.bin"
	.4byte gUnk_080B6F18
	.incbin "assets/data_080B4410/gUnk_080B6F28_14.bin"
	.4byte gUnk_080B6F20
	.incbin "assets/data_080B4410/gUnk_080B6F28_15.bin"

gUnk_080B6FB0:: @ 080B6FB0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6FB0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6FB0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6FB8:: @ 080B6FB8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6FB8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6FB8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6FC0:: @ 080B6FC0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6FC0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6FC0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6FC8:: @ 080B6FC8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6FC8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6FC8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6FD0:: @ 080B6FD0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6FD0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6FD0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6FD8:: @ 080B6FD8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6FD8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6FD8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6FE0:: @ 080B6FE0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6FE0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6FE0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6FE8:: @ 080B6FE8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B6FE8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B6FE8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B6FF0:: @ 080B6FF0
	.4byte gUnk_080B6FB0
	.incbin "assets/data_080B4410/gUnk_080B6FF0.bin"
	.4byte gUnk_080B6FB8
	.incbin "assets/data_080B4410/gUnk_080B6FF0_1.bin"
	.4byte gUnk_080B6FC0
	.incbin "assets/data_080B4410/gUnk_080B6FF0_2.bin"
	.4byte gUnk_080B6FC8
	.incbin "assets/data_080B4410/gUnk_080B6FF0_3.bin"
	.4byte gUnk_080B6FD0
	.incbin "assets/data_080B4410/gUnk_080B6FF0_4.bin"
	.4byte gUnk_080B6FD8
	.incbin "assets/data_080B4410/gUnk_080B6FF0_5.bin"
	.4byte gUnk_080B6FE0
	.incbin "assets/data_080B4410/gUnk_080B6FF0_6.bin"
	.4byte gUnk_080B6FE8
	.incbin "assets/data_080B4410/gUnk_080B6FF0_7.bin"
	.4byte gUnk_080B6FE0
	.incbin "assets/data_080B4410/gUnk_080B6FF0_8.bin"
	.4byte gUnk_080B6FD8
	.incbin "assets/data_080B4410/gUnk_080B6FF0_9.bin"
	.4byte gUnk_080B6FD0
	.incbin "assets/data_080B4410/gUnk_080B6FF0_10.bin"
	.4byte gUnk_080B6FC8
	.incbin "assets/data_080B4410/gUnk_080B6FF0_11.bin"
	.4byte gUnk_080B6FC0
	.incbin "assets/data_080B4410/gUnk_080B6FF0_12.bin"
	.4byte gUnk_080B6FB8
	.incbin "assets/data_080B4410/gUnk_080B6FF0_13.bin"

gUnk_080B7068:: @ 080B7068
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7068_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7068_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7070:: @ 080B7070
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7070_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7070_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7078:: @ 080B7078
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7078_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7078_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7080:: @ 080B7080
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7080_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7080_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7088:: @ 080B7088
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7088_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7088_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7090:: @ 080B7090
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7090_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7090_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7098:: @ 080B7098
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7098_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7098_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70A0:: @ 080B70A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70A8:: @ 080B70A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70B0:: @ 080B70B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70B8:: @ 080B70B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70C0:: @ 080B70C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70C8:: @ 080B70C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70D0:: @ 080B70D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70D8:: @ 080B70D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70E0:: @ 080B70E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B70E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B70E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B70E8:: @ 080B70E8
	.4byte gUnk_080B7068
	.incbin "assets/data_080B4410/gUnk_080B70E8.bin"
	.4byte gUnk_080B7070
	.incbin "assets/data_080B4410/gUnk_080B70E8_1.bin"
	.4byte gUnk_080B7078
	.incbin "assets/data_080B4410/gUnk_080B70E8_2.bin"
	.4byte gUnk_080B7080
	.incbin "assets/data_080B4410/gUnk_080B70E8_3.bin"
	.4byte gUnk_080B7088
	.incbin "assets/data_080B4410/gUnk_080B70E8_4.bin"
	.4byte gUnk_080B7090
	.incbin "assets/data_080B4410/gUnk_080B70E8_5.bin"
	.4byte gUnk_080B7098
	.incbin "assets/data_080B4410/gUnk_080B70E8_6.bin"
	.4byte gUnk_080B70A0
	.incbin "assets/data_080B4410/gUnk_080B70E8_7.bin"
	.4byte gUnk_080B70A8
	.incbin "assets/data_080B4410/gUnk_080B70E8_8.bin"
	.4byte gUnk_080B70B0
	.incbin "assets/data_080B4410/gUnk_080B70E8_9.bin"
	.4byte gUnk_080B70B8
	.incbin "assets/data_080B4410/gUnk_080B70E8_10.bin"
	.4byte gUnk_080B70C0
	.incbin "assets/data_080B4410/gUnk_080B70E8_11.bin"
	.4byte gUnk_080B70C8
	.incbin "assets/data_080B4410/gUnk_080B70E8_12.bin"
	.4byte gUnk_080B70D0
	.incbin "assets/data_080B4410/gUnk_080B70E8_13.bin"
	.4byte gUnk_080B70D8
	.incbin "assets/data_080B4410/gUnk_080B70E8_14.bin"
	.4byte gUnk_080B70E0
	.incbin "assets/data_080B4410/gUnk_080B70E8_15.bin"

gUnk_080B7170:: @ 080B7170
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7170_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7170_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7178:: @ 080B7178
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7178_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7178_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7180:: @ 080B7180
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7180_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7180_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7188:: @ 080B7188
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7188_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7188_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7190:: @ 080B7190
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7190_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7190_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B7198:: @ 080B7198
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B7198_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B7198_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71A0:: @ 080B71A0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71A0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71A0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71A8:: @ 080B71A8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71A8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71A8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71B0:: @ 080B71B0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71B0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71B0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71B8:: @ 080B71B8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71B8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71B8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71C0:: @ 080B71C0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71C0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71C0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71C8:: @ 080B71C8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71C8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71C8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71D0:: @ 080B71D0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71D0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71D0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71D8:: @ 080B71D8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71D8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71D8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71E0:: @ 080B71E0
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71E0_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71E0_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71E8:: @ 080B71E8
.ifdef EU
	.incbin "assets/data_080B4410/gUnk_080B71E8_EU.bin"
.else
	.incbin "assets/data_080B4410/gUnk_080B71E8_1_USA-JP-DEMO_USA-DEMO_JP.bin"
.endif

gUnk_080B71F0:: @ 080B71F0
	.4byte gUnk_080B7170
	.incbin "assets/data_080B4410/gUnk_080B71F0.bin"
	.4byte gUnk_080B7178
	.incbin "assets/data_080B4410/gUnk_080B71F0_1.bin"
	.4byte gUnk_080B7180
	.incbin "assets/data_080B4410/gUnk_080B71F0_2.bin"
	.4byte gUnk_080B7188
	.incbin "assets/data_080B4410/gUnk_080B71F0_3.bin"
	.4byte gUnk_080B7190
	.incbin "assets/data_080B4410/gUnk_080B71F0_4.bin"
	.4byte gUnk_080B7198
	.incbin "assets/data_080B4410/gUnk_080B71F0_5.bin"
	.4byte gUnk_080B71A0
	.incbin "assets/data_080B4410/gUnk_080B71F0_6.bin"
	.4byte gUnk_080B71A8
	.incbin "assets/data_080B4410/gUnk_080B71F0_7.bin"
	.4byte gUnk_080B71B0
	.incbin "assets/data_080B4410/gUnk_080B71F0_8.bin"
	.4byte gUnk_080B71B8
	.incbin "assets/data_080B4410/gUnk_080B71F0_9.bin"
	.4byte gUnk_080B71C0
	.incbin "assets/data_080B4410/gUnk_080B71F0_10.bin"
	.4byte gUnk_080B71C8
	.incbin "assets/data_080B4410/gUnk_080B71F0_11.bin"
	.4byte gUnk_080B71D0
	.incbin "assets/data_080B4410/gUnk_080B71F0_12.bin"
	.4byte gUnk_080B71D8
	.incbin "assets/data_080B4410/gUnk_080B71F0_13.bin"
	.4byte gUnk_080B71E0
	.incbin "assets/data_080B4410/gUnk_080B71F0_14.bin"
	.4byte gUnk_080B71E8
	.incbin "assets/data_080B4410/gUnk_080B71F0_15.bin"

gUnk_080B7278:: @ 080B7278
	.4byte gUnk_080B4588
	.4byte gUnk_080B67C8
	.4byte gUnk_080B45D0
	.4byte gUnk_080B4618
	.4byte gUnk_080B4660
	.4byte gUnk_080B46A8
	.4byte gUnk_080B46F0
	.4byte gUnk_080B6810
	.4byte gUnk_080B4A88
	.4byte gUnk_080B4AD0
	.4byte gUnk_080B4B18
	.4byte gUnk_080B4B60
	.4byte gUnk_080B4BA8
	.4byte gUnk_080B6858
	.4byte gUnk_080B68A0
	.4byte gUnk_080B68E8
	.4byte gUnk_080B6938
	.4byte gUnk_080B64E0
	.4byte gUnk_080B6528
	.4byte gUnk_080B6570
	.4byte gUnk_080B5E38
	.4byte gUnk_080B5D40
	.4byte gUnk_080B5DA8
	.4byte gUnk_080B5DF0
	.4byte gUnk_080B5E88
	.4byte gUnk_080B5ED8
	.4byte gUnk_080B5B68
	.4byte gUnk_080B5F28
	.4byte gUnk_080B5F80
	.4byte gUnk_080B4E50
	.4byte gUnk_080B4810
	.4byte gUnk_080B4878
	.4byte gUnk_080B48D0
	.4byte gUnk_080B4938
	.4byte gUnk_080B49A0
	.4byte gUnk_080B49F8
	.4byte gUnk_080B4F28
	.4byte gUnk_080B4F70
	.4byte gUnk_080B5170
	.4byte gUnk_080B51B8
	.4byte gUnk_080B4FD8
	.4byte gUnk_080B5020
	.4byte gUnk_080B6120
	.4byte gUnk_080B6168
	.4byte gUnk_080B61B0
	.4byte gUnk_080B61F8
	.4byte gUnk_080B5FD0
	.4byte gUnk_080B5308
	.4byte gUnk_080B5350
	.4byte gUnk_080B5398
	.4byte gUnk_080B53E0
	.4byte gUnk_080B5428
	.4byte gUnk_080B4A40
	.4byte gUnk_080B4BF0
	.4byte gUnk_080B4C38
	.4byte gUnk_080B4C80
	.4byte gUnk_080B4CC8
	.4byte gUnk_080B4D10
	.4byte gUnk_080B4E98
	.4byte gUnk_080B4EE0
	.4byte gUnk_080B6B08
	.4byte gUnk_080B6078
	.4byte gUnk_080B62A0
	.4byte gUnk_080B63A8
	.4byte gUnk_080B6618
	.4byte gUnk_080B6F28
	.4byte gUnk_080B6FF0
	.4byte gUnk_080B6DA8
	.4byte gUnk_080B54D0
	.4byte gUnk_080B55D8
	.4byte gUnk_080B56E0
	.4byte gUnk_080B57E8
	.4byte gUnk_080B58F0
	.4byte gUnk_080B50C8
	.4byte gUnk_080B4DA8
	.4byte gUnk_080B6A00
	.4byte gUnk_080B6720
	.4byte gUnk_080B5BB0
	.4byte gUnk_080B5C58
	.4byte gUnk_080B71F0
	.4byte gUnk_080B70E8
	.4byte gUnk_080B6CB8
	.4byte gUnk_080B6BB0
	.4byte gUnk_080B6BF8
	.4byte gUnk_080B6C58
	.4byte gUnk_080B6450
	.4byte gUnk_080B6498
	.4byte gUnk_080B5998
	.4byte gUnk_080B59E0
	.4byte gUnk_080B5A28
	.4byte gUnk_080B5A70
	.4byte gUnk_080B5AB8
	.4byte gUnk_080B5B20
	.4byte gUnk_080B4738
	.4byte gUnk_080B4780
	.4byte gUnk_080B47C8
	.4byte gUnk_080B5260
	.4byte gUnk_080B6D00

gUnk_080B7400:: @ 080B7400
	.incbin "assets/data_080B4410/gUnk_080B7400.bin"

gUnk_080B740A:: @ 080B740A
	.incbin "assets/data_080B4410/gUnk_080B740A.bin"

gUnk_080B741C:: @ 080B741C
	.incbin "assets/data_080B4410/gUnk_080B741C.bin"

gUnk_080B742E:: @ 080B742E
	.incbin "assets/data_080B4410/gUnk_080B742E.bin"

gUnk_080B743A:: @ 080B743A
	.incbin "assets/data_080B4410/gUnk_080B743A.bin"

gUnk_080B7444:: @ 080B7444
	.incbin "assets/data_080B4410/gUnk_080B7444.bin"

gUnk_080B7450:: @ 080B7450
	.incbin "assets/data_080B4410/gUnk_080B7450.bin"

gUnk_080B745A:: @ 080B745A
	.incbin "assets/data_080B4410/gUnk_080B745A.bin"

gUnk_080B7460:: @ 080B7460
	.incbin "assets/data_080B4410/gUnk_080B7460.bin"

gUnk_080B7464:: @ 080B7464
	.incbin "assets/data_080B4410/gUnk_080B7464.bin"

gUnk_080B746E:: @ 080B746E
	.incbin "assets/data_080B4410/gUnk_080B746E.bin"

gUnk_080B747A:: @ 080B747A
	.incbin "assets/data_080B4410/gUnk_080B747A.bin"

gUnk_080B7480:: @ 080B7480
	.incbin "assets/data_080B4410/gUnk_080B7480.bin"

gUnk_080B748A:: @ 080B748A
	.incbin "assets/data_080B4410/gUnk_080B748A.bin"

gUnk_080B748E:: @ 080B748E
	.incbin "assets/data_080B4410/gUnk_080B748E.bin"

gUnk_080B749C:: @ 080B749C
	.incbin "assets/data_080B4410/gUnk_080B749C.bin"

gUnk_080B74AA:: @ 080B74AA
	.incbin "assets/data_080B4410/gUnk_080B74AA.bin"

gUnk_080B74B8:: @ 080B74B8
	.incbin "assets/data_080B4410/gUnk_080B74B8.bin"

gUnk_080B74C6:: @ 080B74C6
	.incbin "assets/data_080B4410/gUnk_080B74C6.bin"

gUnk_080B74D4:: @ 080B74D4
	.incbin "assets/data_080B4410/gUnk_080B74D4.bin"

gUnk_080B74DC:: @ 080B74DC
	.incbin "assets/data_080B4410/gUnk_080B74DC.bin"

gUnk_080B74E4:: @ 080B74E4
	.incbin "assets/data_080B4410/gUnk_080B74E4.bin"

gUnk_080B74EC:: @ 080B74EC
	.incbin "assets/data_080B4410/gUnk_080B74EC.bin"

gUnk_080B74F4:: @ 080B74F4
	.incbin "assets/data_080B4410/gUnk_080B74F4.bin"

gUnk_080B7500:: @ 080B7500
	.incbin "assets/data_080B4410/gUnk_080B7500.bin"

gUnk_080B7506:: @ 080B7506
	.incbin "assets/data_080B4410/gUnk_080B7506.bin"

gUnk_080B7512:: @ 080B7512
	.incbin "assets/data_080B4410/gUnk_080B7512.bin"

gUnk_080B751A:: @ 080B751A
	.incbin "assets/data_080B4410/gUnk_080B751A.bin"

gUnk_080B7524:: @ 080B7524
	.incbin "assets/data_080B4410/gUnk_080B7524.bin"

gUnk_080B7528:: @ 080B7528
	.incbin "assets/data_080B4410/gUnk_080B7528.bin"

gUnk_080B7538:: @ 080B7538
	.incbin "assets/data_080B4410/gUnk_080B7538.bin"

gUnk_080B7542:: @ 080B7542
	.incbin "assets/data_080B4410/gUnk_080B7542.bin"

gUnk_080B7546:: @ 080B7546
	.incbin "assets/data_080B4410/gUnk_080B7546.bin"

gUnk_080B754A:: @ 080B754A
	.incbin "assets/data_080B4410/gUnk_080B754A.bin"

gUnk_080B754E:: @ 080B754E
	.incbin "assets/data_080B4410/gUnk_080B754E.bin"

gUnk_080B7556:: @ 080B7556
	.incbin "assets/data_080B4410/gUnk_080B7556.bin"

gUnk_080B755C:: @ 080B755C
	.4byte gUnk_080B7400
	.4byte gUnk_080B7460
	.4byte gUnk_080B740A
	.4byte gUnk_080B742E
	.4byte gUnk_080B741C
	.4byte 00000000
	.4byte gUnk_080B743A
	.4byte gUnk_080B7450
	.4byte gUnk_080B745A
	.4byte gUnk_080B7444
	.4byte gUnk_080B743A
	.4byte gUnk_080B7400
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B746E
	.4byte gUnk_080B7464
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B740A
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B743A
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B742E
	.4byte gUnk_080B7400
	.4byte gUnk_080B742E
	.4byte 00000000
	.4byte gUnk_080B747A
	.4byte gUnk_080B747A
	.4byte gUnk_080B747A
	.4byte gUnk_080B747A
	.4byte gUnk_080B7480
	.4byte gUnk_080B74C6
	.4byte 00000000
	.4byte gUnk_080B7480
	.4byte 00000000
	.4byte gUnk_080B749C
	.4byte gUnk_080B7500
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B748A
	.4byte gUnk_080B74D4
	.4byte gUnk_080B747A
	.4byte 00000000
	.4byte gUnk_080B74B8
	.4byte gUnk_080B74AA
	.4byte gUnk_080B748E
	.4byte gUnk_080B74DC
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B74EC
	.4byte gUnk_080B74EC
	.4byte gUnk_080B74EC
	.4byte gUnk_080B74EC
	.4byte gUnk_080B74EC
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B74E4
	.4byte gUnk_080B74E4
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B74E4
	.4byte gUnk_080B74E4
	.4byte gUnk_080B74F4
	.4byte gUnk_080B74F4
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B74F4
	.4byte gUnk_080B74F4
	.4byte gUnk_080B7500
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B7506
	.4byte 00000000
	.4byte gUnk_080B7506
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B7512
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B751A
	.4byte gUnk_080B7524
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B751A
	.4byte gUnk_080B7528
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B7528
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte gUnk_080B7538
	.4byte gUnk_080B7542
	.4byte gUnk_080B754A
	.4byte gUnk_080B754E
	.4byte gUnk_080B7556
	.4byte gUnk_080B7546
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000
	.4byte 00000000

gUnk_080B77C0:: @ 080B77C0
	.incbin "assets/data_080B4410/gUnk_080B77C0.bin"
