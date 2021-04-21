	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

gUnk_080B4410:: @ 080B4410
	.incbin "baserom.gba", 0x0B4410, 0x0000048

gUnk_080B4458:: @ 080B4458
	.4byte sub_08019698
	.4byte sub_08019740
	.4byte sub_08019764
	.4byte sub_080197A0

gUnk_080B4468:: @ 080B4468
	.incbin "baserom.gba", 0x0B4468, 0x0000010

gUnk_080B4478:: @ 080B4478
	.incbin "baserom.gba", 0x0B4478, 0x0000010

gUnk_080B4488:: @ 080B4488
	.incbin "baserom.gba", 0x0B4488, 0x0000008

gUnk_080B4490:: @ 080B4490
	.incbin "baserom.gba", 0x0B4490, 0x0000010

gUnk_080B44A0:: @ 080B44A0
	.incbin "baserom.gba", 0x0B44A0, 0x0000008

gUnk_080B44A8:: @ 080B44A8
	.incbin "baserom.gba", 0x0B44A8, 0x0000010

gUnk_080B44B8:: @ 080B44B8
	.4byte sub_0801AE30
	.4byte sub_0801AE34

gUnk_080B44C0:: @ 080B44C0
	.incbin "baserom.gba", 0x0B44C0, 0x0000002

gUnk_080B44C2:: @ 080B44C2
	.incbin "baserom.gba", 0x0B44C2, 0x000000E

gUnk_080B44D0:: @ 080B44D0
	.incbin "baserom.gba", 0x0B44D0, 0x0000020

gUnk_080B44F0:: @ 080B44F0
	.incbin "baserom.gba", 0x0B44F0, 0x0000010

gUnk_080B4500:: @ 080B4500
	.incbin "baserom.gba", 0x0B4500, 0x0000010

gUnk_080B4510:: @ 080B4510
	.incbin "baserom.gba", 0x0B4510, 0x0000010

gUnk_080B4520:: @ 080B4520
	.incbin "baserom.gba", 0x0B4520, 0x0000010

gUnk_080B4530:: @ 080B4530
	.incbin "baserom.gba", 0x0B4530, 0x0000010

gUnk_080B4540:: @ 080B4540
	.incbin "baserom.gba", 0x0B4540, 0x0000010

gUnk_080B4550:: @ 080B4550
	.4byte gUnk_080B44F0
	.4byte gUnk_080B4500
	.4byte gUnk_080B4510
	.4byte gUnk_080B4520
	.4byte gUnk_080B4530
	.4byte gUnk_080B4540

gUnk_080B4568:: @ 080B4568
	.incbin "baserom.gba", 0x0B4568, 0x0000008

gUnk_080B4570:: @ 080B4570
	.incbin "baserom.gba", 0x0B4570, 0x0000008

gUnk_080B4578:: @ 080B4578
	.incbin "baserom.gba", 0x0B4578, 0x0000008

gUnk_080B4580:: @ 080B4580
	.incbin "baserom.gba", 0x0B4580, 0x0000008

gUnk_080B4588:: @ 080B4588
	.4byte gUnk_080B4568
	.incbin "baserom.gba", 0x0B458C, 0x0000004
	.4byte gUnk_080B4570
	.incbin "baserom.gba", 0x0B4594, 0x0000004
	.4byte gUnk_080B4578
	.incbin "baserom.gba", 0x0B459C, 0x0000004
	.4byte gUnk_080B4580
	.incbin "baserom.gba", 0x0B45A4, 0x000000C

gUnk_080B45B0:: @ 080B45B0
	.incbin "baserom.gba", 0x0B45B0, 0x0000008

gUnk_080B45B8:: @ 080B45B8
	.incbin "baserom.gba", 0x0B45B8, 0x0000008

gUnk_080B45C0:: @ 080B45C0
	.incbin "baserom.gba", 0x0B45C0, 0x0000008

gUnk_080B45C8:: @ 080B45C8
	.incbin "baserom.gba", 0x0B45C8, 0x0000008

gUnk_080B45D0:: @ 080B45D0
	.4byte gUnk_080B45B0
	.incbin "baserom.gba", 0x0B45D4, 0x0000004
	.4byte gUnk_080B45B8
	.incbin "baserom.gba", 0x0B45DC, 0x0000004
	.4byte gUnk_080B45C0
	.incbin "baserom.gba", 0x0B45E4, 0x0000004
	.4byte gUnk_080B45C8
	.incbin "baserom.gba", 0x0B45EC, 0x000000C

gUnk_080B45F8:: @ 080B45F8
	.incbin "baserom.gba", 0x0B45F8, 0x0000008

gUnk_080B4600:: @ 080B4600
	.incbin "baserom.gba", 0x0B4600, 0x0000008

gUnk_080B4608:: @ 080B4608
	.incbin "baserom.gba", 0x0B4608, 0x0000008

gUnk_080B4610:: @ 080B4610
	.incbin "baserom.gba", 0x0B4610, 0x0000008

gUnk_080B4618:: @ 080B4618
	.4byte gUnk_080B45F8
	.incbin "baserom.gba", 0x0B461C, 0x0000004
	.4byte gUnk_080B4600
	.incbin "baserom.gba", 0x0B4624, 0x0000004
	.4byte gUnk_080B4608
	.incbin "baserom.gba", 0x0B462C, 0x0000004
	.4byte gUnk_080B4610
	.incbin "baserom.gba", 0x0B4634, 0x000000C

gUnk_080B4640:: @ 080B4640
	.incbin "baserom.gba", 0x0B4640, 0x0000008

gUnk_080B4648:: @ 080B4648
	.incbin "baserom.gba", 0x0B4648, 0x0000008

gUnk_080B4650:: @ 080B4650
	.incbin "baserom.gba", 0x0B4650, 0x0000008

gUnk_080B4658:: @ 080B4658
	.incbin "baserom.gba", 0x0B4658, 0x0000008

gUnk_080B4660:: @ 080B4660
	.4byte gUnk_080B4640
	.incbin "baserom.gba", 0x0B4664, 0x0000004
	.4byte gUnk_080B4648
	.incbin "baserom.gba", 0x0B466C, 0x0000004
	.4byte gUnk_080B4650
	.incbin "baserom.gba", 0x0B4674, 0x0000004
	.4byte gUnk_080B4658
	.incbin "baserom.gba", 0x0B467C, 0x000000C

gUnk_080B4688:: @ 080B4688
	.incbin "baserom.gba", 0x0B4688, 0x0000008

gUnk_080B4690:: @ 080B4690
	.incbin "baserom.gba", 0x0B4690, 0x0000008

gUnk_080B4698:: @ 080B4698
	.incbin "baserom.gba", 0x0B4698, 0x0000008

gUnk_080B46A0:: @ 080B46A0
	.incbin "baserom.gba", 0x0B46A0, 0x0000008

gUnk_080B46A8:: @ 080B46A8
	.4byte gUnk_080B4688
	.incbin "baserom.gba", 0x0B46AC, 0x0000004
	.4byte gUnk_080B4690
	.incbin "baserom.gba", 0x0B46B4, 0x0000004
	.4byte gUnk_080B4698
	.incbin "baserom.gba", 0x0B46BC, 0x0000004
	.4byte gUnk_080B46A0
	.incbin "baserom.gba", 0x0B46C4, 0x000000C

gUnk_080B46D0:: @ 080B46D0
	.incbin "baserom.gba", 0x0B46D0, 0x0000008

gUnk_080B46D8:: @ 080B46D8
	.incbin "baserom.gba", 0x0B46D8, 0x0000008

gUnk_080B46E0:: @ 080B46E0
	.incbin "baserom.gba", 0x0B46E0, 0x0000008

gUnk_080B46E8:: @ 080B46E8
	.incbin "baserom.gba", 0x0B46E8, 0x0000008

gUnk_080B46F0:: @ 080B46F0
	.4byte gUnk_080B46D0
	.incbin "baserom.gba", 0x0B46F4, 0x0000004
	.4byte gUnk_080B46D8
	.incbin "baserom.gba", 0x0B46FC, 0x0000004
	.4byte gUnk_080B46E0
	.incbin "baserom.gba", 0x0B4704, 0x0000004
	.4byte gUnk_080B46E8
	.incbin "baserom.gba", 0x0B470C, 0x000000C

gUnk_080B4718:: @ 080B4718
	.incbin "baserom.gba", 0x0B4718, 0x0000008

gUnk_080B4720:: @ 080B4720
	.incbin "baserom.gba", 0x0B4720, 0x0000008

gUnk_080B4728:: @ 080B4728
	.incbin "baserom.gba", 0x0B4728, 0x0000008

gUnk_080B4730:: @ 080B4730
	.incbin "baserom.gba", 0x0B4730, 0x0000008

gUnk_080B4738:: @ 080B4738
	.4byte gUnk_080B4718
	.incbin "baserom.gba", 0x0B473C, 0x0000004
	.4byte gUnk_080B4720
	.incbin "baserom.gba", 0x0B4744, 0x0000004
	.4byte gUnk_080B4728
	.incbin "baserom.gba", 0x0B474C, 0x0000004
	.4byte gUnk_080B4730
	.incbin "baserom.gba", 0x0B4754, 0x000000C

gUnk_080B4760:: @ 080B4760
	.incbin "baserom.gba", 0x0B4760, 0x0000008

gUnk_080B4768:: @ 080B4768
	.incbin "baserom.gba", 0x0B4768, 0x0000008

gUnk_080B4770:: @ 080B4770
	.incbin "baserom.gba", 0x0B4770, 0x0000008

gUnk_080B4778:: @ 080B4778
	.incbin "baserom.gba", 0x0B4778, 0x0000008

gUnk_080B4780:: @ 080B4780
	.4byte gUnk_080B4760
	.incbin "baserom.gba", 0x0B4784, 0x0000004
	.4byte gUnk_080B4768
	.incbin "baserom.gba", 0x0B478C, 0x0000004
	.4byte gUnk_080B4770
	.incbin "baserom.gba", 0x0B4794, 0x0000004
	.4byte gUnk_080B4778
	.incbin "baserom.gba", 0x0B479C, 0x000000C

gUnk_080B47A8:: @ 080B47A8
	.incbin "baserom.gba", 0x0B47A8, 0x0000008

gUnk_080B47B0:: @ 080B47B0
	.incbin "baserom.gba", 0x0B47B0, 0x0000008

gUnk_080B47B8:: @ 080B47B8
	.incbin "baserom.gba", 0x0B47B8, 0x0000008

gUnk_080B47C0:: @ 080B47C0
	.incbin "baserom.gba", 0x0B47C0, 0x0000008

gUnk_080B47C8:: @ 080B47C8
	.4byte gUnk_080B47A8
	.incbin "baserom.gba", 0x0B47CC, 0x0000004
	.4byte gUnk_080B47B0
	.incbin "baserom.gba", 0x0B47D4, 0x0000004
	.4byte gUnk_080B47B8
	.incbin "baserom.gba", 0x0B47DC, 0x0000004
	.4byte gUnk_080B47C0
	.incbin "baserom.gba", 0x0B47E4, 0x000000C

gUnk_080B47F0:: @ 080B47F0
	.incbin "baserom.gba", 0x0B47F0, 0x0000008

gUnk_080B47F8:: @ 080B47F8
	.incbin "baserom.gba", 0x0B47F8, 0x0000008

gUnk_080B4800:: @ 080B4800
	.incbin "baserom.gba", 0x0B4800, 0x0000008

gUnk_080B4808:: @ 080B4808
	.incbin "baserom.gba", 0x0B4808, 0x0000008

gUnk_080B4810:: @ 080B4810
	.4byte gUnk_080B47F0
	.incbin "baserom.gba", 0x0B4814, 0x0000004
	.4byte gUnk_080B47F8
	.incbin "baserom.gba", 0x0B481C, 0x0000004
	.4byte gUnk_080B4800
	.incbin "baserom.gba", 0x0B4824, 0x0000004
	.4byte gUnk_080B4808
	.incbin "baserom.gba", 0x0B482C, 0x000000C

gUnk_080B4838:: @ 080B4838
	.incbin "baserom.gba", 0x0B4838, 0x0000010

gUnk_080B4848:: @ 080B4848
	.incbin "baserom.gba", 0x0B4848, 0x0000010

gUnk_080B4858:: @ 080B4858
	.incbin "baserom.gba", 0x0B4858, 0x0000010

gUnk_080B4868:: @ 080B4868
	.incbin "baserom.gba", 0x0B4868, 0x0000010

gUnk_080B4878:: @ 080B4878
	.4byte gUnk_080B4838
	.incbin "baserom.gba", 0x0B487C, 0x0000004
	.4byte gUnk_080B4848
	.incbin "baserom.gba", 0x0B4884, 0x0000004
	.4byte gUnk_080B4858
	.incbin "baserom.gba", 0x0B488C, 0x0000004
	.4byte gUnk_080B4868
	.incbin "baserom.gba", 0x0B4894, 0x000000C

gUnk_080B48A0:: @ 080B48A0
	.incbin "baserom.gba", 0x0B48A0, 0x0000008

gUnk_080B48A8:: @ 080B48A8
	.incbin "baserom.gba", 0x0B48A8, 0x0000008

gUnk_080B48B0:: @ 080B48B0
	.incbin "baserom.gba", 0x0B48B0, 0x0000008

gUnk_080B48B8:: @ 080B48B8
	.incbin "baserom.gba", 0x0B48B8, 0x0000008

gUnk_080B48C0:: @ 080B48C0
	.incbin "baserom.gba", 0x0B48C0, 0x0000008

gUnk_080B48C8:: @ 080B48C8
	.incbin "baserom.gba", 0x0B48C8, 0x0000008

gUnk_080B48D0:: @ 080B48D0
	.4byte gUnk_080B48A0
	.incbin "baserom.gba", 0x0B48D4, 0x0000004
	.4byte gUnk_080B48A8
	.incbin "baserom.gba", 0x0B48DC, 0x0000004
	.4byte gUnk_080B48B0
	.incbin "baserom.gba", 0x0B48E4, 0x0000004
	.4byte gUnk_080B48B8
	.incbin "baserom.gba", 0x0B48EC, 0x0000004
	.4byte gUnk_080B48C0
	.incbin "baserom.gba", 0x0B48F4, 0x0000004
	.4byte gUnk_080B48C8
	.incbin "baserom.gba", 0x0B48FC, 0x000000C

gUnk_080B4908:: @ 080B4908
	.incbin "baserom.gba", 0x0B4908, 0x0000008

gUnk_080B4910:: @ 080B4910
	.incbin "baserom.gba", 0x0B4910, 0x0000008

gUnk_080B4918:: @ 080B4918
	.incbin "baserom.gba", 0x0B4918, 0x0000008

gUnk_080B4920:: @ 080B4920
	.incbin "baserom.gba", 0x0B4920, 0x0000008

gUnk_080B4928:: @ 080B4928
	.incbin "baserom.gba", 0x0B4928, 0x0000008

gUnk_080B4930:: @ 080B4930
	.incbin "baserom.gba", 0x0B4930, 0x0000008

gUnk_080B4938:: @ 080B4938
	.4byte gUnk_080B4908
	.incbin "baserom.gba", 0x0B493C, 0x0000004
	.4byte gUnk_080B4910
	.incbin "baserom.gba", 0x0B4944, 0x0000004
	.4byte gUnk_080B4918
	.incbin "baserom.gba", 0x0B494C, 0x0000004
	.4byte gUnk_080B4920
	.incbin "baserom.gba", 0x0B4954, 0x0000004
	.4byte gUnk_080B4928
	.incbin "baserom.gba", 0x0B495C, 0x0000004
	.4byte gUnk_080B4930
	.incbin "baserom.gba", 0x0B4964, 0x000000C

gUnk_080B4970:: @ 080B4970
	.incbin "baserom.gba", 0x0B4970, 0x0000008

gUnk_080B4978:: @ 080B4978
	.incbin "baserom.gba", 0x0B4978, 0x0000008

gUnk_080B4980:: @ 080B4980
	.incbin "baserom.gba", 0x0B4980, 0x0000008

gUnk_080B4988:: @ 080B4988
	.incbin "baserom.gba", 0x0B4988, 0x0000008

gUnk_080B4990:: @ 080B4990
	.incbin "baserom.gba", 0x0B4990, 0x0000008

gUnk_080B4998:: @ 080B4998
	.incbin "baserom.gba", 0x0B4998, 0x0000008

gUnk_080B49A0:: @ 080B49A0
	.4byte gUnk_080B4970
	.incbin "baserom.gba", 0x0B49A4, 0x0000004
	.4byte gUnk_080B4978
	.incbin "baserom.gba", 0x0B49AC, 0x0000004
	.4byte gUnk_080B4980
	.incbin "baserom.gba", 0x0B49B4, 0x0000004
	.4byte gUnk_080B4988
	.incbin "baserom.gba", 0x0B49BC, 0x0000004
	.4byte gUnk_080B4990
	.incbin "baserom.gba", 0x0B49C4, 0x0000004
	.4byte gUnk_080B4998
	.incbin "baserom.gba", 0x0B49CC, 0x000000C

gUnk_080B49D8:: @ 080B49D8
	.incbin "baserom.gba", 0x0B49D8, 0x0000008

gUnk_080B49E0:: @ 080B49E0
	.incbin "baserom.gba", 0x0B49E0, 0x0000008

gUnk_080B49E8:: @ 080B49E8
	.incbin "baserom.gba", 0x0B49E8, 0x0000008

gUnk_080B49F0:: @ 080B49F0
	.incbin "baserom.gba", 0x0B49F0, 0x0000008

gUnk_080B49F8:: @ 080B49F8
	.4byte gUnk_080B49D8
	.incbin "baserom.gba", 0x0B49FC, 0x0000004
	.4byte gUnk_080B49E0
	.incbin "baserom.gba", 0x0B4A04, 0x0000004
	.4byte gUnk_080B49E8
	.incbin "baserom.gba", 0x0B4A0C, 0x0000004
	.4byte gUnk_080B49F0
	.incbin "baserom.gba", 0x0B4A14, 0x000000C

gUnk_080B4A20:: @ 080B4A20
	.incbin "baserom.gba", 0x0B4A20, 0x0000008

gUnk_080B4A28:: @ 080B4A28
	.incbin "baserom.gba", 0x0B4A28, 0x0000008

gUnk_080B4A30:: @ 080B4A30
	.incbin "baserom.gba", 0x0B4A30, 0x0000008

gUnk_080B4A38:: @ 080B4A38
	.incbin "baserom.gba", 0x0B4A38, 0x0000008

gUnk_080B4A40:: @ 080B4A40
	.4byte gUnk_080B4A20
	.incbin "baserom.gba", 0x0B4A44, 0x0000004
	.4byte gUnk_080B4A28
	.incbin "baserom.gba", 0x0B4A4C, 0x0000004
	.4byte gUnk_080B4A30
	.incbin "baserom.gba", 0x0B4A54, 0x0000004
	.4byte gUnk_080B4A38
	.incbin "baserom.gba", 0x0B4A5C, 0x000000C

gUnk_080B4A68:: @ 080B4A68
	.incbin "baserom.gba", 0x0B4A68, 0x0000008

gUnk_080B4A70:: @ 080B4A70
	.incbin "baserom.gba", 0x0B4A70, 0x0000008

gUnk_080B4A78:: @ 080B4A78
	.incbin "baserom.gba", 0x0B4A78, 0x0000008

gUnk_080B4A80:: @ 080B4A80
	.incbin "baserom.gba", 0x0B4A80, 0x0000008

gUnk_080B4A88:: @ 080B4A88
	.4byte gUnk_080B4A68
	.incbin "baserom.gba", 0x0B4A8C, 0x0000004
	.4byte gUnk_080B4A70
	.incbin "baserom.gba", 0x0B4A94, 0x0000004
	.4byte gUnk_080B4A78
	.incbin "baserom.gba", 0x0B4A9C, 0x0000004
	.4byte gUnk_080B4A80
	.incbin "baserom.gba", 0x0B4AA4, 0x000000C

gUnk_080B4AB0:: @ 080B4AB0
	.incbin "baserom.gba", 0x0B4AB0, 0x0000008

gUnk_080B4AB8:: @ 080B4AB8
	.incbin "baserom.gba", 0x0B4AB8, 0x0000008

gUnk_080B4AC0:: @ 080B4AC0
	.incbin "baserom.gba", 0x0B4AC0, 0x0000008

gUnk_080B4AC8:: @ 080B4AC8
	.incbin "baserom.gba", 0x0B4AC8, 0x0000008

gUnk_080B4AD0:: @ 080B4AD0
	.4byte gUnk_080B4AB0
	.incbin "baserom.gba", 0x0B4AD4, 0x0000004
	.4byte gUnk_080B4AB8
	.incbin "baserom.gba", 0x0B4ADC, 0x0000004
	.4byte gUnk_080B4AC0
	.incbin "baserom.gba", 0x0B4AE4, 0x0000004
	.4byte gUnk_080B4AC8
	.incbin "baserom.gba", 0x0B4AEC, 0x000000C

gUnk_080B4AF8:: @ 080B4AF8
	.incbin "baserom.gba", 0x0B4AF8, 0x0000008

gUnk_080B4B00:: @ 080B4B00
	.incbin "baserom.gba", 0x0B4B00, 0x0000008

gUnk_080B4B08:: @ 080B4B08
	.incbin "baserom.gba", 0x0B4B08, 0x0000008

gUnk_080B4B10:: @ 080B4B10
	.incbin "baserom.gba", 0x0B4B10, 0x0000008

gUnk_080B4B18:: @ 080B4B18
	.4byte gUnk_080B4AF8
	.incbin "baserom.gba", 0x0B4B1C, 0x0000004
	.4byte gUnk_080B4B00
	.incbin "baserom.gba", 0x0B4B24, 0x0000004
	.4byte gUnk_080B4B08
	.incbin "baserom.gba", 0x0B4B2C, 0x0000004
	.4byte gUnk_080B4B10
	.incbin "baserom.gba", 0x0B4B34, 0x000000C

gUnk_080B4B40:: @ 080B4B40
	.incbin "baserom.gba", 0x0B4B40, 0x0000008

gUnk_080B4B48:: @ 080B4B48
	.incbin "baserom.gba", 0x0B4B48, 0x0000008

gUnk_080B4B50:: @ 080B4B50
	.incbin "baserom.gba", 0x0B4B50, 0x0000008

gUnk_080B4B58:: @ 080B4B58
	.incbin "baserom.gba", 0x0B4B58, 0x0000008

gUnk_080B4B60:: @ 080B4B60
	.4byte gUnk_080B4B40
	.incbin "baserom.gba", 0x0B4B64, 0x0000004
	.4byte gUnk_080B4B48
	.incbin "baserom.gba", 0x0B4B6C, 0x0000004
	.4byte gUnk_080B4B50
	.incbin "baserom.gba", 0x0B4B74, 0x0000004
	.4byte gUnk_080B4B58
	.incbin "baserom.gba", 0x0B4B7C, 0x000000C

gUnk_080B4B88:: @ 080B4B88
	.incbin "baserom.gba", 0x0B4B88, 0x0000008

gUnk_080B4B90:: @ 080B4B90
	.incbin "baserom.gba", 0x0B4B90, 0x0000008

gUnk_080B4B98:: @ 080B4B98
	.incbin "baserom.gba", 0x0B4B98, 0x0000008

gUnk_080B4BA0:: @ 080B4BA0
	.incbin "baserom.gba", 0x0B4BA0, 0x0000008

gUnk_080B4BA8:: @ 080B4BA8
	.4byte gUnk_080B4B88
	.incbin "baserom.gba", 0x0B4BAC, 0x0000004
	.4byte gUnk_080B4B90
	.incbin "baserom.gba", 0x0B4BB4, 0x0000004
	.4byte gUnk_080B4B98
	.incbin "baserom.gba", 0x0B4BBC, 0x0000004
	.4byte gUnk_080B4BA0
	.incbin "baserom.gba", 0x0B4BC4, 0x000000C

gUnk_080B4BD0:: @ 080B4BD0
	.incbin "baserom.gba", 0x0B4BD0, 0x0000008

gUnk_080B4BD8:: @ 080B4BD8
	.incbin "baserom.gba", 0x0B4BD8, 0x0000008

gUnk_080B4BE0:: @ 080B4BE0
	.incbin "baserom.gba", 0x0B4BE0, 0x0000008

gUnk_080B4BE8:: @ 080B4BE8
	.incbin "baserom.gba", 0x0B4BE8, 0x0000008

gUnk_080B4BF0:: @ 080B4BF0
	.4byte gUnk_080B4BD0
	.incbin "baserom.gba", 0x0B4BF4, 0x0000004
	.4byte gUnk_080B4BD8
	.incbin "baserom.gba", 0x0B4BFC, 0x0000004
	.4byte gUnk_080B4BE0
	.incbin "baserom.gba", 0x0B4C04, 0x0000004
	.4byte gUnk_080B4BE8
	.incbin "baserom.gba", 0x0B4C0C, 0x000000C

gUnk_080B4C18:: @ 080B4C18
	.incbin "baserom.gba", 0x0B4C18, 0x0000008

gUnk_080B4C20:: @ 080B4C20
	.incbin "baserom.gba", 0x0B4C20, 0x0000008

gUnk_080B4C28:: @ 080B4C28
	.incbin "baserom.gba", 0x0B4C28, 0x0000008

gUnk_080B4C30:: @ 080B4C30
	.incbin "baserom.gba", 0x0B4C30, 0x0000008

gUnk_080B4C38:: @ 080B4C38
	.4byte gUnk_080B4C18
	.incbin "baserom.gba", 0x0B4C3C, 0x0000004
	.4byte gUnk_080B4C20
	.incbin "baserom.gba", 0x0B4C44, 0x0000004
	.4byte gUnk_080B4C28
	.incbin "baserom.gba", 0x0B4C4C, 0x0000004
	.4byte gUnk_080B4C30
	.incbin "baserom.gba", 0x0B4C54, 0x000000C

gUnk_080B4C60:: @ 080B4C60
	.incbin "baserom.gba", 0x0B4C60, 0x0000008

gUnk_080B4C68:: @ 080B4C68
	.incbin "baserom.gba", 0x0B4C68, 0x0000008

gUnk_080B4C70:: @ 080B4C70
	.incbin "baserom.gba", 0x0B4C70, 0x0000008

gUnk_080B4C78:: @ 080B4C78
	.incbin "baserom.gba", 0x0B4C78, 0x0000008

gUnk_080B4C80:: @ 080B4C80
	.4byte gUnk_080B4C60
	.incbin "baserom.gba", 0x0B4C84, 0x0000004
	.4byte gUnk_080B4C68
	.incbin "baserom.gba", 0x0B4C8C, 0x0000004
	.4byte gUnk_080B4C70
	.incbin "baserom.gba", 0x0B4C94, 0x0000004
	.4byte gUnk_080B4C78
	.incbin "baserom.gba", 0x0B4C9C, 0x000000C

gUnk_080B4CA8:: @ 080B4CA8
	.incbin "baserom.gba", 0x0B4CA8, 0x0000008

gUnk_080B4CB0:: @ 080B4CB0
	.incbin "baserom.gba", 0x0B4CB0, 0x0000008

gUnk_080B4CB8:: @ 080B4CB8
	.incbin "baserom.gba", 0x0B4CB8, 0x0000008

gUnk_080B4CC0:: @ 080B4CC0
	.incbin "baserom.gba", 0x0B4CC0, 0x0000008

gUnk_080B4CC8:: @ 080B4CC8
	.4byte gUnk_080B4CA8
	.incbin "baserom.gba", 0x0B4CCC, 0x0000004
	.4byte gUnk_080B4CB0
	.incbin "baserom.gba", 0x0B4CD4, 0x0000004
	.4byte gUnk_080B4CB8
	.incbin "baserom.gba", 0x0B4CDC, 0x0000004
	.4byte gUnk_080B4CC0
	.incbin "baserom.gba", 0x0B4CE4, 0x000000C

gUnk_080B4CF0:: @ 080B4CF0
	.incbin "baserom.gba", 0x0B4CF0, 0x0000010

gUnk_080B4D00:: @ 080B4D00
	.incbin "baserom.gba", 0x0B4D00, 0x0000010

gUnk_080B4D10:: @ 080B4D10
	.4byte gUnk_080B4CF0
	.incbin "baserom.gba", 0x0B4D14, 0x0000004
	.4byte gUnk_080B4D00
	.incbin "baserom.gba", 0x0B4D1C, 0x000000C

gUnk_080B4D28:: @ 080B4D28
	.incbin "baserom.gba", 0x0B4D28, 0x0000008

gUnk_080B4D30:: @ 080B4D30
	.incbin "baserom.gba", 0x0B4D30, 0x0000008

gUnk_080B4D38:: @ 080B4D38
	.incbin "baserom.gba", 0x0B4D38, 0x0000008

gUnk_080B4D40:: @ 080B4D40
	.incbin "baserom.gba", 0x0B4D40, 0x0000008

gUnk_080B4D48:: @ 080B4D48
	.incbin "baserom.gba", 0x0B4D48, 0x0000008

gUnk_080B4D50:: @ 080B4D50
	.incbin "baserom.gba", 0x0B4D50, 0x0000008

gUnk_080B4D58:: @ 080B4D58
	.incbin "baserom.gba", 0x0B4D58, 0x0000008

gUnk_080B4D60:: @ 080B4D60
	.incbin "baserom.gba", 0x0B4D60, 0x0000008

gUnk_080B4D68:: @ 080B4D68
	.incbin "baserom.gba", 0x0B4D68, 0x0000008

gUnk_080B4D70:: @ 080B4D70
	.incbin "baserom.gba", 0x0B4D70, 0x0000008

gUnk_080B4D78:: @ 080B4D78
	.incbin "baserom.gba", 0x0B4D78, 0x0000008

gUnk_080B4D80:: @ 080B4D80
	.incbin "baserom.gba", 0x0B4D80, 0x0000008

gUnk_080B4D88:: @ 080B4D88
	.incbin "baserom.gba", 0x0B4D88, 0x0000008

gUnk_080B4D90:: @ 080B4D90
	.incbin "baserom.gba", 0x0B4D90, 0x0000008

gUnk_080B4D98:: @ 080B4D98
	.incbin "baserom.gba", 0x0B4D98, 0x0000008

gUnk_080B4DA0:: @ 080B4DA0
	.incbin "baserom.gba", 0x0B4DA0, 0x0000008

gUnk_080B4DA8:: @ 080B4DA8
	.4byte gUnk_080B4D28
	.incbin "baserom.gba", 0x0B4DAC, 0x0000004
	.4byte gUnk_080B4D30
	.incbin "baserom.gba", 0x0B4DB4, 0x0000004
	.4byte gUnk_080B4D38
	.incbin "baserom.gba", 0x0B4DBC, 0x0000004
	.4byte gUnk_080B4D40
	.incbin "baserom.gba", 0x0B4DC4, 0x0000004
	.4byte gUnk_080B4D48
	.incbin "baserom.gba", 0x0B4DCC, 0x0000004
	.4byte gUnk_080B4D50
	.incbin "baserom.gba", 0x0B4DD4, 0x0000004
	.4byte gUnk_080B4D58
	.incbin "baserom.gba", 0x0B4DDC, 0x0000004
	.4byte gUnk_080B4D60
	.incbin "baserom.gba", 0x0B4DE4, 0x0000004
	.4byte gUnk_080B4D68
	.incbin "baserom.gba", 0x0B4DEC, 0x0000004
	.4byte gUnk_080B4D70
	.incbin "baserom.gba", 0x0B4DF4, 0x0000004
	.4byte gUnk_080B4D78
	.incbin "baserom.gba", 0x0B4DFC, 0x0000004
	.4byte gUnk_080B4D80
	.incbin "baserom.gba", 0x0B4E04, 0x0000004
	.4byte gUnk_080B4D88
	.incbin "baserom.gba", 0x0B4E0C, 0x0000004
	.4byte gUnk_080B4D90
	.incbin "baserom.gba", 0x0B4E14, 0x0000004
	.4byte gUnk_080B4D98
	.incbin "baserom.gba", 0x0B4E1C, 0x0000004
	.4byte gUnk_080B4DA0
	.incbin "baserom.gba", 0x0B4E24, 0x000000C

gUnk_080B4E30:: @ 080B4E30
	.incbin "baserom.gba", 0x0B4E30, 0x0000008

gUnk_080B4E38:: @ 080B4E38
	.incbin "baserom.gba", 0x0B4E38, 0x0000008

gUnk_080B4E40:: @ 080B4E40
	.incbin "baserom.gba", 0x0B4E40, 0x0000008

gUnk_080B4E48:: @ 080B4E48
	.incbin "baserom.gba", 0x0B4E48, 0x0000008

gUnk_080B4E50:: @ 080B4E50
	.4byte gUnk_080B4E30
	.incbin "baserom.gba", 0x0B4E54, 0x0000004
	.4byte gUnk_080B4E38
	.incbin "baserom.gba", 0x0B4E5C, 0x0000004
	.4byte gUnk_080B4E40
	.incbin "baserom.gba", 0x0B4E64, 0x0000004
	.4byte gUnk_080B4E48
	.incbin "baserom.gba", 0x0B4E6C, 0x000000C

gUnk_080B4E78:: @ 080B4E78
	.incbin "baserom.gba", 0x0B4E78, 0x0000008

gUnk_080B4E80:: @ 080B4E80
	.incbin "baserom.gba", 0x0B4E80, 0x0000008

gUnk_080B4E88:: @ 080B4E88
	.incbin "baserom.gba", 0x0B4E88, 0x0000008

gUnk_080B4E90:: @ 080B4E90
	.incbin "baserom.gba", 0x0B4E90, 0x0000008

gUnk_080B4E98:: @ 080B4E98
	.4byte gUnk_080B4E78
	.incbin "baserom.gba", 0x0B4E9C, 0x0000004
	.4byte gUnk_080B4E80
	.incbin "baserom.gba", 0x0B4EA4, 0x0000004
	.4byte gUnk_080B4E88
	.incbin "baserom.gba", 0x0B4EAC, 0x0000004
	.4byte gUnk_080B4E90
	.incbin "baserom.gba", 0x0B4EB4, 0x000000C

gUnk_080B4EC0:: @ 080B4EC0
	.incbin "baserom.gba", 0x0B4EC0, 0x0000008

gUnk_080B4EC8:: @ 080B4EC8
	.incbin "baserom.gba", 0x0B4EC8, 0x0000008

gUnk_080B4ED0:: @ 080B4ED0
	.incbin "baserom.gba", 0x0B4ED0, 0x0000008

gUnk_080B4ED8:: @ 080B4ED8
	.incbin "baserom.gba", 0x0B4ED8, 0x0000008

gUnk_080B4EE0:: @ 080B4EE0
	.4byte gUnk_080B4EC0
	.incbin "baserom.gba", 0x0B4EE4, 0x0000004
	.4byte gUnk_080B4EC8
	.incbin "baserom.gba", 0x0B4EEC, 0x0000004
	.4byte gUnk_080B4ED0
	.incbin "baserom.gba", 0x0B4EF4, 0x0000004
	.4byte gUnk_080B4ED8
	.incbin "baserom.gba", 0x0B4EFC, 0x000000C

gUnk_080B4F08:: @ 080B4F08
	.incbin "baserom.gba", 0x0B4F08, 0x0000008

gUnk_080B4F10:: @ 080B4F10
	.incbin "baserom.gba", 0x0B4F10, 0x0000008

gUnk_080B4F18:: @ 080B4F18
	.incbin "baserom.gba", 0x0B4F18, 0x0000008

gUnk_080B4F20:: @ 080B4F20
	.incbin "baserom.gba", 0x0B4F20, 0x0000008

gUnk_080B4F28:: @ 080B4F28
	.4byte gUnk_080B4F08
	.incbin "baserom.gba", 0x0B4F2C, 0x0000004
	.4byte gUnk_080B4F10
	.incbin "baserom.gba", 0x0B4F34, 0x0000004
	.4byte gUnk_080B4F18
	.incbin "baserom.gba", 0x0B4F3C, 0x0000004
	.4byte gUnk_080B4F20
	.incbin "baserom.gba", 0x0B4F44, 0x000000C

gUnk_080B4F50:: @ 080B4F50
	.incbin "baserom.gba", 0x0B4F50, 0x0000008

gUnk_080B4F58:: @ 080B4F58
	.incbin "baserom.gba", 0x0B4F58, 0x0000008

gUnk_080B4F60:: @ 080B4F60
	.incbin "baserom.gba", 0x0B4F60, 0x0000008

gUnk_080B4F68:: @ 080B4F68
	.incbin "baserom.gba", 0x0B4F68, 0x0000008

gUnk_080B4F70:: @ 080B4F70
	.4byte gUnk_080B4F50
	.incbin "baserom.gba", 0x0B4F74, 0x0000004
	.4byte gUnk_080B4F58
	.incbin "baserom.gba", 0x0B4F7C, 0x0000004
	.4byte gUnk_080B4F60
	.incbin "baserom.gba", 0x0B4F84, 0x0000004
	.4byte gUnk_080B4F68
	.incbin "baserom.gba", 0x0B4F8C, 0x000000C

gUnk_080B4F98:: @ 080B4F98
	.incbin "baserom.gba", 0x0B4F98, 0x0000010

gUnk_080B4FA8:: @ 080B4FA8
	.incbin "baserom.gba", 0x0B4FA8, 0x0000010

gUnk_080B4FB8:: @ 080B4FB8
	.incbin "baserom.gba", 0x0B4FB8, 0x0000010

gUnk_080B4FC8:: @ 080B4FC8
	.incbin "baserom.gba", 0x0B4FC8, 0x0000010

gUnk_080B4FD8:: @ 080B4FD8
	.4byte gUnk_080B4F98
	.incbin "baserom.gba", 0x0B4FDC, 0x0000004
	.4byte gUnk_080B4FA8
	.incbin "baserom.gba", 0x0B4FE4, 0x0000004
	.4byte gUnk_080B4FB8
	.incbin "baserom.gba", 0x0B4FEC, 0x0000004
	.4byte gUnk_080B4FC8
	.incbin "baserom.gba", 0x0B4FF4, 0x000000C

gUnk_080B5000:: @ 080B5000
	.incbin "baserom.gba", 0x0B5000, 0x0000008

gUnk_080B5008:: @ 080B5008
	.incbin "baserom.gba", 0x0B5008, 0x0000008

gUnk_080B5010:: @ 080B5010
	.incbin "baserom.gba", 0x0B5010, 0x0000008

gUnk_080B5018:: @ 080B5018
	.incbin "baserom.gba", 0x0B5018, 0x0000008

gUnk_080B5020:: @ 080B5020
	.4byte gUnk_080B5000
	.incbin "baserom.gba", 0x0B5024, 0x0000004
	.4byte gUnk_080B5008
	.incbin "baserom.gba", 0x0B502C, 0x0000004
	.4byte gUnk_080B5010
	.incbin "baserom.gba", 0x0B5034, 0x0000004
	.4byte gUnk_080B5018
	.incbin "baserom.gba", 0x0B503C, 0x000000C

gUnk_080B5048:: @ 080B5048
	.incbin "baserom.gba", 0x0B5048, 0x0000008

gUnk_080B5050:: @ 080B5050
	.incbin "baserom.gba", 0x0B5050, 0x0000008

gUnk_080B5058:: @ 080B5058
	.incbin "baserom.gba", 0x0B5058, 0x0000008

gUnk_080B5060:: @ 080B5060
	.incbin "baserom.gba", 0x0B5060, 0x0000008

gUnk_080B5068:: @ 080B5068
	.incbin "baserom.gba", 0x0B5068, 0x0000008

gUnk_080B5070:: @ 080B5070
	.incbin "baserom.gba", 0x0B5070, 0x0000008

gUnk_080B5078:: @ 080B5078
	.incbin "baserom.gba", 0x0B5078, 0x0000008

gUnk_080B5080:: @ 080B5080
	.incbin "baserom.gba", 0x0B5080, 0x0000008

gUnk_080B5088:: @ 080B5088
	.incbin "baserom.gba", 0x0B5088, 0x0000008

gUnk_080B5090:: @ 080B5090
	.incbin "baserom.gba", 0x0B5090, 0x0000008

gUnk_080B5098:: @ 080B5098
	.incbin "baserom.gba", 0x0B5098, 0x0000008

gUnk_080B50A0:: @ 080B50A0
	.incbin "baserom.gba", 0x0B50A0, 0x0000008

gUnk_080B50A8:: @ 080B50A8
	.incbin "baserom.gba", 0x0B50A8, 0x0000008

gUnk_080B50B0:: @ 080B50B0
	.incbin "baserom.gba", 0x0B50B0, 0x0000008

gUnk_080B50B8:: @ 080B50B8
	.incbin "baserom.gba", 0x0B50B8, 0x0000008

gUnk_080B50C0:: @ 080B50C0
	.incbin "baserom.gba", 0x0B50C0, 0x0000008

gUnk_080B50C8:: @ 080B50C8
	.4byte gUnk_080B5048
	.incbin "baserom.gba", 0x0B50CC, 0x0000004
	.4byte gUnk_080B5050
	.incbin "baserom.gba", 0x0B50D4, 0x0000004
	.4byte gUnk_080B5058
	.incbin "baserom.gba", 0x0B50DC, 0x0000004
	.4byte gUnk_080B5060
	.incbin "baserom.gba", 0x0B50E4, 0x0000004
	.4byte gUnk_080B5068
	.incbin "baserom.gba", 0x0B50EC, 0x0000004
	.4byte gUnk_080B5070
	.incbin "baserom.gba", 0x0B50F4, 0x0000004
	.4byte gUnk_080B5078
	.incbin "baserom.gba", 0x0B50FC, 0x0000004
	.4byte gUnk_080B5080
	.incbin "baserom.gba", 0x0B5104, 0x0000004
	.4byte gUnk_080B5088
	.incbin "baserom.gba", 0x0B510C, 0x0000004
	.4byte gUnk_080B5090
	.incbin "baserom.gba", 0x0B5114, 0x0000004
	.4byte gUnk_080B5098
	.incbin "baserom.gba", 0x0B511C, 0x0000004
	.4byte gUnk_080B50A0
	.incbin "baserom.gba", 0x0B5124, 0x0000004
	.4byte gUnk_080B50A8
	.incbin "baserom.gba", 0x0B512C, 0x0000004
	.4byte gUnk_080B50B0
	.incbin "baserom.gba", 0x0B5134, 0x0000004
	.4byte gUnk_080B50B8
	.incbin "baserom.gba", 0x0B513C, 0x0000004
	.4byte gUnk_080B50C0
	.incbin "baserom.gba", 0x0B5144, 0x000000C

gUnk_080B5150:: @ 080B5150
	.incbin "baserom.gba", 0x0B5150, 0x0000008

gUnk_080B5158:: @ 080B5158
	.incbin "baserom.gba", 0x0B5158, 0x0000008

gUnk_080B5160:: @ 080B5160
	.incbin "baserom.gba", 0x0B5160, 0x0000008

gUnk_080B5168:: @ 080B5168
	.incbin "baserom.gba", 0x0B5168, 0x0000008

gUnk_080B5170:: @ 080B5170
	.4byte gUnk_080B5150
	.incbin "baserom.gba", 0x0B5174, 0x0000004
	.4byte gUnk_080B5158
	.incbin "baserom.gba", 0x0B517C, 0x0000004
	.4byte gUnk_080B5160
	.incbin "baserom.gba", 0x0B5184, 0x0000004
	.4byte gUnk_080B5168
	.incbin "baserom.gba", 0x0B518C, 0x000000C

gUnk_080B5198:: @ 080B5198
	.incbin "baserom.gba", 0x0B5198, 0x0000008

gUnk_080B51A0:: @ 080B51A0
	.incbin "baserom.gba", 0x0B51A0, 0x0000008

gUnk_080B51A8:: @ 080B51A8
	.incbin "baserom.gba", 0x0B51A8, 0x0000008

gUnk_080B51B0:: @ 080B51B0
	.incbin "baserom.gba", 0x0B51B0, 0x0000008

gUnk_080B51B8:: @ 080B51B8
	.4byte gUnk_080B5198
	.incbin "baserom.gba", 0x0B51BC, 0x0000004
	.4byte gUnk_080B51A0
	.incbin "baserom.gba", 0x0B51C4, 0x0000004
	.4byte gUnk_080B51A8
	.incbin "baserom.gba", 0x0B51CC, 0x0000004
	.4byte gUnk_080B51B0
	.incbin "baserom.gba", 0x0B51D4, 0x000000C

gUnk_080B51E0:: @ 080B51E0
	.incbin "baserom.gba", 0x0B51E0, 0x0000008

gUnk_080B51E8:: @ 080B51E8
	.incbin "baserom.gba", 0x0B51E8, 0x0000008

gUnk_080B51F0:: @ 080B51F0
	.incbin "baserom.gba", 0x0B51F0, 0x0000008

gUnk_080B51F8:: @ 080B51F8
	.incbin "baserom.gba", 0x0B51F8, 0x0000008

gUnk_080B5200:: @ 080B5200
	.incbin "baserom.gba", 0x0B5200, 0x0000008

gUnk_080B5208:: @ 080B5208
	.incbin "baserom.gba", 0x0B5208, 0x0000008

gUnk_080B5210:: @ 080B5210
	.incbin "baserom.gba", 0x0B5210, 0x0000008

gUnk_080B5218:: @ 080B5218
	.incbin "baserom.gba", 0x0B5218, 0x0000008

gUnk_080B5220:: @ 080B5220
	.incbin "baserom.gba", 0x0B5220, 0x0000008

gUnk_080B5228:: @ 080B5228
	.incbin "baserom.gba", 0x0B5228, 0x0000008

gUnk_080B5230:: @ 080B5230
	.incbin "baserom.gba", 0x0B5230, 0x0000008

gUnk_080B5238:: @ 080B5238
	.incbin "baserom.gba", 0x0B5238, 0x0000008

gUnk_080B5240:: @ 080B5240
	.incbin "baserom.gba", 0x0B5240, 0x0000008

gUnk_080B5248:: @ 080B5248
	.incbin "baserom.gba", 0x0B5248, 0x0000008

gUnk_080B5250:: @ 080B5250
	.incbin "baserom.gba", 0x0B5250, 0x0000008

gUnk_080B5258:: @ 080B5258
	.incbin "baserom.gba", 0x0B5258, 0x0000008

gUnk_080B5260:: @ 080B5260
	.4byte gUnk_080B51E0
	.incbin "baserom.gba", 0x0B5264, 0x0000004
	.4byte gUnk_080B51E8
	.incbin "baserom.gba", 0x0B526C, 0x0000004
	.4byte gUnk_080B51F0
	.incbin "baserom.gba", 0x0B5274, 0x0000004
	.4byte gUnk_080B51F8
	.incbin "baserom.gba", 0x0B527C, 0x0000004
	.4byte gUnk_080B5200
	.incbin "baserom.gba", 0x0B5284, 0x0000004
	.4byte gUnk_080B5208
	.incbin "baserom.gba", 0x0B528C, 0x0000004
	.4byte gUnk_080B5210
	.incbin "baserom.gba", 0x0B5294, 0x0000004
	.4byte gUnk_080B5218
	.incbin "baserom.gba", 0x0B529C, 0x0000004
	.4byte gUnk_080B5220
	.incbin "baserom.gba", 0x0B52A4, 0x0000004
	.4byte gUnk_080B5228
	.incbin "baserom.gba", 0x0B52AC, 0x0000004
	.4byte gUnk_080B5230
	.incbin "baserom.gba", 0x0B52B4, 0x0000004
	.4byte gUnk_080B5238
	.incbin "baserom.gba", 0x0B52BC, 0x0000004
	.4byte gUnk_080B5240
	.incbin "baserom.gba", 0x0B52C4, 0x0000004
	.4byte gUnk_080B5248
	.incbin "baserom.gba", 0x0B52CC, 0x0000004
	.4byte gUnk_080B5250
	.incbin "baserom.gba", 0x0B52D4, 0x0000004
	.4byte gUnk_080B5258
	.incbin "baserom.gba", 0x0B52DC, 0x000000C

gUnk_080B52E8:: @ 080B52E8
	.incbin "baserom.gba", 0x0B52E8, 0x0000008

gUnk_080B52F0:: @ 080B52F0
	.incbin "baserom.gba", 0x0B52F0, 0x0000008

gUnk_080B52F8:: @ 080B52F8
	.incbin "baserom.gba", 0x0B52F8, 0x0000008

gUnk_080B5300:: @ 080B5300
	.incbin "baserom.gba", 0x0B5300, 0x0000008

gUnk_080B5308:: @ 080B5308
	.4byte gUnk_080B52E8
	.incbin "baserom.gba", 0x0B530C, 0x0000004
	.4byte gUnk_080B52F0
	.incbin "baserom.gba", 0x0B5314, 0x0000004
	.4byte gUnk_080B52F8
	.incbin "baserom.gba", 0x0B531C, 0x0000004
	.4byte gUnk_080B5300
	.incbin "baserom.gba", 0x0B5324, 0x000000C

gUnk_080B5330:: @ 080B5330
	.incbin "baserom.gba", 0x0B5330, 0x0000008

gUnk_080B5338:: @ 080B5338
	.incbin "baserom.gba", 0x0B5338, 0x0000008

gUnk_080B5340:: @ 080B5340
	.incbin "baserom.gba", 0x0B5340, 0x0000008

gUnk_080B5348:: @ 080B5348
	.incbin "baserom.gba", 0x0B5348, 0x0000008

gUnk_080B5350:: @ 080B5350
	.4byte gUnk_080B5330
	.incbin "baserom.gba", 0x0B5354, 0x0000004
	.4byte gUnk_080B5338
	.incbin "baserom.gba", 0x0B535C, 0x0000004
	.4byte gUnk_080B5340
	.incbin "baserom.gba", 0x0B5364, 0x0000004
	.4byte gUnk_080B5348
	.incbin "baserom.gba", 0x0B536C, 0x000000C

gUnk_080B5378:: @ 080B5378
	.incbin "baserom.gba", 0x0B5378, 0x0000008

gUnk_080B5380:: @ 080B5380
	.incbin "baserom.gba", 0x0B5380, 0x0000008

gUnk_080B5388:: @ 080B5388
	.incbin "baserom.gba", 0x0B5388, 0x0000008

gUnk_080B5390:: @ 080B5390
	.incbin "baserom.gba", 0x0B5390, 0x0000008

gUnk_080B5398:: @ 080B5398
	.4byte gUnk_080B5378
	.incbin "baserom.gba", 0x0B539C, 0x0000004
	.4byte gUnk_080B5380
	.incbin "baserom.gba", 0x0B53A4, 0x0000004
	.4byte gUnk_080B5388
	.incbin "baserom.gba", 0x0B53AC, 0x0000004
	.4byte gUnk_080B5390
	.incbin "baserom.gba", 0x0B53B4, 0x000000C

gUnk_080B53C0:: @ 080B53C0
	.incbin "baserom.gba", 0x0B53C0, 0x0000008

gUnk_080B53C8:: @ 080B53C8
	.incbin "baserom.gba", 0x0B53C8, 0x0000008

gUnk_080B53D0:: @ 080B53D0
	.incbin "baserom.gba", 0x0B53D0, 0x0000008

gUnk_080B53D8:: @ 080B53D8
	.incbin "baserom.gba", 0x0B53D8, 0x0000008

gUnk_080B53E0:: @ 080B53E0
	.4byte gUnk_080B53C0
	.incbin "baserom.gba", 0x0B53E4, 0x0000004
	.4byte gUnk_080B53C8
	.incbin "baserom.gba", 0x0B53EC, 0x0000004
	.4byte gUnk_080B53D0
	.incbin "baserom.gba", 0x0B53F4, 0x0000004
	.4byte gUnk_080B53D8
	.incbin "baserom.gba", 0x0B53FC, 0x000000C

gUnk_080B5408:: @ 080B5408
	.incbin "baserom.gba", 0x0B5408, 0x0000008

gUnk_080B5410:: @ 080B5410
	.incbin "baserom.gba", 0x0B5410, 0x0000008

gUnk_080B5418:: @ 080B5418
	.incbin "baserom.gba", 0x0B5418, 0x0000008

gUnk_080B5420:: @ 080B5420
	.incbin "baserom.gba", 0x0B5420, 0x0000008

gUnk_080B5428:: @ 080B5428
	.4byte gUnk_080B5408
	.incbin "baserom.gba", 0x0B542C, 0x0000004
	.4byte gUnk_080B5410
	.incbin "baserom.gba", 0x0B5434, 0x0000004
	.4byte gUnk_080B5418
	.incbin "baserom.gba", 0x0B543C, 0x0000004
	.4byte gUnk_080B5420
	.incbin "baserom.gba", 0x0B5444, 0x000000C

gUnk_080B5450:: @ 080B5450
	.incbin "baserom.gba", 0x0B5450, 0x0000008

gUnk_080B5458:: @ 080B5458
	.incbin "baserom.gba", 0x0B5458, 0x0000008

gUnk_080B5460:: @ 080B5460
	.incbin "baserom.gba", 0x0B5460, 0x0000008

gUnk_080B5468:: @ 080B5468
	.incbin "baserom.gba", 0x0B5468, 0x0000008

gUnk_080B5470:: @ 080B5470
	.incbin "baserom.gba", 0x0B5470, 0x0000008

gUnk_080B5478:: @ 080B5478
	.incbin "baserom.gba", 0x0B5478, 0x0000008

gUnk_080B5480:: @ 080B5480
	.incbin "baserom.gba", 0x0B5480, 0x0000008

gUnk_080B5488:: @ 080B5488
	.incbin "baserom.gba", 0x0B5488, 0x0000008

gUnk_080B5490:: @ 080B5490
	.incbin "baserom.gba", 0x0B5490, 0x0000008

gUnk_080B5498:: @ 080B5498
	.incbin "baserom.gba", 0x0B5498, 0x0000008

gUnk_080B54A0:: @ 080B54A0
	.incbin "baserom.gba", 0x0B54A0, 0x0000008

gUnk_080B54A8:: @ 080B54A8
	.incbin "baserom.gba", 0x0B54A8, 0x0000008

gUnk_080B54B0:: @ 080B54B0
	.incbin "baserom.gba", 0x0B54B0, 0x0000008

gUnk_080B54B8:: @ 080B54B8
	.incbin "baserom.gba", 0x0B54B8, 0x0000008

gUnk_080B54C0:: @ 080B54C0
	.incbin "baserom.gba", 0x0B54C0, 0x0000008

gUnk_080B54C8:: @ 080B54C8
	.incbin "baserom.gba", 0x0B54C8, 0x0000008

gUnk_080B54D0:: @ 080B54D0
	.4byte gUnk_080B5450
	.incbin "baserom.gba", 0x0B54D4, 0x0000004
	.4byte gUnk_080B5458
	.incbin "baserom.gba", 0x0B54DC, 0x0000004
	.4byte gUnk_080B5460
	.incbin "baserom.gba", 0x0B54E4, 0x0000004
	.4byte gUnk_080B5468
	.incbin "baserom.gba", 0x0B54EC, 0x0000004
	.4byte gUnk_080B5470
	.incbin "baserom.gba", 0x0B54F4, 0x0000004
	.4byte gUnk_080B5478

	.incbin "baserom.gba", 0x0B54FC, 0x0000004
	.4byte gUnk_080B5480
	.incbin "baserom.gba", 0x0B5504, 0x0000004
	.4byte gUnk_080B5488
	.incbin "baserom.gba", 0x0B550C, 0x0000004
	.4byte gUnk_080B5490
	.incbin "baserom.gba", 0x0B5514, 0x0000004
	.4byte gUnk_080B5498
	.incbin "baserom.gba", 0x0B551C, 0x0000004
	.4byte gUnk_080B54A0
	.incbin "baserom.gba", 0x0B5524, 0x0000004
	.4byte gUnk_080B54A8
	.incbin "baserom.gba", 0x0B552C, 0x0000004
	.4byte gUnk_080B54B0
	.incbin "baserom.gba", 0x0B5534, 0x0000004
	.4byte gUnk_080B54B8
	.incbin "baserom.gba", 0x0B553C, 0x0000004
	.4byte gUnk_080B54C0
	.incbin "baserom.gba", 0x0B5544, 0x0000004
	.4byte gUnk_080B54C8
	.incbin "baserom.gba", 0x0B554C, 0x000000C

gUnk_080B5558:: @ 080B5558
	.incbin "baserom.gba", 0x0B5558, 0x0000008

gUnk_080B5560:: @ 080B5560
	.incbin "baserom.gba", 0x0B5560, 0x0000008

gUnk_080B5568:: @ 080B5568
	.incbin "baserom.gba", 0x0B5568, 0x0000008

gUnk_080B5570:: @ 080B5570
	.incbin "baserom.gba", 0x0B5570, 0x0000008

gUnk_080B5578:: @ 080B5578
	.incbin "baserom.gba", 0x0B5578, 0x0000008

gUnk_080B5580:: @ 080B5580
	.incbin "baserom.gba", 0x0B5580, 0x0000008

gUnk_080B5588:: @ 080B5588
	.incbin "baserom.gba", 0x0B5588, 0x0000008

gUnk_080B5590:: @ 080B5590
	.incbin "baserom.gba", 0x0B5590, 0x0000008

gUnk_080B5598:: @ 080B5598
	.incbin "baserom.gba", 0x0B5598, 0x0000008

gUnk_080B55A0:: @ 080B55A0
	.incbin "baserom.gba", 0x0B55A0, 0x0000008

gUnk_080B55A8:: @ 080B55A8
	.incbin "baserom.gba", 0x0B55A8, 0x0000008

gUnk_080B55B0:: @ 080B55B0
	.incbin "baserom.gba", 0x0B55B0, 0x0000008

gUnk_080B55B8:: @ 080B55B8
	.incbin "baserom.gba", 0x0B55B8, 0x0000008

gUnk_080B55C0:: @ 080B55C0
	.incbin "baserom.gba", 0x0B55C0, 0x0000008

gUnk_080B55C8:: @ 080B55C8
	.incbin "baserom.gba", 0x0B55C8, 0x0000008

gUnk_080B55D0:: @ 080B55D0
	.incbin "baserom.gba", 0x0B55D0, 0x0000008

gUnk_080B55D8:: @ 080B55D8
	.4byte gUnk_080B5558
	.incbin "baserom.gba", 0x0B55DC, 0x0000004
	.4byte gUnk_080B5560
	.incbin "baserom.gba", 0x0B55E4, 0x0000004
	.4byte gUnk_080B5568
	.incbin "baserom.gba", 0x0B55EC, 0x0000004
	.4byte gUnk_080B5570
	.incbin "baserom.gba", 0x0B55F4, 0x0000004
	.4byte gUnk_080B5578
	.incbin "baserom.gba", 0x0B55FC, 0x0000004
	.4byte gUnk_080B5580
	.incbin "baserom.gba", 0x0B5604, 0x0000004
	.4byte gUnk_080B5588
	.incbin "baserom.gba", 0x0B560C, 0x0000004
	.4byte gUnk_080B5590
	.incbin "baserom.gba", 0x0B5614, 0x0000004
	.4byte gUnk_080B5598
	.incbin "baserom.gba", 0x0B561C, 0x0000004
	.4byte gUnk_080B55A0
	.incbin "baserom.gba", 0x0B5624, 0x0000004
	.4byte gUnk_080B55A8
	.incbin "baserom.gba", 0x0B562C, 0x0000004
	.4byte gUnk_080B55B0
	.incbin "baserom.gba", 0x0B5634, 0x0000004
	.4byte gUnk_080B55B8
	.incbin "baserom.gba", 0x0B563C, 0x0000004
	.4byte gUnk_080B55C0
	.incbin "baserom.gba", 0x0B5644, 0x0000004
	.4byte gUnk_080B55C8
	.incbin "baserom.gba", 0x0B564C, 0x0000004
	.4byte gUnk_080B55D0
	.incbin "baserom.gba", 0x0B5654, 0x000000C

gUnk_080B5660:: @ 080B5660
	.incbin "baserom.gba", 0x0B5660, 0x0000008

gUnk_080B5668:: @ 080B5668
	.incbin "baserom.gba", 0x0B5668, 0x0000008

gUnk_080B5670:: @ 080B5670
	.incbin "baserom.gba", 0x0B5670, 0x0000008

gUnk_080B5678:: @ 080B5678
	.incbin "baserom.gba", 0x0B5678, 0x0000008

gUnk_080B5680:: @ 080B5680
	.incbin "baserom.gba", 0x0B5680, 0x0000008

gUnk_080B5688:: @ 080B5688
	.incbin "baserom.gba", 0x0B5688, 0x0000008

gUnk_080B5690:: @ 080B5690
	.incbin "baserom.gba", 0x0B5690, 0x0000008

gUnk_080B5698:: @ 080B5698
	.incbin "baserom.gba", 0x0B5698, 0x0000008

gUnk_080B56A0:: @ 080B56A0
	.incbin "baserom.gba", 0x0B56A0, 0x0000008

gUnk_080B56A8:: @ 080B56A8
	.incbin "baserom.gba", 0x0B56A8, 0x0000008

gUnk_080B56B0:: @ 080B56B0
	.incbin "baserom.gba", 0x0B56B0, 0x0000008

gUnk_080B56B8:: @ 080B56B8
	.incbin "baserom.gba", 0x0B56B8, 0x0000008

gUnk_080B56C0:: @ 080B56C0
	.incbin "baserom.gba", 0x0B56C0, 0x0000008

gUnk_080B56C8:: @ 080B56C8
	.incbin "baserom.gba", 0x0B56C8, 0x0000008

gUnk_080B56D0:: @ 080B56D0
	.incbin "baserom.gba", 0x0B56D0, 0x0000008

gUnk_080B56D8:: @ 080B56D8
	.incbin "baserom.gba", 0x0B56D8, 0x0000008

gUnk_080B56E0:: @ 080B56E0
	.4byte gUnk_080B5660
	.incbin "baserom.gba", 0x0B56E4, 0x0000004
	.4byte gUnk_080B5668
	.incbin "baserom.gba", 0x0B56EC, 0x0000004
	.4byte gUnk_080B5670
	.incbin "baserom.gba", 0x0B56F4, 0x0000004
	.4byte gUnk_080B5678
	.incbin "baserom.gba", 0x0B56FC, 0x0000004
	.4byte gUnk_080B5680
	.incbin "baserom.gba", 0x0B5704, 0x0000004
	.4byte gUnk_080B5688
	.incbin "baserom.gba", 0x0B570C, 0x0000004
	.4byte gUnk_080B5690
	.incbin "baserom.gba", 0x0B5714, 0x0000004
	.4byte gUnk_080B5698
	.incbin "baserom.gba", 0x0B571C, 0x0000004
	.4byte gUnk_080B56A0
	.incbin "baserom.gba", 0x0B5724, 0x0000004
	.4byte gUnk_080B56A8
	.incbin "baserom.gba", 0x0B572C, 0x0000004
	.4byte gUnk_080B56B0
	.incbin "baserom.gba", 0x0B5734, 0x0000004
	.4byte gUnk_080B56B8
	.incbin "baserom.gba", 0x0B573C, 0x0000004
	.4byte gUnk_080B56C0
	.incbin "baserom.gba", 0x0B5744, 0x0000004
	.4byte gUnk_080B56C8
	.incbin "baserom.gba", 0x0B574C, 0x0000004
	.4byte gUnk_080B56D0
	.incbin "baserom.gba", 0x0B5754, 0x0000004
	.4byte gUnk_080B56D8
	.incbin "baserom.gba", 0x0B575C, 0x000000C

gUnk_080B5768:: @ 080B5768
	.incbin "baserom.gba", 0x0B5768, 0x0000008

gUnk_080B5770:: @ 080B5770
	.incbin "baserom.gba", 0x0B5770, 0x0000008

gUnk_080B5778:: @ 080B5778
	.incbin "baserom.gba", 0x0B5778, 0x0000008

gUnk_080B5780:: @ 080B5780
	.incbin "baserom.gba", 0x0B5780, 0x0000008

gUnk_080B5788:: @ 080B5788
	.incbin "baserom.gba", 0x0B5788, 0x0000008

gUnk_080B5790:: @ 080B5790
	.incbin "baserom.gba", 0x0B5790, 0x0000008

gUnk_080B5798:: @ 080B5798
	.incbin "baserom.gba", 0x0B5798, 0x0000008

gUnk_080B57A0:: @ 080B57A0
	.incbin "baserom.gba", 0x0B57A0, 0x0000008

gUnk_080B57A8:: @ 080B57A8
	.incbin "baserom.gba", 0x0B57A8, 0x0000008

gUnk_080B57B0:: @ 080B57B0
	.incbin "baserom.gba", 0x0B57B0, 0x0000008

gUnk_080B57B8:: @ 080B57B8
	.incbin "baserom.gba", 0x0B57B8, 0x0000008

gUnk_080B57C0:: @ 080B57C0
	.incbin "baserom.gba", 0x0B57C0, 0x0000008

gUnk_080B57C8:: @ 080B57C8
	.incbin "baserom.gba", 0x0B57C8, 0x0000008

gUnk_080B57D0:: @ 080B57D0
	.incbin "baserom.gba", 0x0B57D0, 0x0000008

gUnk_080B57D8:: @ 080B57D8
	.incbin "baserom.gba", 0x0B57D8, 0x0000008

gUnk_080B57E0:: @ 080B57E0
	.incbin "baserom.gba", 0x0B57E0, 0x0000008

gUnk_080B57E8:: @ 080B57E8
	.4byte gUnk_080B5768
	.incbin "baserom.gba", 0x0B57EC, 0x0000004
	.4byte gUnk_080B5770
	.incbin "baserom.gba", 0x0B57F4, 0x0000004
	.4byte gUnk_080B5778
	.incbin "baserom.gba", 0x0B57FC, 0x0000004
	.4byte gUnk_080B5780
	.incbin "baserom.gba", 0x0B5804, 0x0000004
	.4byte gUnk_080B5788
	.incbin "baserom.gba", 0x0B580C, 0x0000004
	.4byte gUnk_080B5790
	.incbin "baserom.gba", 0x0B5814, 0x0000004
	.4byte gUnk_080B5798
	.incbin "baserom.gba", 0x0B581C, 0x0000004
	.4byte gUnk_080B57A0
	.incbin "baserom.gba", 0x0B5824, 0x0000004
	.4byte gUnk_080B57A8
	.incbin "baserom.gba", 0x0B582C, 0x0000004
	.4byte gUnk_080B57B0
	.incbin "baserom.gba", 0x0B5834, 0x0000004
	.4byte gUnk_080B57B8
	.incbin "baserom.gba", 0x0B583C, 0x0000004
	.4byte gUnk_080B57C0
	.incbin "baserom.gba", 0x0B5844, 0x0000004
	.4byte gUnk_080B57C8
	.incbin "baserom.gba", 0x0B584C, 0x0000004
	.4byte gUnk_080B57D0
	.incbin "baserom.gba", 0x0B5854, 0x0000004
	.4byte gUnk_080B57D8
	.incbin "baserom.gba", 0x0B585C, 0x0000004
	.4byte gUnk_080B57E0
	.incbin "baserom.gba", 0x0B5864, 0x000000C

gUnk_080B5870:: @ 080B5870
	.incbin "baserom.gba", 0x0B5870, 0x0000008

gUnk_080B5878:: @ 080B5878
	.incbin "baserom.gba", 0x0B5878, 0x0000008

gUnk_080B5880:: @ 080B5880
	.incbin "baserom.gba", 0x0B5880, 0x0000008

gUnk_080B5888:: @ 080B5888
	.incbin "baserom.gba", 0x0B5888, 0x0000008

gUnk_080B5890:: @ 080B5890
	.incbin "baserom.gba", 0x0B5890, 0x0000008

gUnk_080B5898:: @ 080B5898
	.incbin "baserom.gba", 0x0B5898, 0x0000008

gUnk_080B58A0:: @ 080B58A0
	.incbin "baserom.gba", 0x0B58A0, 0x0000008

gUnk_080B58A8:: @ 080B58A8
	.incbin "baserom.gba", 0x0B58A8, 0x0000008

gUnk_080B58B0:: @ 080B58B0
	.incbin "baserom.gba", 0x0B58B0, 0x0000008

gUnk_080B58B8:: @ 080B58B8
	.incbin "baserom.gba", 0x0B58B8, 0x0000008

gUnk_080B58C0:: @ 080B58C0
	.incbin "baserom.gba", 0x0B58C0, 0x0000008

gUnk_080B58C8:: @ 080B58C8
	.incbin "baserom.gba", 0x0B58C8, 0x0000008

gUnk_080B58D0:: @ 080B58D0
	.incbin "baserom.gba", 0x0B58D0, 0x0000008

gUnk_080B58D8:: @ 080B58D8
	.incbin "baserom.gba", 0x0B58D8, 0x0000008

gUnk_080B58E0:: @ 080B58E0
	.incbin "baserom.gba", 0x0B58E0, 0x0000008

gUnk_080B58E8:: @ 080B58E8
	.incbin "baserom.gba", 0x0B58E8, 0x0000008

gUnk_080B58F0:: @ 080B58F0
	.4byte gUnk_080B5870
	.incbin "baserom.gba", 0x0B58F4, 0x0000004
	.4byte gUnk_080B5878
	.incbin "baserom.gba", 0x0B58FC, 0x0000004
	.4byte gUnk_080B5880
	.incbin "baserom.gba", 0x0B5904, 0x0000004
	.4byte gUnk_080B5888
	.incbin "baserom.gba", 0x0B590C, 0x0000004
	.4byte gUnk_080B5890
	.incbin "baserom.gba", 0x0B5914, 0x0000004
	.4byte gUnk_080B5898
	.incbin "baserom.gba", 0x0B591C, 0x0000004
	.4byte gUnk_080B58A0
	.incbin "baserom.gba", 0x0B5924, 0x0000004
	.4byte gUnk_080B58A8
	.incbin "baserom.gba", 0x0B592C, 0x0000004
	.4byte gUnk_080B58B0
	.incbin "baserom.gba", 0x0B5934, 0x0000004
	.4byte gUnk_080B58B8
	.incbin "baserom.gba", 0x0B593C, 0x0000004
	.4byte gUnk_080B58C0
	.incbin "baserom.gba", 0x0B5944, 0x0000004
	.4byte gUnk_080B58C8
	.incbin "baserom.gba", 0x0B594C, 0x0000004
	.4byte gUnk_080B58D0
	.incbin "baserom.gba", 0x0B5954, 0x0000004
	.4byte gUnk_080B58D8
	.incbin "baserom.gba", 0x0B595C, 0x0000004
	.4byte gUnk_080B58E0
	.incbin "baserom.gba", 0x0B5964, 0x0000004
	.4byte gUnk_080B58E8
	.incbin "baserom.gba", 0x0B596C, 0x000000C

gUnk_080B5978:: @ 080B5978
	.incbin "baserom.gba", 0x0B5978, 0x0000008

gUnk_080B5980:: @ 080B5980
	.incbin "baserom.gba", 0x0B5980, 0x0000008

gUnk_080B5988:: @ 080B5988
	.incbin "baserom.gba", 0x0B5988, 0x0000008

gUnk_080B5990:: @ 080B5990
	.incbin "baserom.gba", 0x0B5990, 0x0000008

gUnk_080B5998:: @ 080B5998
	.4byte gUnk_080B5978
	.incbin "baserom.gba", 0x0B599C, 0x0000004
	.4byte gUnk_080B5980
	.incbin "baserom.gba", 0x0B59A4, 0x0000004
	.4byte gUnk_080B5988
	.incbin "baserom.gba", 0x0B59AC, 0x0000004
	.4byte gUnk_080B5990
	.incbin "baserom.gba", 0x0B59B4, 0x000000C

gUnk_080B59C0:: @ 080B59C0
	.incbin "baserom.gba", 0x0B59C0, 0x0000008

gUnk_080B59C8:: @ 080B59C8
	.incbin "baserom.gba", 0x0B59C8, 0x0000008

gUnk_080B59D0:: @ 080B59D0
	.incbin "baserom.gba", 0x0B59D0, 0x0000008

gUnk_080B59D8:: @ 080B59D8
	.incbin "baserom.gba", 0x0B59D8, 0x0000008

gUnk_080B59E0:: @ 080B59E0
	.4byte gUnk_080B59C0
	.incbin "baserom.gba", 0x0B59E4, 0x0000004
	.4byte gUnk_080B59C8
	.incbin "baserom.gba", 0x0B59EC, 0x0000004
	.4byte gUnk_080B59D0
	.incbin "baserom.gba", 0x0B59F4, 0x0000004
	.4byte gUnk_080B59D8
	.incbin "baserom.gba", 0x0B59FC, 0x000000C

gUnk_080B5A08:: @ 080B5A08
	.incbin "baserom.gba", 0x0B5A08, 0x0000008

gUnk_080B5A10:: @ 080B5A10
	.incbin "baserom.gba", 0x0B5A10, 0x0000008

gUnk_080B5A18:: @ 080B5A18
	.incbin "baserom.gba", 0x0B5A18, 0x0000008

gUnk_080B5A20:: @ 080B5A20
	.incbin "baserom.gba", 0x0B5A20, 0x0000008

gUnk_080B5A28:: @ 080B5A28
	.4byte gUnk_080B5A08
	.incbin "baserom.gba", 0x0B5A2C, 0x0000004
	.4byte gUnk_080B5A10
	.incbin "baserom.gba", 0x0B5A34, 0x0000004
	.4byte gUnk_080B5A18
	.incbin "baserom.gba", 0x0B5A3C, 0x0000004
	.4byte gUnk_080B5A20
	.incbin "baserom.gba", 0x0B5A44, 0x000000C

gUnk_080B5A50:: @ 080B5A50
	.incbin "baserom.gba", 0x0B5A50, 0x0000008

gUnk_080B5A58:: @ 080B5A58
	.incbin "baserom.gba", 0x0B5A58, 0x0000008

gUnk_080B5A60:: @ 080B5A60
	.incbin "baserom.gba", 0x0B5A60, 0x0000008

gUnk_080B5A68:: @ 080B5A68
	.incbin "baserom.gba", 0x0B5A68, 0x0000008

gUnk_080B5A70:: @ 080B5A70
	.4byte gUnk_080B5A50
	.incbin "baserom.gba", 0x0B5A74, 0x0000004
	.4byte gUnk_080B5A58
	.incbin "baserom.gba", 0x0B5A7C, 0x0000004
	.4byte gUnk_080B5A60
	.incbin "baserom.gba", 0x0B5A84, 0x0000004
	.4byte gUnk_080B5A68
	.incbin "baserom.gba", 0x0B5A8C, 0x000000C

gUnk_080B5A98:: @ 080B5A98
	.incbin "baserom.gba", 0x0B5A98, 0x0000008

gUnk_080B5AA0:: @ 080B5AA0
	.incbin "baserom.gba", 0x0B5AA0, 0x0000008

gUnk_080B5AA8:: @ 080B5AA8
	.incbin "baserom.gba", 0x0B5AA8, 0x0000008

gUnk_080B5AB0:: @ 080B5AB0
	.incbin "baserom.gba", 0x0B5AB0, 0x0000008

gUnk_080B5AB8:: @ 080B5AB8
	.4byte gUnk_080B5A98
	.incbin "baserom.gba", 0x0B5ABC, 0x0000004
	.4byte gUnk_080B5AA0
	.incbin "baserom.gba", 0x0B5AC4, 0x0000004
	.4byte gUnk_080B5AA8
	.incbin "baserom.gba", 0x0B5ACC, 0x0000004
	.4byte gUnk_080B5AB0
	.incbin "baserom.gba", 0x0B5AD4, 0x000000C

gUnk_080B5AE0:: @ 080B5AE0
	.incbin "baserom.gba", 0x0B5AE0, 0x0000010

gUnk_080B5AF0:: @ 080B5AF0
	.incbin "baserom.gba", 0x0B5AF0, 0x0000010

gUnk_080B5B00:: @ 080B5B00
	.incbin "baserom.gba", 0x0B5B00, 0x0000010

gUnk_080B5B10:: @ 080B5B10
	.incbin "baserom.gba", 0x0B5B10, 0x0000010

gUnk_080B5B20:: @ 080B5B20
	.4byte gUnk_080B5AE0
	.incbin "baserom.gba", 0x0B5B24, 0x0000004
	.4byte gUnk_080B5AF0
	.incbin "baserom.gba", 0x0B5B2C, 0x0000004
	.4byte gUnk_080B5B00
	.incbin "baserom.gba", 0x0B5B34, 0x0000004
	.4byte gUnk_080B5B10
	.incbin "baserom.gba", 0x0B5B3C, 0x000000C

gUnk_080B5B48:: @ 080B5B48
	.incbin "baserom.gba", 0x0B5B48, 0x0000008

gUnk_080B5B50:: @ 080B5B50
	.incbin "baserom.gba", 0x0B5B50, 0x0000008

gUnk_080B5B58:: @ 080B5B58
	.incbin "baserom.gba", 0x0B5B58, 0x0000008

gUnk_080B5B60:: @ 080B5B60
	.incbin "baserom.gba", 0x0B5B60, 0x0000008

gUnk_080B5B68:: @ 080B5B68
	.4byte gUnk_080B5B48
	.incbin "baserom.gba", 0x0B5B6C, 0x0000004
	.4byte gUnk_080B5B50
	.incbin "baserom.gba", 0x0B5B74, 0x0000004
	.4byte gUnk_080B5B58
	.incbin "baserom.gba", 0x0B5B7C, 0x0000004
	.4byte gUnk_080B5B60
	.incbin "baserom.gba", 0x0B5B84, 0x000000C

gUnk_080B5B90:: @ 080B5B90
	.incbin "baserom.gba", 0x0B5B90, 0x0000008

gUnk_080B5B98:: @ 080B5B98
	.incbin "baserom.gba", 0x0B5B98, 0x0000008

gUnk_080B5BA0:: @ 080B5BA0
	.incbin "baserom.gba", 0x0B5BA0, 0x0000008

gUnk_080B5BA8:: @ 080B5BA8
	.incbin "baserom.gba", 0x0B5BA8, 0x0000008

gUnk_080B5BB0:: @ 080B5BB0
	.4byte gUnk_080B5B90
	.incbin "baserom.gba", 0x0B5BB4, 0x0000004
	.4byte gUnk_080B5B98
	.incbin "baserom.gba", 0x0B5BBC, 0x0000004
	.4byte gUnk_080B5BA0
	.incbin "baserom.gba", 0x0B5BC4, 0x0000004
	.4byte gUnk_080B5BA8
	.incbin "baserom.gba", 0x0B5BCC, 0x000000C

gUnk_080B5BD8:: @ 080B5BD8
	.incbin "baserom.gba", 0x0B5BD8, 0x0000008

gUnk_080B5BE0:: @ 080B5BE0
	.incbin "baserom.gba", 0x0B5BE0, 0x0000008

gUnk_080B5BE8:: @ 080B5BE8
	.incbin "baserom.gba", 0x0B5BE8, 0x0000008

gUnk_080B5BF0:: @ 080B5BF0
	.incbin "baserom.gba", 0x0B5BF0, 0x0000008

gUnk_080B5BF8:: @ 080B5BF8
	.incbin "baserom.gba", 0x0B5BF8, 0x0000008

gUnk_080B5C00:: @ 080B5C00
	.incbin "baserom.gba", 0x0B5C00, 0x0000008

gUnk_080B5C08:: @ 080B5C08
	.incbin "baserom.gba", 0x0B5C08, 0x0000008

gUnk_080B5C10:: @ 080B5C10
	.incbin "baserom.gba", 0x0B5C10, 0x0000008

gUnk_080B5C18:: @ 080B5C18
	.incbin "baserom.gba", 0x0B5C18, 0x0000008

gUnk_080B5C20:: @ 080B5C20
	.incbin "baserom.gba", 0x0B5C20, 0x0000008

gUnk_080B5C28:: @ 080B5C28
	.incbin "baserom.gba", 0x0B5C28, 0x0000008

gUnk_080B5C30:: @ 080B5C30
	.incbin "baserom.gba", 0x0B5C30, 0x0000008

gUnk_080B5C38:: @ 080B5C38
	.incbin "baserom.gba", 0x0B5C38, 0x0000008

gUnk_080B5C40:: @ 080B5C40
	.incbin "baserom.gba", 0x0B5C40, 0x0000008

gUnk_080B5C48:: @ 080B5C48
	.incbin "baserom.gba", 0x0B5C48, 0x0000008

gUnk_080B5C50:: @ 080B5C50
	.incbin "baserom.gba", 0x0B5C50, 0x0000008

gUnk_080B5C58:: @ 080B5C58
	.4byte gUnk_080B5BD8
	.incbin "baserom.gba", 0x0B5C5C, 0x0000004
	.4byte gUnk_080B5BE0
	.incbin "baserom.gba", 0x0B5C64, 0x0000004
	.4byte gUnk_080B5BE8
	.incbin "baserom.gba", 0x0B5C6C, 0x0000004
	.4byte gUnk_080B5BF0
	.incbin "baserom.gba", 0x0B5C74, 0x0000004
	.4byte gUnk_080B5BF8
	.incbin "baserom.gba", 0x0B5C7C, 0x0000004
	.4byte gUnk_080B5C00
	.incbin "baserom.gba", 0x0B5C84, 0x0000004
	.4byte gUnk_080B5C08
	.incbin "baserom.gba", 0x0B5C8C, 0x0000004
	.4byte gUnk_080B5C10
	.incbin "baserom.gba", 0x0B5C94, 0x0000004
	.4byte gUnk_080B5C18
	.incbin "baserom.gba", 0x0B5C9C, 0x0000004
	.4byte gUnk_080B5C20
	.incbin "baserom.gba", 0x0B5CA4, 0x0000004
	.4byte gUnk_080B5C28
	.incbin "baserom.gba", 0x0B5CAC, 0x0000004
	.4byte gUnk_080B5C30
	.incbin "baserom.gba", 0x0B5CB4, 0x0000004
	.4byte gUnk_080B5C38
	.incbin "baserom.gba", 0x0B5CBC, 0x0000004
	.4byte gUnk_080B5C40
	.incbin "baserom.gba", 0x0B5CC4, 0x0000004
	.4byte gUnk_080B5C48
	.incbin "baserom.gba", 0x0B5CCC, 0x0000004
	.4byte gUnk_080B5C50
	.incbin "baserom.gba", 0x0B5CD4, 0x000000C

gUnk_080B5CE0:: @ 080B5CE0
	.incbin "baserom.gba", 0x0B5CE0, 0x0000018

gUnk_080B5CF8:: @ 080B5CF8
	.incbin "baserom.gba", 0x0B5CF8, 0x0000018

gUnk_080B5D10:: @ 080B5D10
	.incbin "baserom.gba", 0x0B5D10, 0x0000018

gUnk_080B5D28:: @ 080B5D28
	.incbin "baserom.gba", 0x0B5D28, 0x0000018

gUnk_080B5D40:: @ 080B5D40
	.4byte gUnk_080B5CE0
	.incbin "baserom.gba", 0x0B5D44, 0x0000004
	.4byte gUnk_080B5CF8
	.incbin "baserom.gba", 0x0B5D4C, 0x0000004
	.4byte gUnk_080B5D10
	.incbin "baserom.gba", 0x0B5D54, 0x0000004
	.4byte gUnk_080B5D28
	.incbin "baserom.gba", 0x0B5D5C, 0x000000C

gUnk_080B5D68:: @ 080B5D68
	.incbin "baserom.gba", 0x0B5D68, 0x0000010

gUnk_080B5D78:: @ 080B5D78
	.incbin "baserom.gba", 0x0B5D78, 0x0000010

gUnk_080B5D88:: @ 080B5D88
	.incbin "baserom.gba", 0x0B5D88, 0x0000010

gUnk_080B5D98:: @ 080B5D98
	.incbin "baserom.gba", 0x0B5D98, 0x0000010

gUnk_080B5DA8:: @ 080B5DA8
	.4byte gUnk_080B5D68
	.incbin "baserom.gba", 0x0B5DAC, 0x0000004
	.4byte gUnk_080B5D78
	.incbin "baserom.gba", 0x0B5DB4, 0x0000004
	.4byte gUnk_080B5D88
	.incbin "baserom.gba", 0x0B5DBC, 0x0000004
	.4byte gUnk_080B5D98
	.incbin "baserom.gba", 0x0B5DC4, 0x000000C

gUnk_080B5DD0:: @ 080B5DD0
	.incbin "baserom.gba", 0x0B5DD0, 0x0000008

gUnk_080B5DD8:: @ 080B5DD8
	.incbin "baserom.gba", 0x0B5DD8, 0x0000008

gUnk_080B5DE0:: @ 080B5DE0
	.incbin "baserom.gba", 0x0B5DE0, 0x0000008

gUnk_080B5DE8:: @ 080B5DE8
	.incbin "baserom.gba", 0x0B5DE8, 0x0000008

gUnk_080B5DF0:: @ 080B5DF0
	.4byte gUnk_080B5DD0
	.incbin "baserom.gba", 0x0B5DF4, 0x0000004
	.4byte gUnk_080B5DD8
	.incbin "baserom.gba", 0x0B5DFC, 0x0000004
	.4byte gUnk_080B5DE0
	.incbin "baserom.gba", 0x0B5E04, 0x0000004
	.4byte gUnk_080B5DE8
	.incbin "baserom.gba", 0x0B5E0C, 0x000000C

gUnk_080B5E18:: @ 080B5E18
	.incbin "baserom.gba", 0x0B5E18, 0x0000008

gUnk_080B5E20:: @ 080B5E20
	.incbin "baserom.gba", 0x0B5E20, 0x0000008

gUnk_080B5E28:: @ 080B5E28
	.incbin "baserom.gba", 0x0B5E28, 0x0000008

gUnk_080B5E30:: @ 080B5E30
	.incbin "baserom.gba", 0x0B5E30, 0x0000008

gUnk_080B5E38:: @ 080B5E38
	.4byte gUnk_080B5E18
	.incbin "baserom.gba", 0x0B5E3C, 0x0000004
	.4byte gUnk_080B5E20
	.incbin "baserom.gba", 0x0B5E44, 0x0000004
	.4byte gUnk_080B5E28
	.incbin "baserom.gba", 0x0B5E4C, 0x0000004
	.4byte gUnk_080B5E30
	.incbin "baserom.gba", 0x0B5E54, 0x000000C

gUnk_080B5E60:: @ 080B5E60
	.incbin "baserom.gba", 0x0B5E60, 0x0000008

gUnk_080B5E68:: @ 080B5E68
	.incbin "baserom.gba", 0x0B5E68, 0x0000008

gUnk_080B5E70:: @ 080B5E70
	.incbin "baserom.gba", 0x0B5E70, 0x0000008

gUnk_080B5E78:: @ 080B5E78
	.incbin "baserom.gba", 0x0B5E78, 0x0000008

gUnk_080B5E80:: @ 080B5E80
	.incbin "baserom.gba", 0x0B5E80, 0x0000008

gUnk_080B5E88:: @ 080B5E88
	.4byte gUnk_080B5E60
	.incbin "baserom.gba", 0x0B5E8C, 0x0000004
	.4byte gUnk_080B5E68
	.incbin "baserom.gba", 0x0B5E94, 0x0000004
	.4byte gUnk_080B5E70
	.incbin "baserom.gba", 0x0B5E9C, 0x0000004
	.4byte gUnk_080B5E78
	.incbin "baserom.gba", 0x0B5EA4, 0x0000004
	.4byte gUnk_080B5E80
	.incbin "baserom.gba", 0x0B5EAC, 0x000000C

gUnk_080B5EB8:: @ 080B5EB8
	.incbin "baserom.gba", 0x0B5EB8, 0x0000008

gUnk_080B5EC0:: @ 080B5EC0
	.incbin "baserom.gba", 0x0B5EC0, 0x0000008

gUnk_080B5EC8:: @ 080B5EC8
	.incbin "baserom.gba", 0x0B5EC8, 0x0000008

gUnk_080B5ED0:: @ 080B5ED0
	.incbin "baserom.gba", 0x0B5ED0, 0x0000008

gUnk_080B5ED8:: @ 080B5ED8
	.4byte gUnk_080B5EB8
	.incbin "baserom.gba", 0x0B5EDC, 0x0000004
	.4byte gUnk_080B5EC0
	.incbin "baserom.gba", 0x0B5EE4, 0x0000004
	.4byte gUnk_080B5EC8
	.incbin "baserom.gba", 0x0B5EEC, 0x0000004
	.4byte gUnk_080B5ED0
	.incbin "baserom.gba", 0x0B5EF4, 0x000000C

gUnk_080B5F00:: @ 080B5F00
	.incbin "baserom.gba", 0x0B5F00, 0x0000008

gUnk_080B5F08:: @ 080B5F08
	.incbin "baserom.gba", 0x0B5F08, 0x0000008

gUnk_080B5F10:: @ 080B5F10
	.incbin "baserom.gba", 0x0B5F10, 0x0000008

gUnk_080B5F18:: @ 080B5F18
	.incbin "baserom.gba", 0x0B5F18, 0x0000008

gUnk_080B5F20:: @ 080B5F20
	.incbin "baserom.gba", 0x0B5F20, 0x0000008

gUnk_080B5F28:: @ 080B5F28
	.4byte gUnk_080B5F00
	.incbin "baserom.gba", 0x0B5F2C, 0x0000004
	.4byte gUnk_080B5F08
	.incbin "baserom.gba", 0x0B5F34, 0x0000004
	.4byte gUnk_080B5F10
	.incbin "baserom.gba", 0x0B5F3C, 0x0000004
	.4byte gUnk_080B5F18
	.incbin "baserom.gba", 0x0B5F44, 0x0000004
	.4byte gUnk_080B5F20
	.incbin "baserom.gba", 0x0B5F4C, 0x000000C

gUnk_080B5F58:: @ 080B5F58
	.incbin "baserom.gba", 0x0B5F58, 0x0000008

gUnk_080B5F60:: @ 080B5F60
	.incbin "baserom.gba", 0x0B5F60, 0x0000008

gUnk_080B5F68:: @ 080B5F68
	.incbin "baserom.gba", 0x0B5F68, 0x0000008

gUnk_080B5F70:: @ 080B5F70
	.incbin "baserom.gba", 0x0B5F70, 0x0000008

gUnk_080B5F78:: @ 080B5F78
	.incbin "baserom.gba", 0x0B5F78, 0x0000008

gUnk_080B5F80:: @ 080B5F80
	.4byte gUnk_080B5F58
	.incbin "baserom.gba", 0x0B5F84, 0x0000004
	.4byte gUnk_080B5F60
	.incbin "baserom.gba", 0x0B5F8C, 0x0000004
	.4byte gUnk_080B5F68
	.incbin "baserom.gba", 0x0B5F94, 0x0000004
	.4byte gUnk_080B5F70
	.incbin "baserom.gba", 0x0B5F9C, 0x0000004
	.4byte gUnk_080B5F78
	.incbin "baserom.gba", 0x0B5FA4, 0x000000C

gUnk_080B5FB0:: @ 080B5FB0
	.incbin "baserom.gba", 0x0B5FB0, 0x0000008

gUnk_080B5FB8:: @ 080B5FB8
	.incbin "baserom.gba", 0x0B5FB8, 0x0000008

gUnk_080B5FC0:: @ 080B5FC0
	.incbin "baserom.gba", 0x0B5FC0, 0x0000008

gUnk_080B5FC8:: @ 080B5FC8
	.incbin "baserom.gba", 0x0B5FC8, 0x0000008

gUnk_080B5FD0:: @ 080B5FD0
	.4byte gUnk_080B5FB0
	.incbin "baserom.gba", 0x0B5FD4, 0x0000004
	.4byte gUnk_080B5FB8
	.incbin "baserom.gba", 0x0B5FDC, 0x0000004
	.4byte gUnk_080B5FC0
	.incbin "baserom.gba", 0x0B5FE4, 0x0000004
	.4byte gUnk_080B5FC8
	.incbin "baserom.gba", 0x0B5FEC, 0x000000C

gUnk_080B5FF8:: @ 080B5FF8
	.incbin "baserom.gba", 0x0B5FF8, 0x0000008

gUnk_080B6000:: @ 080B6000
	.incbin "baserom.gba", 0x0B6000, 0x0000008

gUnk_080B6008:: @ 080B6008
	.incbin "baserom.gba", 0x0B6008, 0x0000008

gUnk_080B6010:: @ 080B6010
	.incbin "baserom.gba", 0x0B6010, 0x0000008

gUnk_080B6018:: @ 080B6018
	.incbin "baserom.gba", 0x0B6018, 0x0000008

gUnk_080B6020:: @ 080B6020
	.incbin "baserom.gba", 0x0B6020, 0x0000008

gUnk_080B6028:: @ 080B6028
	.incbin "baserom.gba", 0x0B6028, 0x0000008

gUnk_080B6030:: @ 080B6030
	.incbin "baserom.gba", 0x0B6030, 0x0000008

gUnk_080B6038:: @ 080B6038
	.incbin "baserom.gba", 0x0B6038, 0x0000008

gUnk_080B6040:: @ 080B6040
	.incbin "baserom.gba", 0x0B6040, 0x0000008

gUnk_080B6048:: @ 080B6048
	.incbin "baserom.gba", 0x0B6048, 0x0000008

gUnk_080B6050:: @ 080B6050
	.incbin "baserom.gba", 0x0B6050, 0x0000008

gUnk_080B6058:: @ 080B6058
	.incbin "baserom.gba", 0x0B6058, 0x0000008

gUnk_080B6060:: @ 080B6060
	.incbin "baserom.gba", 0x0B6060, 0x0000008

gUnk_080B6068:: @ 080B6068
	.incbin "baserom.gba", 0x0B6068, 0x0000008

gUnk_080B6070:: @ 080B6070
	.incbin "baserom.gba", 0x0B6070, 0x0000008

gUnk_080B6078:: @ 080B6078
	.4byte gUnk_080B5FF8
	.incbin "baserom.gba", 0x0B607C, 0x0000004
	.4byte gUnk_080B6000
	.incbin "baserom.gba", 0x0B6084, 0x0000004
	.4byte gUnk_080B6008
	.incbin "baserom.gba", 0x0B608C, 0x0000004
	.4byte gUnk_080B6010
	.incbin "baserom.gba", 0x0B6094, 0x0000004
	.4byte gUnk_080B6018
	.incbin "baserom.gba", 0x0B609C, 0x0000004
	.4byte gUnk_080B6020
	.incbin "baserom.gba", 0x0B60A4, 0x0000004
	.4byte gUnk_080B6028
	.incbin "baserom.gba", 0x0B60AC, 0x0000004
	.4byte gUnk_080B6030
	.incbin "baserom.gba", 0x0B60B4, 0x0000004
	.4byte gUnk_080B6038
	.incbin "baserom.gba", 0x0B60BC, 0x0000004
	.4byte gUnk_080B6040
	.incbin "baserom.gba", 0x0B60C4, 0x0000004
	.4byte gUnk_080B6048
	.incbin "baserom.gba", 0x0B60CC, 0x0000004
	.4byte gUnk_080B6050
	.incbin "baserom.gba", 0x0B60D4, 0x0000004
	.4byte gUnk_080B6058
	.incbin "baserom.gba", 0x0B60DC, 0x0000004
	.4byte gUnk_080B6060
	.incbin "baserom.gba", 0x0B60E4, 0x0000004
	.4byte gUnk_080B6068
	.incbin "baserom.gba", 0x0B60EC, 0x0000004
	.4byte gUnk_080B6070
	.incbin "baserom.gba", 0x0B60F4, 0x000000C

gUnk_080B6100:: @ 080B6100
	.incbin "baserom.gba", 0x0B6100, 0x0000008

gUnk_080B6108:: @ 080B6108
	.incbin "baserom.gba", 0x0B6108, 0x0000008

gUnk_080B6110:: @ 080B6110
	.incbin "baserom.gba", 0x0B6110, 0x0000008

gUnk_080B6118:: @ 080B6118
	.incbin "baserom.gba", 0x0B6118, 0x0000008

gUnk_080B6120:: @ 080B6120
	.4byte gUnk_080B6100
	.incbin "baserom.gba", 0x0B6124, 0x0000004
	.4byte gUnk_080B6108
	.incbin "baserom.gba", 0x0B612C, 0x0000004
	.4byte gUnk_080B6110
	.incbin "baserom.gba", 0x0B6134, 0x0000004
	.4byte gUnk_080B6118
	.incbin "baserom.gba", 0x0B613C, 0x000000C

gUnk_080B6148:: @ 080B6148
	.incbin "baserom.gba", 0x0B6148, 0x0000008

gUnk_080B6150:: @ 080B6150
	.incbin "baserom.gba", 0x0B6150, 0x0000008

gUnk_080B6158:: @ 080B6158
	.incbin "baserom.gba", 0x0B6158, 0x0000008

gUnk_080B6160:: @ 080B6160
	.incbin "baserom.gba", 0x0B6160, 0x0000008

gUnk_080B6168:: @ 080B6168
	.4byte gUnk_080B6148
	.incbin "baserom.gba", 0x0B616C, 0x0000004
	.4byte gUnk_080B6150
	.incbin "baserom.gba", 0x0B6174, 0x0000004
	.4byte gUnk_080B6158
	.incbin "baserom.gba", 0x0B617C, 0x0000004
	.4byte gUnk_080B6160
	.incbin "baserom.gba", 0x0B6184, 0x000000C

gUnk_080B6190:: @ 080B6190
	.incbin "baserom.gba", 0x0B6190, 0x0000008

gUnk_080B6198:: @ 080B6198
	.incbin "baserom.gba", 0x0B6198, 0x0000008

gUnk_080B61A0:: @ 080B61A0
	.incbin "baserom.gba", 0x0B61A0, 0x0000008

gUnk_080B61A8:: @ 080B61A8
	.incbin "baserom.gba", 0x0B61A8, 0x0000008

gUnk_080B61B0:: @ 080B61B0
	.4byte gUnk_080B6190
	.incbin "baserom.gba", 0x0B61B4, 0x0000004
	.4byte gUnk_080B6198
	.incbin "baserom.gba", 0x0B61BC, 0x0000004
	.4byte gUnk_080B61A0
	.incbin "baserom.gba", 0x0B61C4, 0x0000004
	.4byte gUnk_080B61A8
	.incbin "baserom.gba", 0x0B61CC, 0x000000C

gUnk_080B61D8:: @ 080B61D8
	.incbin "baserom.gba", 0x0B61D8, 0x0000008

gUnk_080B61E0:: @ 080B61E0
	.incbin "baserom.gba", 0x0B61E0, 0x0000008

gUnk_080B61E8:: @ 080B61E8
	.incbin "baserom.gba", 0x0B61E8, 0x0000008

gUnk_080B61F0:: @ 080B61F0
	.incbin "baserom.gba", 0x0B61F0, 0x0000008

gUnk_080B61F8:: @ 080B61F8
	.4byte gUnk_080B61D8
	.incbin "baserom.gba", 0x0B61FC, 0x0000004
	.4byte gUnk_080B61E0
	.incbin "baserom.gba", 0x0B6204, 0x0000004
	.4byte gUnk_080B61E8
	.incbin "baserom.gba", 0x0B620C, 0x0000004
	.4byte gUnk_080B61F0
	.incbin "baserom.gba", 0x0B6214, 0x000000C

gUnk_080B6220:: @ 080B6220
	.incbin "baserom.gba", 0x0B6220, 0x0000008

gUnk_080B6228:: @ 080B6228
	.incbin "baserom.gba", 0x0B6228, 0x0000008

gUnk_080B6230:: @ 080B6230
	.incbin "baserom.gba", 0x0B6230, 0x0000008

gUnk_080B6238:: @ 080B6238
	.incbin "baserom.gba", 0x0B6238, 0x0000008

gUnk_080B6240:: @ 080B6240
	.incbin "baserom.gba", 0x0B6240, 0x0000008

gUnk_080B6248:: @ 080B6248
	.incbin "baserom.gba", 0x0B6248, 0x0000008

gUnk_080B6250:: @ 080B6250
	.incbin "baserom.gba", 0x0B6250, 0x0000008

gUnk_080B6258:: @ 080B6258
	.incbin "baserom.gba", 0x0B6258, 0x0000008

gUnk_080B6260:: @ 080B6260
	.incbin "baserom.gba", 0x0B6260, 0x0000008

gUnk_080B6268:: @ 080B6268
	.incbin "baserom.gba", 0x0B6268, 0x0000008

gUnk_080B6270:: @ 080B6270
	.incbin "baserom.gba", 0x0B6270, 0x0000008

gUnk_080B6278:: @ 080B6278
	.incbin "baserom.gba", 0x0B6278, 0x0000008

gUnk_080B6280:: @ 080B6280
	.incbin "baserom.gba", 0x0B6280, 0x0000008

gUnk_080B6288:: @ 080B6288
	.incbin "baserom.gba", 0x0B6288, 0x0000008

gUnk_080B6290:: @ 080B6290
	.incbin "baserom.gba", 0x0B6290, 0x0000008

gUnk_080B6298:: @ 080B6298
	.incbin "baserom.gba", 0x0B6298, 0x0000008

gUnk_080B62A0:: @ 080B62A0
	.4byte gUnk_080B6220
	.incbin "baserom.gba", 0x0B62A4, 0x0000004
	.4byte gUnk_080B6228
	.incbin "baserom.gba", 0x0B62AC, 0x0000004
	.4byte gUnk_080B6230
	.incbin "baserom.gba", 0x0B62B4, 0x0000004
	.4byte gUnk_080B6238
	.incbin "baserom.gba", 0x0B62BC, 0x0000004
	.4byte gUnk_080B6240
	.incbin "baserom.gba", 0x0B62C4, 0x0000004
	.4byte gUnk_080B6248
	.incbin "baserom.gba", 0x0B62CC, 0x0000004
	.4byte gUnk_080B6250
	.incbin "baserom.gba", 0x0B62D4, 0x0000004
	.4byte gUnk_080B6258
	.incbin "baserom.gba", 0x0B62DC, 0x0000004
	.4byte gUnk_080B6260
	.incbin "baserom.gba", 0x0B62E4, 0x0000004
	.4byte gUnk_080B6268
	.incbin "baserom.gba", 0x0B62EC, 0x0000004
	.4byte gUnk_080B6270
	.incbin "baserom.gba", 0x0B62F4, 0x0000004
	.4byte gUnk_080B6278
	.incbin "baserom.gba", 0x0B62FC, 0x0000004
	.4byte gUnk_080B6280
	.incbin "baserom.gba", 0x0B6304, 0x0000004
	.4byte gUnk_080B6288
	.incbin "baserom.gba", 0x0B630C, 0x0000004
	.4byte gUnk_080B6290
	.incbin "baserom.gba", 0x0B6314, 0x0000004
	.4byte gUnk_080B6298
	.incbin "baserom.gba", 0x0B631C, 0x000000C

gUnk_080B6328:: @ 080B6328
	.incbin "baserom.gba", 0x0B6328, 0x0000008

gUnk_080B6330:: @ 080B6330
	.incbin "baserom.gba", 0x0B6330, 0x0000008

gUnk_080B6338:: @ 080B6338
	.incbin "baserom.gba", 0x0B6338, 0x0000008

gUnk_080B6340:: @ 080B6340
	.incbin "baserom.gba", 0x0B6340, 0x0000008

gUnk_080B6348:: @ 080B6348
	.incbin "baserom.gba", 0x0B6348, 0x0000008

gUnk_080B6350:: @ 080B6350
	.incbin "baserom.gba", 0x0B6350, 0x0000008

gUnk_080B6358:: @ 080B6358
	.incbin "baserom.gba", 0x0B6358, 0x0000008

gUnk_080B6360:: @ 080B6360
	.incbin "baserom.gba", 0x0B6360, 0x0000008

gUnk_080B6368:: @ 080B6368
	.incbin "baserom.gba", 0x0B6368, 0x0000008

gUnk_080B6370:: @ 080B6370
	.incbin "baserom.gba", 0x0B6370, 0x0000008

gUnk_080B6378:: @ 080B6378
	.incbin "baserom.gba", 0x0B6378, 0x0000008

gUnk_080B6380:: @ 080B6380
	.incbin "baserom.gba", 0x0B6380, 0x0000008

gUnk_080B6388:: @ 080B6388
	.incbin "baserom.gba", 0x0B6388, 0x0000008

gUnk_080B6390:: @ 080B6390
	.incbin "baserom.gba", 0x0B6390, 0x0000008

gUnk_080B6398:: @ 080B6398
	.incbin "baserom.gba", 0x0B6398, 0x0000008

gUnk_080B63A0:: @ 080B63A0
	.incbin "baserom.gba", 0x0B63A0, 0x0000008

gUnk_080B63A8:: @ 080B63A8
	.4byte gUnk_080B6328
	.incbin "baserom.gba", 0x0B63AC, 0x0000004
	.4byte gUnk_080B6330
	.incbin "baserom.gba", 0x0B63B4, 0x0000004
	.4byte gUnk_080B6338
	.incbin "baserom.gba", 0x0B63BC, 0x0000004
	.4byte gUnk_080B6340
	.incbin "baserom.gba", 0x0B63C4, 0x0000004
	.4byte gUnk_080B6348
	.incbin "baserom.gba", 0x0B63CC, 0x0000004
	.4byte gUnk_080B6350
	.incbin "baserom.gba", 0x0B63D4, 0x0000004
	.4byte gUnk_080B6358
	.incbin "baserom.gba", 0x0B63DC, 0x0000004
	.4byte gUnk_080B6360
	.incbin "baserom.gba", 0x0B63E4, 0x0000004
	.4byte gUnk_080B6368
	.incbin "baserom.gba", 0x0B63EC, 0x0000004
	.4byte gUnk_080B6370
	.incbin "baserom.gba", 0x0B63F4, 0x0000004
	.4byte gUnk_080B6378
	.incbin "baserom.gba", 0x0B63FC, 0x0000004
	.4byte gUnk_080B6380
	.incbin "baserom.gba", 0x0B6404, 0x0000004
	.4byte gUnk_080B6388
	.incbin "baserom.gba", 0x0B640C, 0x0000004
	.4byte gUnk_080B6390
	.incbin "baserom.gba", 0x0B6414, 0x0000004
	.4byte gUnk_080B6398
	.incbin "baserom.gba", 0x0B641C, 0x0000004
	.4byte gUnk_080B63A0
	.incbin "baserom.gba", 0x0B6424, 0x000000C

gUnk_080B6430:: @ 080B6430
	.incbin "baserom.gba", 0x0B6430, 0x0000008

gUnk_080B6438:: @ 080B6438
	.incbin "baserom.gba", 0x0B6438, 0x0000008

gUnk_080B6440:: @ 080B6440
	.incbin "baserom.gba", 0x0B6440, 0x0000008

gUnk_080B6448:: @ 080B6448
	.incbin "baserom.gba", 0x0B6448, 0x0000008

gUnk_080B6450:: @ 080B6450
	.4byte gUnk_080B6430
	.incbin "baserom.gba", 0x0B6454, 0x0000004
	.4byte gUnk_080B6438
	.incbin "baserom.gba", 0x0B645C, 0x0000004
	.4byte gUnk_080B6440
	.incbin "baserom.gba", 0x0B6464, 0x0000004
	.4byte gUnk_080B6448
	.incbin "baserom.gba", 0x0B646C, 0x000000C

gUnk_080B6478:: @ 080B6478
	.incbin "baserom.gba", 0x0B6478, 0x0000008

gUnk_080B6480:: @ 080B6480
	.incbin "baserom.gba", 0x0B6480, 0x0000008

gUnk_080B6488:: @ 080B6488
	.incbin "baserom.gba", 0x0B6488, 0x0000008

gUnk_080B6490:: @ 080B6490
	.incbin "baserom.gba", 0x0B6490, 0x0000008

gUnk_080B6498:: @ 080B6498
	.4byte gUnk_080B6478
	.incbin "baserom.gba", 0x0B649C, 0x0000004
	.4byte gUnk_080B6480
	.incbin "baserom.gba", 0x0B64A4, 0x0000004
	.4byte gUnk_080B6488
	.incbin "baserom.gba", 0x0B64AC, 0x0000004
	.4byte gUnk_080B6490
	.incbin "baserom.gba", 0x0B64B4, 0x000000C

gUnk_080B64C0:: @ 080B64C0
	.incbin "baserom.gba", 0x0B64C0, 0x0000008

gUnk_080B64C8:: @ 080B64C8
	.incbin "baserom.gba", 0x0B64C8, 0x0000008

gUnk_080B64D0:: @ 080B64D0
	.incbin "baserom.gba", 0x0B64D0, 0x0000008

gUnk_080B64D8:: @ 080B64D8
	.incbin "baserom.gba", 0x0B64D8, 0x0000008

gUnk_080B64E0:: @ 080B64E0
	.4byte gUnk_080B64C0
	.incbin "baserom.gba", 0x0B64E4, 0x0000004
	.4byte gUnk_080B64C8
	.incbin "baserom.gba", 0x0B64EC, 0x0000004
	.4byte gUnk_080B64D0
	.incbin "baserom.gba", 0x0B64F4, 0x0000004
	.4byte gUnk_080B64D8
	.incbin "baserom.gba", 0x0B64FC, 0x000000C

gUnk_080B6508:: @ 080B6508
	.incbin "baserom.gba", 0x0B6508, 0x0000008

gUnk_080B6510:: @ 080B6510
	.incbin "baserom.gba", 0x0B6510, 0x0000008

gUnk_080B6518:: @ 080B6518
	.incbin "baserom.gba", 0x0B6518, 0x0000008

gUnk_080B6520:: @ 080B6520
	.incbin "baserom.gba", 0x0B6520, 0x0000008

gUnk_080B6528:: @ 080B6528
	.4byte gUnk_080B6508
	.incbin "baserom.gba", 0x0B652C, 0x0000004
	.4byte gUnk_080B6510
	.incbin "baserom.gba", 0x0B6534, 0x0000004
	.4byte gUnk_080B6518
	.incbin "baserom.gba", 0x0B653C, 0x0000004
	.4byte gUnk_080B6520
	.incbin "baserom.gba", 0x0B6544, 0x000000C

gUnk_080B6550:: @ 080B6550
	.incbin "baserom.gba", 0x0B6550, 0x0000008

gUnk_080B6558:: @ 080B6558
	.incbin "baserom.gba", 0x0B6558, 0x0000008

gUnk_080B6560:: @ 080B6560
	.incbin "baserom.gba", 0x0B6560, 0x0000008

gUnk_080B6568:: @ 080B6568
	.incbin "baserom.gba", 0x0B6568, 0x0000008

gUnk_080B6570:: @ 080B6570
	.4byte gUnk_080B6550
	.incbin "baserom.gba", 0x0B6574, 0x0000004
	.4byte gUnk_080B6558
	.incbin "baserom.gba", 0x0B657C, 0x0000004
	.4byte gUnk_080B6560
	.incbin "baserom.gba", 0x0B6584, 0x0000004
	.4byte gUnk_080B6568
	.incbin "baserom.gba", 0x0B658C, 0x000000C

gUnk_080B6598:: @ 080B6598
	.incbin "baserom.gba", 0x0B6598, 0x0000008

gUnk_080B65A0:: @ 080B65A0
	.incbin "baserom.gba", 0x0B65A0, 0x0000008

gUnk_080B65A8:: @ 080B65A8
	.incbin "baserom.gba", 0x0B65A8, 0x0000008

gUnk_080B65B0:: @ 080B65B0
	.incbin "baserom.gba", 0x0B65B0, 0x0000008

gUnk_080B65B8:: @ 080B65B8
	.incbin "baserom.gba", 0x0B65B8, 0x0000008

gUnk_080B65C0:: @ 080B65C0
	.incbin "baserom.gba", 0x0B65C0, 0x0000008

gUnk_080B65C8:: @ 080B65C8
	.incbin "baserom.gba", 0x0B65C8, 0x0000008

gUnk_080B65D0:: @ 080B65D0
	.incbin "baserom.gba", 0x0B65D0, 0x0000008

gUnk_080B65D8:: @ 080B65D8
	.incbin "baserom.gba", 0x0B65D8, 0x0000008

gUnk_080B65E0:: @ 080B65E0
	.incbin "baserom.gba", 0x0B65E0, 0x0000008

gUnk_080B65E8:: @ 080B65E8
	.incbin "baserom.gba", 0x0B65E8, 0x0000008

gUnk_080B65F0:: @ 080B65F0
	.incbin "baserom.gba", 0x0B65F0, 0x0000008

gUnk_080B65F8:: @ 080B65F8
	.incbin "baserom.gba", 0x0B65F8, 0x0000008

gUnk_080B6600:: @ 080B6600
	.incbin "baserom.gba", 0x0B6600, 0x0000008

gUnk_080B6608:: @ 080B6608
	.incbin "baserom.gba", 0x0B6608, 0x0000008

gUnk_080B6610:: @ 080B6610
	.incbin "baserom.gba", 0x0B6610, 0x0000008

gUnk_080B6618:: @ 080B6618
	.4byte gUnk_080B6598
	.incbin "baserom.gba", 0x0B661C, 0x0000004
	.4byte gUnk_080B65A0
	.incbin "baserom.gba", 0x0B6624, 0x0000004
	.4byte gUnk_080B65A8
	.incbin "baserom.gba", 0x0B662C, 0x0000004
	.4byte gUnk_080B65B0
	.incbin "baserom.gba", 0x0B6634, 0x0000004
	.4byte gUnk_080B65B8
	.incbin "baserom.gba", 0x0B663C, 0x0000004
	.4byte gUnk_080B65C0
	.incbin "baserom.gba", 0x0B6644, 0x0000004
	.4byte gUnk_080B65C8
	.incbin "baserom.gba", 0x0B664C, 0x0000004
	.4byte gUnk_080B65D0
	.incbin "baserom.gba", 0x0B6654, 0x0000004
	.4byte gUnk_080B65D8
	.incbin "baserom.gba", 0x0B665C, 0x0000004
	.4byte gUnk_080B65E0
	.incbin "baserom.gba", 0x0B6664, 0x0000004
	.4byte gUnk_080B65E8
	.incbin "baserom.gba", 0x0B666C, 0x0000004
	.4byte gUnk_080B65F0
	.incbin "baserom.gba", 0x0B6674, 0x0000004
	.4byte gUnk_080B65F8
	.incbin "baserom.gba", 0x0B667C, 0x0000004
	.4byte gUnk_080B6600
	.incbin "baserom.gba", 0x0B6684, 0x0000004
	.4byte gUnk_080B6608
	.incbin "baserom.gba", 0x0B668C, 0x0000004
	.4byte gUnk_080B6610
	.incbin "baserom.gba", 0x0B6694, 0x000000C

gUnk_080B66A0:: @ 080B66A0
	.incbin "baserom.gba", 0x0B66A0, 0x0000008

gUnk_080B66A8:: @ 080B66A8
	.incbin "baserom.gba", 0x0B66A8, 0x0000008

gUnk_080B66B0:: @ 080B66B0
	.incbin "baserom.gba", 0x0B66B0, 0x0000008

gUnk_080B66B8:: @ 080B66B8
	.incbin "baserom.gba", 0x0B66B8, 0x0000008

gUnk_080B66C0:: @ 080B66C0
	.incbin "baserom.gba", 0x0B66C0, 0x0000008

gUnk_080B66C8:: @ 080B66C8
	.incbin "baserom.gba", 0x0B66C8, 0x0000008

gUnk_080B66D0:: @ 080B66D0
	.incbin "baserom.gba", 0x0B66D0, 0x0000008

gUnk_080B66D8:: @ 080B66D8
	.incbin "baserom.gba", 0x0B66D8, 0x0000008

gUnk_080B66E0:: @ 080B66E0
	.incbin "baserom.gba", 0x0B66E0, 0x0000008

gUnk_080B66E8:: @ 080B66E8
	.incbin "baserom.gba", 0x0B66E8, 0x0000008

gUnk_080B66F0:: @ 080B66F0
	.incbin "baserom.gba", 0x0B66F0, 0x0000008

gUnk_080B66F8:: @ 080B66F8
	.incbin "baserom.gba", 0x0B66F8, 0x0000008

gUnk_080B6700:: @ 080B6700
	.incbin "baserom.gba", 0x0B6700, 0x0000008

gUnk_080B6708:: @ 080B6708
	.incbin "baserom.gba", 0x0B6708, 0x0000008

gUnk_080B6710:: @ 080B6710
	.incbin "baserom.gba", 0x0B6710, 0x0000008

gUnk_080B6718:: @ 080B6718
	.incbin "baserom.gba", 0x0B6718, 0x0000008

gUnk_080B6720:: @ 080B6720
	.4byte gUnk_080B66A0
	.incbin "baserom.gba", 0x0B6724, 0x0000004
	.4byte gUnk_080B66A8
	.incbin "baserom.gba", 0x0B672C, 0x0000004
	.4byte gUnk_080B66B0
	.incbin "baserom.gba", 0x0B6734, 0x0000004
	.4byte gUnk_080B66B8
	.incbin "baserom.gba", 0x0B673C, 0x0000004
	.4byte gUnk_080B66C0
	.incbin "baserom.gba", 0x0B6744, 0x0000004
	.4byte gUnk_080B66C8
	.incbin "baserom.gba", 0x0B674C, 0x0000004
	.4byte gUnk_080B66D0
	.incbin "baserom.gba", 0x0B6754, 0x0000004
	.4byte gUnk_080B66D8
	.incbin "baserom.gba", 0x0B675C, 0x0000004
	.4byte gUnk_080B66E0
	.incbin "baserom.gba", 0x0B6764, 0x0000004
	.4byte gUnk_080B66E8
	.incbin "baserom.gba", 0x0B676C, 0x0000004
	.4byte gUnk_080B66F0
	.incbin "baserom.gba", 0x0B6774, 0x0000004
	.4byte gUnk_080B66F8
	.incbin "baserom.gba", 0x0B677C, 0x0000004
	.4byte gUnk_080B6700
	.incbin "baserom.gba", 0x0B6784, 0x0000004
	.4byte gUnk_080B6708
	.incbin "baserom.gba", 0x0B678C, 0x0000004
	.4byte gUnk_080B6710
	.incbin "baserom.gba", 0x0B6794, 0x0000004
	.4byte gUnk_080B6718
	.incbin "baserom.gba", 0x0B679C, 0x000000C

gUnk_080B67A8:: @ 080B67A8
	.incbin "baserom.gba", 0x0B67A8, 0x0000008

gUnk_080B67B0:: @ 080B67B0
	.incbin "baserom.gba", 0x0B67B0, 0x0000008

gUnk_080B67B8:: @ 080B67B8
	.incbin "baserom.gba", 0x0B67B8, 0x0000008

gUnk_080B67C0:: @ 080B67C0
	.incbin "baserom.gba", 0x0B67C0, 0x0000008

gUnk_080B67C8:: @ 080B67C8
	.4byte gUnk_080B67A8
	.incbin "baserom.gba", 0x0B67CC, 0x0000004
	.4byte gUnk_080B67B0
	.incbin "baserom.gba", 0x0B67D4, 0x0000004
	.4byte gUnk_080B67B8
	.incbin "baserom.gba", 0x0B67DC, 0x0000004
	.4byte gUnk_080B67C0
	.incbin "baserom.gba", 0x0B67E4, 0x000000C

gUnk_080B67F0:: @ 080B67F0
	.incbin "baserom.gba", 0x0B67F0, 0x0000008

gUnk_080B67F8:: @ 080B67F8
	.incbin "baserom.gba", 0x0B67F8, 0x0000008

gUnk_080B6800:: @ 080B6800
	.incbin "baserom.gba", 0x0B6800, 0x0000008

gUnk_080B6808:: @ 080B6808
	.incbin "baserom.gba", 0x0B6808, 0x0000008

gUnk_080B6810:: @ 080B6810
	.4byte gUnk_080B67F0
	.incbin "baserom.gba", 0x0B6814, 0x0000004
	.4byte gUnk_080B67F8
	.incbin "baserom.gba", 0x0B681C, 0x0000004
	.4byte gUnk_080B6800
	.incbin "baserom.gba", 0x0B6824, 0x0000004
	.4byte gUnk_080B6808
	.incbin "baserom.gba", 0x0B682C, 0x000000C

gUnk_080B6838:: @ 080B6838
	.incbin "baserom.gba", 0x0B6838, 0x0000008

gUnk_080B6840:: @ 080B6840
	.incbin "baserom.gba", 0x0B6840, 0x0000008

gUnk_080B6848:: @ 080B6848
	.incbin "baserom.gba", 0x0B6848, 0x0000008

gUnk_080B6850:: @ 080B6850
	.incbin "baserom.gba", 0x0B6850, 0x0000008

gUnk_080B6858:: @ 080B6858
	.4byte gUnk_080B6838
	.incbin "baserom.gba", 0x0B685C, 0x0000004
	.4byte gUnk_080B6840
	.incbin "baserom.gba", 0x0B6864, 0x0000004
	.4byte gUnk_080B6848
	.incbin "baserom.gba", 0x0B686C, 0x0000004
	.4byte gUnk_080B6850
	.incbin "baserom.gba", 0x0B6874, 0x000000C

gUnk_080B6880:: @ 080B6880
	.incbin "baserom.gba", 0x0B6880, 0x0000008

gUnk_080B6888:: @ 080B6888
	.incbin "baserom.gba", 0x0B6888, 0x0000008

gUnk_080B6890:: @ 080B6890
	.incbin "baserom.gba", 0x0B6890, 0x0000008

gUnk_080B6898:: @ 080B6898
	.incbin "baserom.gba", 0x0B6898, 0x0000008

gUnk_080B68A0:: @ 080B68A0
	.4byte gUnk_080B6880
	.incbin "baserom.gba", 0x0B68A4, 0x0000004
	.4byte gUnk_080B6888
	.incbin "baserom.gba", 0x0B68AC, 0x0000004
	.4byte gUnk_080B6890
	.incbin "baserom.gba", 0x0B68B4, 0x0000004
	.4byte gUnk_080B6898
	.incbin "baserom.gba", 0x0B68BC, 0x000000C

gUnk_080B68C8:: @ 080B68C8
	.incbin "baserom.gba", 0x0B68C8, 0x0000008

gUnk_080B68D0:: @ 080B68D0
	.incbin "baserom.gba", 0x0B68D0, 0x0000008

gUnk_080B68D8:: @ 080B68D8
	.incbin "baserom.gba", 0x0B68D8, 0x0000008

gUnk_080B68E0:: @ 080B68E0
	.incbin "baserom.gba", 0x0B68E0, 0x0000008

gUnk_080B68E8:: @ 080B68E8
	.4byte gUnk_080B68C8
	.incbin "baserom.gba", 0x0B68EC, 0x0000004
	.4byte gUnk_080B68D0
	.incbin "baserom.gba", 0x0B68F4, 0x0000004
	.4byte gUnk_080B68D8
	.incbin "baserom.gba", 0x0B68FC, 0x0000004
	.4byte gUnk_080B68E0
	.incbin "baserom.gba", 0x0B6904, 0x000000C

gUnk_080B6910:: @ 080B6910
	.incbin "baserom.gba", 0x0B6910, 0x0000008

gUnk_080B6918:: @ 080B6918
	.incbin "baserom.gba", 0x0B6918, 0x0000008

gUnk_080B6920:: @ 080B6920
	.incbin "baserom.gba", 0x0B6920, 0x0000008

gUnk_080B6928:: @ 080B6928
	.incbin "baserom.gba", 0x0B6928, 0x0000008

gUnk_080B6930:: @ 080B6930
	.incbin "baserom.gba", 0x0B6930, 0x0000008

gUnk_080B6938:: @ 080B6938
	.4byte gUnk_080B6910
	.incbin "baserom.gba", 0x0B693C, 0x0000004
	.4byte gUnk_080B6918
	.incbin "baserom.gba", 0x0B6944, 0x0000004
	.4byte gUnk_080B6920
	.incbin "baserom.gba", 0x0B694C, 0x0000004
	.4byte gUnk_080B6928
	.incbin "baserom.gba", 0x0B6954, 0x0000004
	.4byte gUnk_080B6930
	.incbin "baserom.gba", 0x0B695C, 0x0000004
	.4byte gUnk_080B6928
	.incbin "baserom.gba", 0x0B6964, 0x0000004
	.4byte gUnk_080B6920
	.incbin "baserom.gba", 0x0B696C, 0x0000004
	.4byte gUnk_080B6918
	.incbin "baserom.gba", 0x0B6974, 0x000000C

gUnk_080B6980:: @ 080B6980
	.incbin "baserom.gba", 0x0B6980, 0x0000008

gUnk_080B6988:: @ 080B6988
	.incbin "baserom.gba", 0x0B6988, 0x0000008

gUnk_080B6990:: @ 080B6990
	.incbin "baserom.gba", 0x0B6990, 0x0000008

gUnk_080B6998:: @ 080B6998
	.incbin "baserom.gba", 0x0B6998, 0x0000008

gUnk_080B69A0:: @ 080B69A0
	.incbin "baserom.gba", 0x0B69A0, 0x0000008

gUnk_080B69A8:: @ 080B69A8
	.incbin "baserom.gba", 0x0B69A8, 0x0000008

gUnk_080B69B0:: @ 080B69B0
	.incbin "baserom.gba", 0x0B69B0, 0x0000008

gUnk_080B69B8:: @ 080B69B8
	.incbin "baserom.gba", 0x0B69B8, 0x0000008

gUnk_080B69C0:: @ 080B69C0
	.incbin "baserom.gba", 0x0B69C0, 0x0000008

gUnk_080B69C8:: @ 080B69C8
	.incbin "baserom.gba", 0x0B69C8, 0x0000008

gUnk_080B69D0:: @ 080B69D0
	.incbin "baserom.gba", 0x0B69D0, 0x0000008

gUnk_080B69D8:: @ 080B69D8
	.incbin "baserom.gba", 0x0B69D8, 0x0000008

gUnk_080B69E0:: @ 080B69E0
	.incbin "baserom.gba", 0x0B69E0, 0x0000008

gUnk_080B69E8:: @ 080B69E8
	.incbin "baserom.gba", 0x0B69E8, 0x0000008

gUnk_080B69F0:: @ 080B69F0
	.incbin "baserom.gba", 0x0B69F0, 0x0000008

gUnk_080B69F8:: @ 080B69F8
	.incbin "baserom.gba", 0x0B69F8, 0x0000008

gUnk_080B6A00:: @ 080B6A00
	.4byte gUnk_080B6980
	.incbin "baserom.gba", 0x0B6A04, 0x0000004
	.4byte gUnk_080B6988
	.incbin "baserom.gba", 0x0B6A0C, 0x0000004
	.4byte gUnk_080B6990
	.incbin "baserom.gba", 0x0B6A14, 0x0000004
	.4byte gUnk_080B6998
	.incbin "baserom.gba", 0x0B6A1C, 0x0000004
	.4byte gUnk_080B69A0
	.incbin "baserom.gba", 0x0B6A24, 0x0000004
	.4byte gUnk_080B69A8
	.incbin "baserom.gba", 0x0B6A2C, 0x0000004
	.4byte gUnk_080B69B0
	.incbin "baserom.gba", 0x0B6A34, 0x0000004
	.4byte gUnk_080B69B8
	.incbin "baserom.gba", 0x0B6A3C, 0x0000004
	.4byte gUnk_080B69C0
	.incbin "baserom.gba", 0x0B6A44, 0x0000004
	.4byte gUnk_080B69C8
	.incbin "baserom.gba", 0x0B6A4C, 0x0000004
	.4byte gUnk_080B69D0
	.incbin "baserom.gba", 0x0B6A54, 0x0000004
	.4byte gUnk_080B69D8
	.incbin "baserom.gba", 0x0B6A5C, 0x0000004
	.4byte gUnk_080B69E0
	.incbin "baserom.gba", 0x0B6A64, 0x0000004
	.4byte gUnk_080B69E8
	.incbin "baserom.gba", 0x0B6A6C, 0x0000004
	.4byte gUnk_080B69F0
	.incbin "baserom.gba", 0x0B6A74, 0x0000004
	.4byte gUnk_080B69F8
	.incbin "baserom.gba", 0x0B6A7C, 0x000000C

gUnk_080B6A88:: @ 080B6A88
	.incbin "baserom.gba", 0x0B6A88, 0x0000008

gUnk_080B6A90:: @ 080B6A90
	.incbin "baserom.gba", 0x0B6A90, 0x0000008

gUnk_080B6A98:: @ 080B6A98
	.incbin "baserom.gba", 0x0B6A98, 0x0000008

gUnk_080B6AA0:: @ 080B6AA0
	.incbin "baserom.gba", 0x0B6AA0, 0x0000008

gUnk_080B6AA8:: @ 080B6AA8
	.incbin "baserom.gba", 0x0B6AA8, 0x0000008

gUnk_080B6AB0:: @ 080B6AB0
	.incbin "baserom.gba", 0x0B6AB0, 0x0000008

gUnk_080B6AB8:: @ 080B6AB8
	.incbin "baserom.gba", 0x0B6AB8, 0x0000008

gUnk_080B6AC0:: @ 080B6AC0
	.incbin "baserom.gba", 0x0B6AC0, 0x0000008

gUnk_080B6AC8:: @ 080B6AC8
	.incbin "baserom.gba", 0x0B6AC8, 0x0000008

gUnk_080B6AD0:: @ 080B6AD0
	.incbin "baserom.gba", 0x0B6AD0, 0x0000008

gUnk_080B6AD8:: @ 080B6AD8
	.incbin "baserom.gba", 0x0B6AD8, 0x0000008

gUnk_080B6AE0:: @ 080B6AE0
	.incbin "baserom.gba", 0x0B6AE0, 0x0000008

gUnk_080B6AE8:: @ 080B6AE8
	.incbin "baserom.gba", 0x0B6AE8, 0x0000008

gUnk_080B6AF0:: @ 080B6AF0
	.incbin "baserom.gba", 0x0B6AF0, 0x0000008

gUnk_080B6AF8:: @ 080B6AF8
	.incbin "baserom.gba", 0x0B6AF8, 0x0000008

gUnk_080B6B00:: @ 080B6B00
	.incbin "baserom.gba", 0x0B6B00, 0x0000008

gUnk_080B6B08:: @ 080B6B08
	.4byte gUnk_080B6A88
	.incbin "baserom.gba", 0x0B6B0C, 0x0000004
	.4byte gUnk_080B6A90
	.incbin "baserom.gba", 0x0B6B14, 0x0000004
	.4byte gUnk_080B6A98
	.incbin "baserom.gba", 0x0B6B1C, 0x0000004
	.4byte gUnk_080B6AA0
	.incbin "baserom.gba", 0x0B6B24, 0x0000004
	.4byte gUnk_080B6AA8
	.incbin "baserom.gba", 0x0B6B2C, 0x0000004
	.4byte gUnk_080B6AB0
	.incbin "baserom.gba", 0x0B6B34, 0x0000004
	.4byte gUnk_080B6AB8
	.incbin "baserom.gba", 0x0B6B3C, 0x0000004
	.4byte gUnk_080B6AC0
	.incbin "baserom.gba", 0x0B6B44, 0x0000004
	.4byte gUnk_080B6AC8
	.incbin "baserom.gba", 0x0B6B4C, 0x0000004
	.4byte gUnk_080B6AD0
	.incbin "baserom.gba", 0x0B6B54, 0x0000004
	.4byte gUnk_080B6AD8
	.incbin "baserom.gba", 0x0B6B5C, 0x0000004
	.4byte gUnk_080B6AE0
	.incbin "baserom.gba", 0x0B6B64, 0x0000004
	.4byte gUnk_080B6AE8
	.incbin "baserom.gba", 0x0B6B6C, 0x0000004
	.4byte gUnk_080B6AF0
	.incbin "baserom.gba", 0x0B6B74, 0x0000004
	.4byte gUnk_080B6AF8
	.incbin "baserom.gba", 0x0B6B7C, 0x0000004
	.4byte gUnk_080B6B00
	.incbin "baserom.gba", 0x0B6B84, 0x000000C

gUnk_080B6B90:: @ 080B6B90
	.incbin "baserom.gba", 0x0B6B90, 0x0000008

gUnk_080B6B98:: @ 080B6B98
	.incbin "baserom.gba", 0x0B6B98, 0x0000008

gUnk_080B6BA0:: @ 080B6BA0
	.incbin "baserom.gba", 0x0B6BA0, 0x0000008

gUnk_080B6BA8:: @ 080B6BA8
	.incbin "baserom.gba", 0x0B6BA8, 0x0000008

gUnk_080B6BB0:: @ 080B6BB0
	.4byte gUnk_080B6B90
	.incbin "baserom.gba", 0x0B6BB4, 0x0000004
	.4byte gUnk_080B6B98
	.incbin "baserom.gba", 0x0B6BBC, 0x0000004
	.4byte gUnk_080B6BA0
	.incbin "baserom.gba", 0x0B6BC4, 0x0000004
	.4byte gUnk_080B6BA8
	.incbin "baserom.gba", 0x0B6BCC, 0x000000C

gUnk_080B6BD8:: @ 080B6BD8
	.incbin "baserom.gba", 0x0B6BD8, 0x0000008

gUnk_080B6BE0:: @ 080B6BE0
	.incbin "baserom.gba", 0x0B6BE0, 0x0000008

gUnk_080B6BE8:: @ 080B6BE8
	.incbin "baserom.gba", 0x0B6BE8, 0x0000008

gUnk_080B6BF0:: @ 080B6BF0
	.incbin "baserom.gba", 0x0B6BF0, 0x0000008

gUnk_080B6BF8:: @ 080B6BF8
	.4byte gUnk_080B6BD8
	.incbin "baserom.gba", 0x0B6BFC, 0x0000004
	.4byte gUnk_080B6BE0
	.incbin "baserom.gba", 0x0B6C04, 0x0000004
	.4byte gUnk_080B6BE8
	.incbin "baserom.gba", 0x0B6C0C, 0x0000004
	.4byte gUnk_080B6BF0
	.incbin "baserom.gba", 0x0B6C14, 0x000000C

gUnk_080B6C20:: @ 080B6C20
	.incbin "baserom.gba", 0x0B6C20, 0x0000008

gUnk_080B6C28:: @ 080B6C28
	.incbin "baserom.gba", 0x0B6C28, 0x0000008

gUnk_080B6C30:: @ 080B6C30
	.incbin "baserom.gba", 0x0B6C30, 0x0000008

gUnk_080B6C38:: @ 080B6C38
	.incbin "baserom.gba", 0x0B6C38, 0x0000008

gUnk_080B6C40:: @ 080B6C40
	.incbin "baserom.gba", 0x0B6C40, 0x0000008

gUnk_080B6C48:: @ 080B6C48
	.incbin "baserom.gba", 0x0B6C48, 0x0000008

gUnk_080B6C50:: @ 080B6C50
	.incbin "baserom.gba", 0x0B6C50, 0x0000008

gUnk_080B6C58:: @ 080B6C58
	.4byte gUnk_080B6C20
	.incbin "baserom.gba", 0x0B6C5C, 0x0000004
	.4byte gUnk_080B6C28
	.incbin "baserom.gba", 0x0B6C64, 0x0000004
	.4byte gUnk_080B6C30
	.incbin "baserom.gba", 0x0B6C6C, 0x0000004
	.4byte gUnk_080B6C38
	.incbin "baserom.gba", 0x0B6C74, 0x0000004
	.4byte gUnk_080B6C40
	.incbin "baserom.gba", 0x0B6C7C, 0x0000004
	.4byte gUnk_080B6C48
	.incbin "baserom.gba", 0x0B6C84, 0x0000004
	.4byte gUnk_080B6C50
	.incbin "baserom.gba", 0x0B6C8C, 0x000000C

gUnk_080B6C98:: @ 080B6C98
	.incbin "baserom.gba", 0x0B6C98, 0x0000008

gUnk_080B6CA0:: @ 080B6CA0
	.incbin "baserom.gba", 0x0B6CA0, 0x0000008

gUnk_080B6CA8:: @ 080B6CA8
	.incbin "baserom.gba", 0x0B6CA8, 0x0000008

gUnk_080B6CB0:: @ 080B6CB0
	.incbin "baserom.gba", 0x0B6CB0, 0x0000008

gUnk_080B6CB8:: @ 080B6CB8
	.4byte gUnk_080B6C98
	.incbin "baserom.gba", 0x0B6CBC, 0x0000004
	.4byte gUnk_080B6CA0
	.incbin "baserom.gba", 0x0B6CC4, 0x0000004
	.4byte gUnk_080B6CA8
	.incbin "baserom.gba", 0x0B6CCC, 0x0000004
	.4byte gUnk_080B6CB0
	.incbin "baserom.gba", 0x0B6CD4, 0x000000C

gUnk_080B6CE0:: @ 080B6CE0
	.incbin "baserom.gba", 0x0B6CE0, 0x0000008

gUnk_080B6CE8:: @ 080B6CE8
	.incbin "baserom.gba", 0x0B6CE8, 0x0000008

gUnk_080B6CF0:: @ 080B6CF0
	.incbin "baserom.gba", 0x0B6CF0, 0x0000008

gUnk_080B6CF8:: @ 080B6CF8
	.incbin "baserom.gba", 0x0B6CF8, 0x0000008

gUnk_080B6D00:: @ 080B6D00
	.4byte gUnk_080B6CE0
	.incbin "baserom.gba", 0x0B6D04, 0x0000004
	.4byte gUnk_080B6CE8
	.incbin "baserom.gba", 0x0B6D0C, 0x0000004
	.4byte gUnk_080B6CF0
	.incbin "baserom.gba", 0x0B6D14, 0x0000004
	.4byte gUnk_080B6CF8
	.incbin "baserom.gba", 0x0B6D1C, 0x000000C

gUnk_080B6D28:: @ 080B6D28
	.incbin "baserom.gba", 0x0B6D28, 0x0000008

gUnk_080B6D30:: @ 080B6D30
	.incbin "baserom.gba", 0x0B6D30, 0x0000008

gUnk_080B6D38:: @ 080B6D38
	.incbin "baserom.gba", 0x0B6D38, 0x0000008

gUnk_080B6D40:: @ 080B6D40
	.incbin "baserom.gba", 0x0B6D40, 0x0000008

gUnk_080B6D48:: @ 080B6D48
	.incbin "baserom.gba", 0x0B6D48, 0x0000008

gUnk_080B6D50:: @ 080B6D50
	.incbin "baserom.gba", 0x0B6D50, 0x0000008

gUnk_080B6D58:: @ 080B6D58
	.incbin "baserom.gba", 0x0B6D58, 0x0000008

gUnk_080B6D60:: @ 080B6D60
	.incbin "baserom.gba", 0x0B6D60, 0x0000008

gUnk_080B6D68:: @ 080B6D68
	.incbin "baserom.gba", 0x0B6D68, 0x0000008

gUnk_080B6D70:: @ 080B6D70
	.incbin "baserom.gba", 0x0B6D70, 0x0000008

gUnk_080B6D78:: @ 080B6D78
	.incbin "baserom.gba", 0x0B6D78, 0x0000008

gUnk_080B6D80:: @ 080B6D80
	.incbin "baserom.gba", 0x0B6D80, 0x0000008

gUnk_080B6D88:: @ 080B6D88
	.incbin "baserom.gba", 0x0B6D88, 0x0000008

gUnk_080B6D90:: @ 080B6D90
	.incbin "baserom.gba", 0x0B6D90, 0x0000008

gUnk_080B6D98:: @ 080B6D98
	.incbin "baserom.gba", 0x0B6D98, 0x0000008

gUnk_080B6DA0:: @ 080B6DA0
	.incbin "baserom.gba", 0x0B6DA0, 0x0000008

gUnk_080B6DA8:: @ 080B6DA8
	.4byte gUnk_080B6D28
	.incbin "baserom.gba", 0x0B6DAC, 0x0000004
	.4byte gUnk_080B6D30
	.incbin "baserom.gba", 0x0B6DB4, 0x0000004
	.4byte gUnk_080B6D38
	.incbin "baserom.gba", 0x0B6DBC, 0x0000004
	.4byte gUnk_080B6D40
	.incbin "baserom.gba", 0x0B6DC4, 0x0000004
	.4byte gUnk_080B6D48
	.incbin "baserom.gba", 0x0B6DCC, 0x0000004
	.4byte gUnk_080B6D50
	.incbin "baserom.gba", 0x0B6DD4, 0x0000004
	.4byte gUnk_080B6D58
	.incbin "baserom.gba", 0x0B6DDC, 0x0000004
	.4byte gUnk_080B6D60
	.incbin "baserom.gba", 0x0B6DE4, 0x0000004
	.4byte gUnk_080B6D68
	.incbin "baserom.gba", 0x0B6DEC, 0x0000004
	.4byte gUnk_080B6D70
	.incbin "baserom.gba", 0x0B6DF4, 0x0000004
	.4byte gUnk_080B6D78
	.incbin "baserom.gba", 0x0B6DFC, 0x0000004
	.4byte gUnk_080B6D80
	.incbin "baserom.gba", 0x0B6E04, 0x0000004
	.4byte gUnk_080B6D88
	.incbin "baserom.gba", 0x0B6E0C, 0x0000004
	.4byte gUnk_080B6D90
	.incbin "baserom.gba", 0x0B6E14, 0x0000004
	.4byte gUnk_080B6D98
	.incbin "baserom.gba", 0x0B6E1C, 0x0000004
	.4byte gUnk_080B6DA0
	.incbin "baserom.gba", 0x0B6E24, 0x0000004
	.4byte gUnk_080B6D98
	.incbin "baserom.gba", 0x0B6E2C, 0x0000004
	.4byte gUnk_080B6D90
	.incbin "baserom.gba", 0x0B6E34, 0x0000004
	.4byte gUnk_080B6D88
	.incbin "baserom.gba", 0x0B6E3C, 0x0000004
	.4byte gUnk_080B6D80
	.incbin "baserom.gba", 0x0B6E44, 0x0000004
	.4byte gUnk_080B6D78
	.incbin "baserom.gba", 0x0B6E4C, 0x0000004
	.4byte gUnk_080B6D70
	.incbin "baserom.gba", 0x0B6E54, 0x0000004
	.4byte gUnk_080B6D68
	.incbin "baserom.gba", 0x0B6E5C, 0x0000004

gUnk_080B6E60:: @ 080B6E60
	.4byte gUnk_080B6D60
	.incbin "baserom.gba", 0x0B6E64, 0x0000004
	.4byte gUnk_080B6D58
	.incbin "baserom.gba", 0x0B6E6C, 0x0000004
	.4byte gUnk_080B6D50
	.incbin "baserom.gba", 0x0B6E74, 0x0000004
	.4byte gUnk_080B6D48
	.incbin "baserom.gba", 0x0B6E7C, 0x0000004
	.4byte gUnk_080B6D40
	.incbin "baserom.gba", 0x0B6E84, 0x0000004
	.4byte gUnk_080B6D38
	.incbin "baserom.gba", 0x0B6E8C, 0x0000004
	.4byte gUnk_080B6D30
	.incbin "baserom.gba", 0x0B6E94, 0x0000004
	.4byte gUnk_080B6D28
	.incbin "baserom.gba", 0x0B6E9C, 0x000000C

gUnk_080B6EA8:: @ 080B6EA8
	.incbin "baserom.gba", 0x0B6EA8, 0x0000008

gUnk_080B6EB0:: @ 080B6EB0
	.incbin "baserom.gba", 0x0B6EB0, 0x0000008

gUnk_080B6EB8:: @ 080B6EB8
	.incbin "baserom.gba", 0x0B6EB8, 0x0000008

gUnk_080B6EC0:: @ 080B6EC0
	.incbin "baserom.gba", 0x0B6EC0, 0x0000008

gUnk_080B6EC8:: @ 080B6EC8
	.incbin "baserom.gba", 0x0B6EC8, 0x0000008

gUnk_080B6ED0:: @ 080B6ED0
	.incbin "baserom.gba", 0x0B6ED0, 0x0000008

gUnk_080B6ED8:: @ 080B6ED8
	.incbin "baserom.gba", 0x0B6ED8, 0x0000008

gUnk_080B6EE0:: @ 080B6EE0
	.incbin "baserom.gba", 0x0B6EE0, 0x0000008

gUnk_080B6EE8:: @ 080B6EE8
	.incbin "baserom.gba", 0x0B6EE8, 0x0000008

gUnk_080B6EF0:: @ 080B6EF0
	.incbin "baserom.gba", 0x0B6EF0, 0x0000008

gUnk_080B6EF8:: @ 080B6EF8
	.incbin "baserom.gba", 0x0B6EF8, 0x0000008

gUnk_080B6F00:: @ 080B6F00
	.incbin "baserom.gba", 0x0B6F00, 0x0000008

gUnk_080B6F08:: @ 080B6F08
	.incbin "baserom.gba", 0x0B6F08, 0x0000008

gUnk_080B6F10:: @ 080B6F10
	.incbin "baserom.gba", 0x0B6F10, 0x0000008

gUnk_080B6F18:: @ 080B6F18
	.incbin "baserom.gba", 0x0B6F18, 0x0000008

gUnk_080B6F20:: @ 080B6F20
	.incbin "baserom.gba", 0x0B6F20, 0x0000008

gUnk_080B6F28:: @ 080B6F28
	.4byte gUnk_080B6EA8
	.incbin "baserom.gba", 0x0B6F2C, 0x0000004
	.4byte gUnk_080B6EB0
	.incbin "baserom.gba", 0x0B6F34, 0x0000004
	.4byte gUnk_080B6EB8
	.incbin "baserom.gba", 0x0B6F3C, 0x0000004
	.4byte gUnk_080B6EC0
	.incbin "baserom.gba", 0x0B6F44, 0x0000004
	.4byte gUnk_080B6EC8
	.incbin "baserom.gba", 0x0B6F4C, 0x0000004
	.4byte gUnk_080B6ED0
	.incbin "baserom.gba", 0x0B6F54, 0x0000004
	.4byte gUnk_080B6ED8
	.incbin "baserom.gba", 0x0B6F5C, 0x0000004
	.4byte gUnk_080B6EE0
	.incbin "baserom.gba", 0x0B6F64, 0x0000004
	.4byte gUnk_080B6EE8
	.incbin "baserom.gba", 0x0B6F6C, 0x0000004
	.4byte gUnk_080B6EF0
	.incbin "baserom.gba", 0x0B6F74, 0x0000004
	.4byte gUnk_080B6EF8
	.incbin "baserom.gba", 0x0B6F7C, 0x0000004
	.4byte gUnk_080B6F00
	.incbin "baserom.gba", 0x0B6F84, 0x0000004
	.4byte gUnk_080B6F08
	.incbin "baserom.gba", 0x0B6F8C, 0x0000004
	.4byte gUnk_080B6F10
	.incbin "baserom.gba", 0x0B6F94, 0x0000004
	.4byte gUnk_080B6F18
	.incbin "baserom.gba", 0x0B6F9C, 0x0000004
	.4byte gUnk_080B6F20
	.incbin "baserom.gba", 0x0B6FA4, 0x000000C

gUnk_080B6FB0:: @ 080B6FB0
	.incbin "baserom.gba", 0x0B6FB0, 0x0000008

gUnk_080B6FB8:: @ 080B6FB8
	.incbin "baserom.gba", 0x0B6FB8, 0x0000008

gUnk_080B6FC0:: @ 080B6FC0
	.incbin "baserom.gba", 0x0B6FC0, 0x0000008

gUnk_080B6FC8:: @ 080B6FC8
	.incbin "baserom.gba", 0x0B6FC8, 0x0000008

gUnk_080B6FD0:: @ 080B6FD0
	.incbin "baserom.gba", 0x0B6FD0, 0x0000008

gUnk_080B6FD8:: @ 080B6FD8
	.incbin "baserom.gba", 0x0B6FD8, 0x0000008

gUnk_080B6FE0:: @ 080B6FE0
	.incbin "baserom.gba", 0x0B6FE0, 0x0000008

gUnk_080B6FE8:: @ 080B6FE8
	.incbin "baserom.gba", 0x0B6FE8, 0x0000008

gUnk_080B6FF0:: @ 080B6FF0
	.4byte gUnk_080B6FB0
	.incbin "baserom.gba", 0x0B6FF4, 0x0000004
	.4byte gUnk_080B6FB8
	.incbin "baserom.gba", 0x0B6FFC, 0x0000004
	.4byte gUnk_080B6FC0
	.incbin "baserom.gba", 0x0B7004, 0x0000004
	.4byte gUnk_080B6FC8
	.incbin "baserom.gba", 0x0B700C, 0x0000004
	.4byte gUnk_080B6FD0
	.incbin "baserom.gba", 0x0B7014, 0x0000004
	.4byte gUnk_080B6FD8
	.incbin "baserom.gba", 0x0B701C, 0x0000004
	.4byte gUnk_080B6FE0
	.incbin "baserom.gba", 0x0B7024, 0x0000004
	.4byte gUnk_080B6FE8
	.incbin "baserom.gba", 0x0B702C, 0x0000004
	.4byte gUnk_080B6FE0
	.incbin "baserom.gba", 0x0B7034, 0x0000004
	.4byte gUnk_080B6FD8
	.incbin "baserom.gba", 0x0B703C, 0x0000004
	.4byte gUnk_080B6FD0
	.incbin "baserom.gba", 0x0B7044, 0x0000004
	.4byte gUnk_080B6FC8
	.incbin "baserom.gba", 0x0B704C, 0x0000004
	.4byte gUnk_080B6FC0
	.incbin "baserom.gba", 0x0B7054, 0x0000004
	.4byte gUnk_080B6FB8
	.incbin "baserom.gba", 0x0B705C, 0x000000C

gUnk_080B7068:: @ 080B7068
	.incbin "baserom.gba", 0x0B7068, 0x0000008

gUnk_080B7070:: @ 080B7070
	.incbin "baserom.gba", 0x0B7070, 0x0000008

gUnk_080B7078:: @ 080B7078
	.incbin "baserom.gba", 0x0B7078, 0x0000008

gUnk_080B7080:: @ 080B7080
	.incbin "baserom.gba", 0x0B7080, 0x0000008

gUnk_080B7088:: @ 080B7088
	.incbin "baserom.gba", 0x0B7088, 0x0000008

gUnk_080B7090:: @ 080B7090
	.incbin "baserom.gba", 0x0B7090, 0x0000008

gUnk_080B7098:: @ 080B7098
	.incbin "baserom.gba", 0x0B7098, 0x0000008

gUnk_080B70A0:: @ 080B70A0
	.incbin "baserom.gba", 0x0B70A0, 0x0000008

gUnk_080B70A8:: @ 080B70A8
	.incbin "baserom.gba", 0x0B70A8, 0x0000008

gUnk_080B70B0:: @ 080B70B0
	.incbin "baserom.gba", 0x0B70B0, 0x0000008

gUnk_080B70B8:: @ 080B70B8
	.incbin "baserom.gba", 0x0B70B8, 0x0000008

gUnk_080B70C0:: @ 080B70C0
	.incbin "baserom.gba", 0x0B70C0, 0x0000008

gUnk_080B70C8:: @ 080B70C8
	.incbin "baserom.gba", 0x0B70C8, 0x0000008

gUnk_080B70D0:: @ 080B70D0
	.incbin "baserom.gba", 0x0B70D0, 0x0000008

gUnk_080B70D8:: @ 080B70D8
	.incbin "baserom.gba", 0x0B70D8, 0x0000008

gUnk_080B70E0:: @ 080B70E0
	.incbin "baserom.gba", 0x0B70E0, 0x0000008

gUnk_080B70E8:: @ 080B70E8
	.4byte gUnk_080B7068
	.incbin "baserom.gba", 0x0B70EC, 0x0000004
	.4byte gUnk_080B7070
	.incbin "baserom.gba", 0x0B70F4, 0x0000004
	.4byte gUnk_080B7078
	.incbin "baserom.gba", 0x0B70FC, 0x0000004
	.4byte gUnk_080B7080
	.incbin "baserom.gba", 0x0B7104, 0x0000004
	.4byte gUnk_080B7088
	.incbin "baserom.gba", 0x0B710C, 0x0000004
	.4byte gUnk_080B7090
	.incbin "baserom.gba", 0x0B7114, 0x0000004
	.4byte gUnk_080B7098
	.incbin "baserom.gba", 0x0B711C, 0x0000004
	.4byte gUnk_080B70A0
	.incbin "baserom.gba", 0x0B7124, 0x0000004
	.4byte gUnk_080B70A8
	.incbin "baserom.gba", 0x0B712C, 0x0000004
	.4byte gUnk_080B70B0
	.incbin "baserom.gba", 0x0B7134, 0x0000004
	.4byte gUnk_080B70B8
	.incbin "baserom.gba", 0x0B713C, 0x0000004
	.4byte gUnk_080B70C0
	.incbin "baserom.gba", 0x0B7144, 0x0000004
	.4byte gUnk_080B70C8
	.incbin "baserom.gba", 0x0B714C, 0x0000004
	.4byte gUnk_080B70D0
	.incbin "baserom.gba", 0x0B7154, 0x0000004
	.4byte gUnk_080B70D8
	.incbin "baserom.gba", 0x0B715C, 0x0000004
	.4byte gUnk_080B70E0
	.incbin "baserom.gba", 0x0B7164, 0x000000C

gUnk_080B7170:: @ 080B7170
	.incbin "baserom.gba", 0x0B7170, 0x0000008

gUnk_080B7178:: @ 080B7178
	.incbin "baserom.gba", 0x0B7178, 0x0000008

gUnk_080B7180:: @ 080B7180
	.incbin "baserom.gba", 0x0B7180, 0x0000008

gUnk_080B7188:: @ 080B7188
	.incbin "baserom.gba", 0x0B7188, 0x0000008

gUnk_080B7190:: @ 080B7190
	.incbin "baserom.gba", 0x0B7190, 0x0000008

gUnk_080B7198:: @ 080B7198
	.incbin "baserom.gba", 0x0B7198, 0x0000008

gUnk_080B71A0:: @ 080B71A0
	.incbin "baserom.gba", 0x0B71A0, 0x0000008

gUnk_080B71A8:: @ 080B71A8
	.incbin "baserom.gba", 0x0B71A8, 0x0000008

gUnk_080B71B0:: @ 080B71B0
	.incbin "baserom.gba", 0x0B71B0, 0x0000008

gUnk_080B71B8:: @ 080B71B8
	.incbin "baserom.gba", 0x0B71B8, 0x0000008

gUnk_080B71C0:: @ 080B71C0
	.incbin "baserom.gba", 0x0B71C0, 0x0000008

gUnk_080B71C8:: @ 080B71C8
	.incbin "baserom.gba", 0x0B71C8, 0x0000008

gUnk_080B71D0:: @ 080B71D0
	.incbin "baserom.gba", 0x0B71D0, 0x0000008

gUnk_080B71D8:: @ 080B71D8
	.incbin "baserom.gba", 0x0B71D8, 0x0000008

gUnk_080B71E0:: @ 080B71E0
	.incbin "baserom.gba", 0x0B71E0, 0x0000008

gUnk_080B71E8:: @ 080B71E8
	.incbin "baserom.gba", 0x0B71E8, 0x0000008

gUnk_080B71F0:: @ 080B71F0
	.4byte gUnk_080B7170
	.incbin "baserom.gba", 0x0B71F4, 0x0000004
	.4byte gUnk_080B7178
	.incbin "baserom.gba", 0x0B71FC, 0x0000004
	.4byte gUnk_080B7180
	.incbin "baserom.gba", 0x0B7204, 0x0000004
	.4byte gUnk_080B7188
	.incbin "baserom.gba", 0x0B720C, 0x0000004
	.4byte gUnk_080B7190
	.incbin "baserom.gba", 0x0B7214, 0x0000004
	.4byte gUnk_080B7198
	.incbin "baserom.gba", 0x0B721C, 0x0000004
	.4byte gUnk_080B71A0
	.incbin "baserom.gba", 0x0B7224, 0x0000004
	.4byte gUnk_080B71A8
	.incbin "baserom.gba", 0x0B722C, 0x0000004
	.4byte gUnk_080B71B0
	.incbin "baserom.gba", 0x0B7234, 0x0000004
	.4byte gUnk_080B71B8
	.incbin "baserom.gba", 0x0B723C, 0x0000004
	.4byte gUnk_080B71C0
	.incbin "baserom.gba", 0x0B7244, 0x0000004
	.4byte gUnk_080B71C8
	.incbin "baserom.gba", 0x0B724C, 0x0000004
	.4byte gUnk_080B71D0
	.incbin "baserom.gba", 0x0B7254, 0x0000004
	.4byte gUnk_080B71D8
	.incbin "baserom.gba", 0x0B725C, 0x0000004
	.4byte gUnk_080B71E0
	.incbin "baserom.gba", 0x0B7264, 0x0000004
	.4byte gUnk_080B71E8
	.incbin "baserom.gba", 0x0B726C, 0x000000C

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
	.incbin "baserom.gba", 0x0B7400, 0x000000A

gUnk_080B740A:: @ 080B740A
	.incbin "baserom.gba", 0x0B740A, 0x0000012

gUnk_080B741C:: @ 080B741C
	.incbin "baserom.gba", 0x0B741C, 0x0000012

gUnk_080B742E:: @ 080B742E
	.incbin "baserom.gba", 0x0B742E, 0x000000C

gUnk_080B743A:: @ 080B743A
	.incbin "baserom.gba", 0x0B743A, 0x000000A

gUnk_080B7444:: @ 080B7444
	.incbin "baserom.gba", 0x0B7444, 0x000000C

gUnk_080B7450:: @ 080B7450
	.incbin "baserom.gba", 0x0B7450, 0x000000A

gUnk_080B745A:: @ 080B745A
	.incbin "baserom.gba", 0x0B745A, 0x0000006

gUnk_080B7460:: @ 080B7460
	.incbin "baserom.gba", 0x0B7460, 0x0000004

gUnk_080B7464:: @ 080B7464
	.incbin "baserom.gba", 0x0B7464, 0x000000A

gUnk_080B746E:: @ 080B746E
	.incbin "baserom.gba", 0x0B746E, 0x000000C

gUnk_080B747A:: @ 080B747A
	.incbin "baserom.gba", 0x0B747A, 0x0000006

gUnk_080B7480:: @ 080B7480
	.incbin "baserom.gba", 0x0B7480, 0x000000A

gUnk_080B748A:: @ 080B748A
	.incbin "baserom.gba", 0x0B748A, 0x0000004

gUnk_080B748E:: @ 080B748E
	.incbin "baserom.gba", 0x0B748E, 0x000000E

gUnk_080B749C:: @ 080B749C
	.incbin "baserom.gba", 0x0B749C, 0x000000E

gUnk_080B74AA:: @ 080B74AA
	.incbin "baserom.gba", 0x0B74AA, 0x000000E

gUnk_080B74B8:: @ 080B74B8
	.incbin "baserom.gba", 0x0B74B8, 0x000000E

gUnk_080B74C6:: @ 080B74C6
	.incbin "baserom.gba", 0x0B74C6, 0x000000E

gUnk_080B74D4:: @ 080B74D4
	.incbin "baserom.gba", 0x0B74D4, 0x0000008

gUnk_080B74DC:: @ 080B74DC
	.incbin "baserom.gba", 0x0B74DC, 0x0000008

gUnk_080B74E4:: @ 080B74E4
	.incbin "baserom.gba", 0x0B74E4, 0x0000008

gUnk_080B74EC:: @ 080B74EC
	.incbin "baserom.gba", 0x0B74EC, 0x0000008

gUnk_080B74F4:: @ 080B74F4
	.incbin "baserom.gba", 0x0B74F4, 0x000000C

gUnk_080B7500:: @ 080B7500
	.incbin "baserom.gba", 0x0B7500, 0x0000006

gUnk_080B7506:: @ 080B7506
	.incbin "baserom.gba", 0x0B7506, 0x000000C

gUnk_080B7512:: @ 080B7512
	.incbin "baserom.gba", 0x0B7512, 0x0000008

gUnk_080B751A:: @ 080B751A
	.incbin "baserom.gba", 0x0B751A, 0x000000A

gUnk_080B7524:: @ 080B7524
	.incbin "baserom.gba", 0x0B7524, 0x0000004

gUnk_080B7528:: @ 080B7528
	.incbin "baserom.gba", 0x0B7528, 0x0000010

gUnk_080B7538:: @ 080B7538
	.incbin "baserom.gba", 0x0B7538, 0x000000A

gUnk_080B7542:: @ 080B7542
	.incbin "baserom.gba", 0x0B7542, 0x0000004

gUnk_080B7546:: @ 080B7546
	.incbin "baserom.gba", 0x0B7546, 0x0000004

gUnk_080B754A:: @ 080B754A
	.incbin "baserom.gba", 0x0B754A, 0x0000004

gUnk_080B754E:: @ 080B754E
	.incbin "baserom.gba", 0x0B754E, 0x0000008

gUnk_080B7556:: @ 080B7556
	.incbin "baserom.gba", 0x0B7556, 0x0000006

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
	.incbin "baserom.gba", 0x0B77C0, 0x0000008
