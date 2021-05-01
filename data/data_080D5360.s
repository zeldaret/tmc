	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2


	.incbin "baserom.gba", 0x0D533C, 0x0000024
	
gUnk_080D5360:: @ 080D5360
	.incbin "baserom.gba", 0x0D5360, 0x0000040

gUnk_080D53A0:: @ 080D53A0
	.incbin "baserom.gba", 0x0D53A0, 0x0000010

gUnk_080D53B0:: @ 080D53B0
	.incbin "baserom.gba", 0x0D53B0, 0x0000008

Room_ArmosInteriors_RuinsEntranceNorth:: @ 080D53B8
	.4byte gUnk_080D5360
	.incbin "baserom.gba", 0x0D53BC, 0x0000004
	.4byte gUnk_080D53A0
	.4byte gUnk_080D53B0
	.incbin "baserom.gba", 0x0D53C8, 0x0000008
	.4byte sub_0804B3CC
	.4byte sub_0804B3D0

gUnk_080D53D8:: @ 080D53D8
	.incbin "baserom.gba", 0x0D53D8, 0x0000040

gUnk_080D5418:: @ 080D5418
	.incbin "baserom.gba", 0x0D5418, 0x0000010

gUnk_080D5428:: @ 080D5428
	.incbin "baserom.gba", 0x0D5428, 0x0000008

Room_ArmosInteriors_RuinsEntranceSouth:: @ 080D5430
	.4byte gUnk_080D53D8
	.4byte 00000000
	.4byte gUnk_080D5418
	.4byte gUnk_080D5428
	.4byte 00000000
	.4byte 00000000
	.4byte sub_0804B3DC
	.4byte sub_0804B3E0

gUnk_080D5450:: @ 080D5450
	.incbin "baserom.gba", 0x0D5450, 0x0000040

gUnk_080D5490:: @ 080D5490
	.incbin "baserom.gba", 0x0D5490, 0x0000010

gUnk_080D54A0:: @ 080D54A0
	.incbin "baserom.gba", 0x0D54A0, 0x0000008

Room_ArmosInteriors_RuinsLeft:: @ 080D54A8
	.4byte gUnk_080D5450
	.4byte 0x00000000
	.4byte gUnk_080D5490
	.4byte gUnk_080D54A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B3EC
	.4byte sub_0804B3F0

gUnk_080D54C8:: @ 080D54C8
	.incbin "baserom.gba", 0x0D54C8, 0x0000040

gUnk_080D5508:: @ 080D5508
	.incbin "baserom.gba", 0x0D5508, 0x0000010

gUnk_080D5518:: @ 080D5518
	.incbin "baserom.gba", 0x0D5518, 0x0000008

Room_ArmosInteriors_RuinsMiddleLeft:: @ 080D5520
	.4byte gUnk_080D54C8
	.4byte 0x00000000
	.4byte gUnk_080D5508
	.4byte gUnk_080D5518
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B3FC
	.4byte sub_0804B400

gUnk_080D5540:: @ 080D5540
	.incbin "baserom.gba", 0x0D5540, 0x0000040

gUnk_080D5580:: @ 080D5580
	.incbin "baserom.gba", 0x0D5580, 0x0000010

gUnk_080D5590:: @ 080D5590
	.incbin "baserom.gba", 0x0D5590, 0x0000008

Room_ArmosInteriors_RuinsMiddleRight:: @ 080D5598
	.4byte gUnk_080D5540
	.4byte 0x00000000
	.4byte gUnk_080D5580
	.4byte gUnk_080D5590
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B40C
	.4byte sub_0804B410

gUnk_080D55B8:: @ 080D55B8
	.incbin "baserom.gba", 0x0D55B8, 0x0000040

gUnk_080D55F8:: @ 080D55F8
	.incbin "baserom.gba", 0x0D55F8, 0x0000010

gUnk_080D5608:: @ 080D5608
	.incbin "baserom.gba", 0x0D5608, 0x0000008

Room_ArmosInteriors_RuinsRight:: @ 080D5610
	.4byte gUnk_080D55B8
	.4byte 0x00000000
	.4byte gUnk_080D55F8
	.4byte gUnk_080D5608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B41C
	.4byte sub_0804B420

gUnk_080D5630:: @ 080D5630
	.incbin "baserom.gba", 0x0D5630, 0x0000040

gUnk_080D5670:: @ 080D5670
	.incbin "baserom.gba", 0x0D5670, 0x0000010

gUnk_080D5680:: @ 080D5680
	.incbin "baserom.gba", 0x0D5680, 0x0000008

Room_ArmosInteriors_6:: @ 080D5688
	.4byte gUnk_080D5630
	.4byte 0x00000000
	.4byte gUnk_080D5670
	.4byte gUnk_080D5680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B42C
	.4byte sub_0804B430

gUnk_080D56A8:: @ 080D56A8
	.incbin "baserom.gba", 0x0D56A8, 0x0000040

gUnk_080D56E8:: @ 080D56E8
	.incbin "baserom.gba", 0x0D56E8, 0x0000010

gUnk_080D56F8:: @ 080D56F8
	.incbin "baserom.gba", 0x0D56F8, 0x0000008

Room_ArmosInteriors_RuinsGrassPath:: @ 080D5700
	.4byte gUnk_080D56A8
	.4byte 0x00000000
	.4byte gUnk_080D56E8
	.4byte gUnk_080D56F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B43C
	.4byte sub_0804B440

gUnk_080D5720:: @ 080D5720
	.incbin "baserom.gba", 0x0D5720, 0x0000040

gUnk_080D5760:: @ 080D5760
	.incbin "baserom.gba", 0x0D5760, 0x0000010

gUnk_080D5770:: @ 080D5770
	.incbin "baserom.gba", 0x0D5770, 0x0000008

Room_ArmosInteriors_8:: @ 080D5778
	.4byte gUnk_080D5720
	.4byte 0x00000000
	.4byte gUnk_080D5760
	.4byte gUnk_080D5770
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B44C
	.4byte sub_0804B450

gUnk_080D5798:: @ 080D5798
	.incbin "baserom.gba", 0x0D5798, 0x0000040

gUnk_080D57D8:: @ 080D57D8
	.incbin "baserom.gba", 0x0D57D8, 0x0000010

gUnk_080D57E8:: @ 080D57E8
	.incbin "baserom.gba", 0x0D57E8, 0x0000008

Room_ArmosInteriors_FortressOfWindsLeft:: @ 080D57F0
	.4byte gUnk_080D5798
	.4byte 0x00000000
	.4byte gUnk_080D57D8
	.4byte gUnk_080D57E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B45C
	.4byte sub_0804B460

gUnk_080D5810:: @ 080D5810
	.incbin "baserom.gba", 0x0D5810, 0x0000040

gUnk_080D5850:: @ 080D5850
	.incbin "baserom.gba", 0x0D5850, 0x0000010

gUnk_080D5860:: @ 080D5860
	.incbin "baserom.gba", 0x0D5860, 0x0000008

Room_ArmosInteriors_FortressOfWindsRight:: @ 080D5868
	.4byte gUnk_080D5810
	.4byte 0x00000000
	.4byte gUnk_080D5850
	.4byte gUnk_080D5860
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B478
	.4byte sub_0804B47C

gUnk_080D5888:: @ 080D5888
	.incbin "baserom.gba", 0x0D5888, 0x0000020

gUnk_080D58A8:: @ 080D58A8
	.incbin "baserom.gba", 0x0D58A8, 0x0000060

gUnk_080D5908:: @ 080D5908
	.incbin "baserom.gba", 0x0D5908, 0x0000030

gUnk_080D5938:: @ 080D5938
	.incbin "baserom.gba", 0x0D5938, 0x0000010

Room_CrenelMinishPaths_CrenelBean:: @ 080D5948
	.4byte gUnk_080D5888
	.4byte gUnk_080D58A8
	.4byte gUnk_080D5908
	.4byte gUnk_080D5938
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B494
	.4byte sub_0804B498

gUnk_080D5968:: @ 080D5968
	.incbin "baserom.gba", 0x0D5968, 0x0000010

gUnk_080D5978:: @ 080D5978
	.incbin "baserom.gba", 0x0D5978, 0x00000B0

gUnk_080D5A28:: @ 080D5A28
	.incbin "baserom.gba", 0x0D5A28, 0x0000070

gUnk_080D5A98:: @ 080D5A98
	.incbin "baserom.gba", 0x0D5A98, 0x0000010

Room_CrenelMinishPaths_CrenelWater:: @ 080D5AA8
	.4byte gUnk_080D5968
	.4byte gUnk_080D5978
	.4byte gUnk_080D5A28
	.4byte gUnk_080D5A98
	.4byte sub_0804B4B8
	.4byte 0x00000000
	.4byte sub_0804B4A8
	.4byte sub_0804B4AC

gUnk_080D5AC8:: @ 080D5AC8
	.incbin "baserom.gba", 0x0D5AC8, 0x0000020

gUnk_080D5AE8:: @ 080D5AE8
	.incbin "baserom.gba", 0x0D5AE8, 0x0000030

gUnk_080D5B18:: @ 080D5B18
	.incbin "baserom.gba", 0x0D5B18, 0x0000010

gUnk_080D5B28:: @ 080D5B28
	.incbin "baserom.gba", 0x0D5B28, 0x0000010

Room_CrenelMinishPaths_Rainfall:: @ 080D5B38
	.4byte gUnk_080D5AC8
	.4byte gUnk_080D5AE8
	.4byte gUnk_080D5B18
	.4byte gUnk_080D5B28
	.4byte sub_0804B4D4
	.4byte 0x00000000
	.4byte sub_0804B4C4
	.4byte sub_0804B4C8

gUnk_080D5B58:: @ 080D5B58
	.incbin "baserom.gba", 0x0D5B58, 0x0000010

gUnk_080D5B68:: @ 080D5B68
	.incbin "baserom.gba", 0x0D5B68, 0x0000030

gUnk_080D5B98:: @ 080D5B98
	.incbin "baserom.gba", 0x0D5B98, 0x0000090

gUnk_080D5C28:: @ 080D5C28
	.incbin "baserom.gba", 0x0D5C28, 0x0000010

Room_CrenelMinishPaths_MelarisMine:: @ 080D5C38
	.4byte gUnk_080D5B58
	.4byte gUnk_080D5B68
	.4byte gUnk_080D5B98
	.4byte gUnk_080D5C28
	.4byte sub_0804B500
	.4byte 0x00000000
	.4byte sub_0804B4E0
	.4byte sub_0804B4E4

gUnk_080D5C58:: @ 080D5C58
	.incbin "baserom.gba", 0x0D5C58, 0x0000010

gUnk_080D5C68:: @ 080D5C68
	.incbin "baserom.gba", 0x0D5C68, 0x0000090

gUnk_080D5CF8:: @ 080D5CF8
	.incbin "baserom.gba", 0x0D5CF8, 0x0000010

gUnk_080D5D08:: @ 080D5D08
	.incbin "baserom.gba", 0x0D5D08, 0x0000010

Room_MinishPaths1_ToMinishVillage:: @ 080D5D18
	.4byte gUnk_080D5C58
	.4byte gUnk_080D5C68
	.4byte gUnk_080D5CF8
	.4byte gUnk_080D5D08
	.4byte sub_0804B51C
	.4byte 0x00000000
	.4byte sub_0804B50C
	.4byte sub_0804B510

gUnk_080D5D38:: @ 080D5D38
	.incbin "baserom.gba", 0x0D5D38, 0x0000030

gUnk_080D5D68:: @ 080D5D68
	.incbin "baserom.gba", 0x0D5D68, 0x0000050

gUnk_080D5DB8:: @ 080D5DB8
	.incbin "baserom.gba", 0x0D5DB8, 0x0000010

gUnk_080D5DC8:: @ 080D5DC8
	.incbin "baserom.gba", 0x0D5DC8, 0x0000010

Room_MinishPaths1_CastorWilds:: @ 080D5DD8
	.4byte gUnk_080D5D38
	.4byte gUnk_080D5D68
	.4byte gUnk_080D5DB8
	.4byte gUnk_080D5DC8
	.4byte sub_0804B538
	.4byte 0x00000000
	.4byte sub_0804B528
	.4byte sub_0804B52C

gUnk_080D5DF8:: @ 080D5DF8
	.incbin "baserom.gba", 0x0D5DF8, 0x0000020

gUnk_080D5E18:: @ 080D5E18
	.incbin "baserom.gba", 0x0D5E18, 0x0000110

gUnk_080D5F28:: @ 080D5F28
	.incbin "baserom.gba", 0x0D5F28, 0x0000020

gUnk_080D5F48:: @ 080D5F48
	.incbin "baserom.gba", 0x0D5F48, 0x0000028

Room_MinishPaths1_HyruleTown:: @ 080D5F70
	.4byte gUnk_080D5DF8
	.4byte gUnk_080D5E18
	.4byte gUnk_080D5F28
	.4byte gUnk_080D5F48
	.4byte sub_0804B554
	.4byte 0x00000000
	.4byte sub_0804B544
	.4byte sub_0804B548

gUnk_080D5F90:: @ 080D5F90
	.incbin "baserom.gba", 0x0D5F90, 0x0000020

gUnk_080D5FB0:: @ 080D5FB0
	.incbin "baserom.gba", 0x0D5FB0, 0x0000060

gUnk_080D6010:: @ 080D6010
	.incbin "baserom.gba", 0x0D6010, 0x0000060

gUnk_080D6070:: @ 080D6070
	.incbin "baserom.gba", 0x0D6070, 0x0000008

Room_MinishPaths1_LonLonRanch:: @ 080D6078
	.4byte gUnk_080D5F90
	.4byte gUnk_080D5FB0
	.4byte gUnk_080D6010
	.4byte gUnk_080D6070
	.4byte sub_0804B570
	.4byte 0x00000000
	.4byte sub_0804B560
	.4byte sub_0804B564

gUnk_080D6098:: @ 080D6098
	.incbin "baserom.gba", 0x0D6098, 0x0000030

gUnk_080D60C8:: @ 080D60C8
	.incbin "baserom.gba", 0x0D60C8, 0x0000070

gUnk_080D6138:: @ 080D6138
	.incbin "baserom.gba", 0x0D6138, 0x0000060

gUnk_080D6198:: @ 080D6198
	.incbin "baserom.gba", 0x0D6198, 0x0000008

Room_MinishPaths1_MayorsCabin:: @ 080D61A0
	.4byte gUnk_080D6098
	.4byte gUnk_080D60C8
	.4byte 0x00000000
	.4byte gUnk_080D6198
	.4byte sub_0804B5AC
	.4byte 0x00000000
	.4byte sub_0804B57C
	.4byte sub_0804B580

gUnk_080D61C0:: @ 080D61C0
	.incbin "baserom.gba", 0x0D61C0, 0x000000C
	.4byte script_0800EA54
	.incbin "baserom.gba", 0x0D61D0, 0x0000040

gUnk_080D6210:: @ 080D6210
	.incbin "baserom.gba", 0x0D6210, 0x0000050

gUnk_080D6260:: @ 080D6260
	.incbin "baserom.gba", 0x0D6260, 0x0000070

gUnk_080D62D0:: @ 080D62D0
	.incbin "baserom.gba", 0x0D62D0, 0x0000010

gUnk_080D62E0:: @ 080D62E0
	.incbin "baserom.gba", 0x0D62E0, 0x0000008

gUnk_080D62E8:: @ 080D62E8
	.incbin "baserom.gba", 0x0D62E8, 0x0000014

Room_HouseInteriors1_Mayor:: @ 080D62FC
	.4byte gUnk_080D61C0
	.4byte gUnk_080D6260
	.4byte gUnk_080D62D0
	.4byte gUnk_080D62E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B5B8
	.4byte sub_0804B5BC
	.4byte gUnk_080D62E8

gUnk_080D6320:: @ 080D6320
	.incbin "baserom.gba", 0x0D6320, 0x000000C
	.4byte script_08010794
	.incbin "baserom.gba", 0x0D6330, 0x0000010

gUnk_080D6340:: @ 080D6340
	.incbin "baserom.gba", 0x0D6340, 0x000000C
	.4byte script_08010734
	.incbin "baserom.gba", 0x0D6350, 0x0000010

gUnk_080D6360:: @ 080D6360
	.incbin "baserom.gba", 0x0D6360, 0x0000020

gUnk_080D6380:: @ 080D6380
	.incbin "baserom.gba", 0x0D6380, 0x0000020

gUnk_080D63A0:: @ 080D63A0
	.incbin "baserom.gba", 0x0D63A0, 0x0000020

gUnk_080D63C0:: @ 080D63C0
	.incbin "baserom.gba", 0x0D63C0, 0x0000020

gUnk_080D63E0:: @ 080D63E0
	.incbin "baserom.gba", 0x0D63E0, 0x0000020

gUnk_080D6400:: @ 080D6400
	.incbin "baserom.gba", 0x0D6400, 0x0000020

gUnk_080D6420:: @ 080D6420
	.incbin "baserom.gba", 0x0D6420, 0x0000020

gUnk_080D6440:: @ 080D6440
	.incbin "baserom.gba", 0x0D6440, 0x0000020

gUnk_080D6460:: @ 080D6460
	.incbin "baserom.gba", 0x0D6460, 0x0000080

gUnk_080D64E0:: @ 080D64E0
	.incbin "baserom.gba", 0x0D64E0, 0x0000010

gUnk_080D64F0:: @ 080D64F0
	.incbin "baserom.gba", 0x0D64F0, 0x0000008

gUnk_080D64F8:: @ 080D64F8
	.incbin "baserom.gba", 0x0D64F8, 0x0000010

gUnk_080D6508:: @ 080D6508
	.incbin "baserom.gba", 0x0D6508, 0x0000010

Room_HouseInteriors1_PostOffice:: @ 080D6518
	.4byte gUnk_080D6320
	.4byte gUnk_080D6460
	.4byte gUnk_080D64E0
	.4byte gUnk_080D64F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B5D8
	.4byte sub_0804B5DC

gUnk_080D6538:: @ 080D6538
	.incbin "baserom.gba", 0x0D6538, 0x0000020

gUnk_080D6558:: @ 080D6558
	.incbin "baserom.gba", 0x0D6558, 0x0000020

gUnk_080D6578:: @ 080D6578
	.incbin "baserom.gba", 0x0D6578, 0x000000C
	.4byte script_0800ED5C
	.incbin "baserom.gba", 0x0D6588, 0x0000010

gUnk_080D6598:: @ 080D6598
	.incbin "baserom.gba", 0x0D6598, 0x0000080

gUnk_080D6618:: @ 080D6618
	.incbin "baserom.gba", 0x0D6618, 0x0000020

gUnk_080D6638:: @ 080D6638
	.incbin "baserom.gba", 0x0D6638, 0x0000020

gUnk_080D6658:: @ 080D6658
	.incbin "baserom.gba", 0x0D6658, 0x0000010

gUnk_080D6668:: @ 080D6668
	.incbin "baserom.gba", 0x0D6668, 0x0000008

gUnk_080D6670:: @ 080D6670
	.incbin "baserom.gba", 0x0D6670, 0x0000014

gUnk_080D6684:: @ 080D6684
	.incbin "baserom.gba", 0x0D6684, 0x0000010

gUnk_080D6694:: @ 080D6694
	.incbin "baserom.gba", 0x0D6694, 0x0000014

Room_HouseInteriors1_Library2F:: @ 080D66A8
	.4byte gUnk_080D6538
	.4byte gUnk_080D6598
	.4byte gUnk_080D6658
	.4byte gUnk_080D6668
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B6EC
	.4byte sub_0804B6F0
	.4byte gUnk_080D6670
	.4byte gUnk_080D6684
	.4byte gUnk_080D6694

gUnk_080D66D4:: @ 080D66D4
	.incbin "baserom.gba", 0x0D66D4, 0x000000C
	.4byte script_08008B5C
	.incbin "baserom.gba", 0x0D66E4, 0x0000010

gUnk_080D66F4:: @ 080D66F4
	.incbin "baserom.gba", 0x0D66F4, 0x000000C
	.4byte script_08008B90
	.incbin "baserom.gba", 0x0D6704, 0x0000010

gUnk_080D6714:: @ 080D6714
	.incbin "baserom.gba", 0x0D6714, 0x000000C
	.4byte script_08008D8C
	.incbin "baserom.gba", 0x0D6724, 0x0000010

gUnk_080D6734:: @ 080D6734
	.incbin "baserom.gba", 0x0D6734, 0x000000C
	.4byte script_08008BC0
	.incbin "baserom.gba", 0x0D6744, 0x0000040

gUnk_080D6784:: @ 080D6784
	.incbin "baserom.gba", 0x0D6784, 0x000000C
	.4byte script_08008D50
	.incbin "baserom.gba", 0x0D6794, 0x000000C
	.4byte script_08008C64
	.incbin "baserom.gba", 0x0D67A4, 0x0000010

gUnk_080D67B4:: @ 080D67B4
	.incbin "baserom.gba", 0x0D67B4, 0x00000F0

gUnk_080D68A4:: @ 080D68A4
	.incbin "baserom.gba", 0x0D68A4, 0x0000010

gUnk_080D68B4:: @ 080D68B4
	.incbin "baserom.gba", 0x0D68B4, 0x0000018

Room_HouseInteriors1_Library1F:: @ 080D68CC
	.4byte gUnk_080D66D4
	.4byte gUnk_080D67B4
	.4byte gUnk_080D68A4
	.4byte gUnk_080D68B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B734
	.4byte sub_0804B738
	.4byte gUnk_080D66F4
	.4byte gUnk_080D6734

gUnk_080D68F4:: @ 080D68F4
	.incbin "baserom.gba", 0x0D68F4, 0x000000C
	.4byte script_0800E824
	.incbin "baserom.gba", 0x0D6904, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0D6914, 0x0000010

gUnk_080D6924:: @ 080D6924
	.4byte 0x07074F07
	.4byte 0x00000400
	.4byte 0x003800E8
	.4byte script_080103B0
	.4byte 0x08074F07
	.4byte 0x00000400
	.4byte 0x006800E8
	.4byte script_080103B0
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

gUnk_080D6954:: @ 080D6954
	.incbin "baserom.gba", 0x0D6954, 0x0000050

gUnk_080D69A4:: @ 080D69A4
	.incbin "baserom.gba", 0x0D69A4, 0x0000010

gUnk_080D69B4:: @ 080D69B4
	.incbin "baserom.gba", 0x0D69B4, 0x0000008

Room_HouseInteriors1_Inn1F:: @ 080D69BC
	.4byte gUnk_080D68F4
	.4byte gUnk_080D6954
	.4byte gUnk_080D69A4
	.4byte gUnk_080D69B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B788
	.4byte sub_0804B78C

gUnk_080D69DC:: @ 080D69DC
	.incbin "baserom.gba", 0x0D69DC, 0x0000010

gUnk_080D69EC:: @ 080D69EC
	.incbin "baserom.gba", 0x0D69EC, 0x0000040

gUnk_080D6A2C:: @ 080D6A2C
	.incbin "baserom.gba", 0x0D6A2C, 0x0000010

gUnk_080D6A3C:: @ 080D6A3C
	.incbin "baserom.gba", 0x0D6A3C, 0x0000008

gUnk_080D6A44:: @ 080D6A44
	.incbin "baserom.gba", 0x0D6A44, 0x0000010

gUnk_080D6A54:: @ 080D6A54
	.incbin "baserom.gba", 0x0D6A54, 0x0000010

gUnk_080D6A64:: @ 080D6A64
	.incbin "baserom.gba", 0x0D6A64, 0x0000010

gUnk_080D6A74:: @ 080D6A74
	.4byte gUnk_080D6A44
	.4byte gUnk_080D6A54
	.4byte gUnk_080D6A64

Room_HouseInteriors1_InnWestRoom:: @ 080D6A80
	.4byte gUnk_080D69DC
	.4byte gUnk_080D69EC
	.4byte gUnk_080D6A2C
	.4byte gUnk_080D6A3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B7A8
	.4byte sub_0804B7E8

gUnk_080D6AA0:: @ 080D6AA0
	.incbin "baserom.gba", 0x0D6AA0, 0x0000010

gUnk_080D6AB0:: @ 080D6AB0
	.incbin "baserom.gba", 0x0D6AB0, 0x0000030

gUnk_080D6AE0:: @ 080D6AE0
	.incbin "baserom.gba", 0x0D6AE0, 0x0000010

gUnk_080D6AF0:: @ 080D6AF0
	.incbin "baserom.gba", 0x0D6AF0, 0x0000008

gUnk_080D6AF8:: @ 080D6AF8
	.incbin "baserom.gba", 0x0D6AF8, 0x0000010

gUnk_080D6B08:: @ 080D6B08
	.incbin "baserom.gba", 0x0D6B08, 0x0000010

gUnk_080D6B18:: @ 080D6B18
	.4byte gUnk_080D6AF8
	.4byte gUnk_080D6B08

Room_HouseInteriors1_InnMiddleRoom:: @ 080D6B20
	.4byte gUnk_080D6AA0
	.4byte gUnk_080D6AB0
	.4byte gUnk_080D6AE0
	.4byte gUnk_080D6AF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B82C
	.4byte sub_0804B86C

gUnk_080D6B40:: @ 080D6B40
	.incbin "baserom.gba", 0x0D6B40, 0x0000010

gUnk_080D6B50:: @ 080D6B50
	.incbin "baserom.gba", 0x0D6B50, 0x0000020

gUnk_080D6B70:: @ 080D6B70
	.incbin "baserom.gba", 0x0D6B70, 0x0000010

gUnk_080D6B80:: @ 080D6B80
	.incbin "baserom.gba", 0x0D6B80, 0x0000008

gUnk_080D6B88:: @ 080D6B88
	.incbin "baserom.gba", 0x0D6B88, 0x0000010

gUnk_080D6B98:: @ 080D6B98
	.incbin "baserom.gba", 0x0D6B98, 0x0000010

gUnk_080D6BA8:: @ 080D6BA8
	.incbin "baserom.gba", 0x0D6BA8, 0x0000010

gUnk_080D6BB8:: @ 080D6BB8
	.4byte gUnk_080D6B88
	.4byte gUnk_080D6B98
	.4byte gUnk_080D6BA8

Room_HouseInteriors1_InnEastRoom:: @ 080D6BC4
	.4byte gUnk_080D6B40
	.4byte gUnk_080D6B50
	.4byte gUnk_080D6B70
	.4byte gUnk_080D6B80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B8B0
	.4byte sub_0804B8F0

gUnk_080D6BE4:: @ 080D6BE4
	.incbin "baserom.gba", 0x0D6BE4, 0x0000010

UpperInn_Oracles:: @ 080D6BF4
	.incbin "baserom.gba", 0x0D6BF4, 0x000000C
	.4byte script_08011C7C
	.incbin "baserom.gba", 0x0D6C04, 0x000000C
	.4byte script_08011D28
	.incbin "baserom.gba", 0x0D6C14, 0x000000C
	.4byte script_08011DD4
	.incbin "baserom.gba", 0x0D6C24, 0x0000010

UpperInn_NoFarore:: @ 080D6C34
	.incbin "baserom.gba", 0x0D6C34, 0x000000C
	.4byte script_08011E80
	.incbin "baserom.gba", 0x0D6C44, 0x000000C
	.4byte script_08011F0C
	.incbin "baserom.gba", 0x0D6C54, 0x0000010

UpperInn_NoDin:: @ 080D6C64
	.incbin "baserom.gba", 0x0D6C64, 0x000000C
	.4byte script_08011F0C
	.incbin "baserom.gba", 0x0D6C74, 0x000000C
	.4byte script_08011F98
	.incbin "baserom.gba", 0x0D6C84, 0x0000010

UpperInn_NoNayru:: @ 080D6C94
	.incbin "baserom.gba", 0x0D6C94, 0x000000C
	.4byte script_08011E80
	.incbin "baserom.gba", 0x0D6CA4, 0x000000C
	.4byte script_08011F98
	.incbin "baserom.gba", 0x0D6CB4, 0x0000010

UpperInn_Din:: @ 080D6CC4
	.incbin "baserom.gba", 0x0D6CC4, 0x000000C
	.4byte script_080121C8
	.incbin "baserom.gba", 0x0D6CD4, 0x0000010

UpperInn_Nayru:: @ 080D6CE4
	.incbin "baserom.gba", 0x0D6CE4, 0x000000C
	.4byte script_08012200
	.incbin "baserom.gba", 0x0D6CF4, 0x0000010

UpperInn_Farore:: @ 080D6D04
	.incbin "baserom.gba", 0x0D6D04, 0x000000C
	.4byte script_08012238
	.incbin "baserom.gba", 0x0D6D14, 0x0000010

gUnk_080D6D24:: @ 080D6D24
	.incbin "baserom.gba", 0x0D6D24, 0x0000060

gUnk_080D6D84:: @ 080D6D84
	.incbin "baserom.gba", 0x0D6D84, 0x0000010

gUnk_080D6D94:: @ 080D6D94
	.incbin "baserom.gba", 0x0D6D94, 0x0000008

Room_HouseInteriors1_InnWest2F:: @ 080D6D9C
	.4byte gUnk_080D6BE4
	.4byte gUnk_080D6D24
	.4byte gUnk_080D6D84
	.4byte gUnk_080D6D94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B934
	.4byte sub_0804B938

gUnk_080D6DBC:: @ 080D6DBC
	.incbin "baserom.gba", 0x0D6DBC, 0x0000020

gUnk_080D6DDC:: @ 080D6DDC
	.incbin "baserom.gba", 0x0D6DDC, 0x0000008
	.4byte script_0800ED04
	.incbin "baserom.gba", 0x0D6DE8, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0D6DF8, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0D6E08, 0x000000C
	.4byte script_0800D59C
	.incbin "baserom.gba", 0x0D6E18, 0x000000C
	.4byte script_0800D59C
	.incbin "baserom.gba", 0x0D6E28, 0x000000C
	.4byte script_0800D59C
	.incbin "baserom.gba", 0x0D6E38, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0D6E48, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0D6E58, 0x0000014

gUnk_080D6E6C:: @ 080D6E6C
	.incbin "baserom.gba", 0x0D6E6C, 0x00000D0

gUnk_080D6F3C:: @ 080D6F3C
	.incbin "baserom.gba", 0x0D6F3C, 0x0000010

gUnk_080D6F4C:: @ 080D6F4C
	.incbin "baserom.gba", 0x0D6F4C, 0x0000008

Room_HouseInteriors1_InnEast2F:: @ 080D6F54
	.4byte gUnk_080D6DBC
	.4byte gUnk_080D6E6C
	.4byte gUnk_080D6F3C
	.4byte gUnk_080D6F4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804B9F8
	.4byte nullsub_176
	.4byte gUnk_080D6DDC

gUnk_080D6F78:: @ 080D6F78
	.incbin "baserom.gba", 0x0D6F78, 0x0000020

gUnk_080D6F98:: @ 080D6F98
	.incbin "baserom.gba", 0x0D6F98, 0x0000030

gUnk_080D6FC8:: @ 080D6FC8
	.incbin "baserom.gba", 0x0D6FC8, 0x0000010

gUnk_080D6FD8:: @ 080D6FD8
	.incbin "baserom.gba", 0x0D6FD8, 0x0000008

gUnk_080D6FE0:: @ 080D6FE0
	.incbin "baserom.gba", 0x0D6FE0, 0x0000014

Room_HouseInteriors1_InnMinishHeartPiece:: @ 080D6FF4
	.4byte gUnk_080D6F78
	.4byte gUnk_080D6F98
	.4byte gUnk_080D6FC8
	.4byte gUnk_080D6FD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BA00
	.4byte nullsub_177
	.4byte gUnk_080D6FE0

gUnk_080D7018:: @ 080D7018
	.incbin "baserom.gba", 0x0D7018, 0x0000020

gUnk_080D7038:: @ 080D7038
	.incbin "baserom.gba", 0x0D7038, 0x000000C
	.4byte script_0800E7F4
	.incbin "baserom.gba", 0x0D7048, 0x0000010

gUnk_080D7058:: @ 080D7058
	.incbin "baserom.gba", 0x0D7058, 0x0000090

gUnk_080D70E8:: @ 080D70E8
	.incbin "baserom.gba", 0x0D70E8, 0x0000010

gUnk_080D70F8:: @ 080D70F8
	.incbin "baserom.gba", 0x0D70F8, 0x0000008

Room_HouseInteriors1_SchoolWest:: @ 080D7100
	.4byte gUnk_080D7018
	.4byte gUnk_080D7058
	.4byte gUnk_080D70E8
	.4byte gUnk_080D70F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BA08
	.4byte sub_0804BA0C

gUnk_080D7120:: @ 080D7120
	.incbin "baserom.gba", 0x0D7120, 0x0000020

gUnk_080D7140:: @ 080D7140
	.incbin "baserom.gba", 0x0D7140, 0x000000C
	.4byte script_08010644
	.incbin "baserom.gba", 0x0D7150, 0x000000C
	.4byte script_08010644
	.incbin "baserom.gba", 0x0D7160, 0x0000010

gUnk_080D7170:: @ 080D7170
	.incbin "baserom.gba", 0x0D7170, 0x000000C
	.4byte script_0801061C
	.incbin "baserom.gba", 0x0D7180, 0x000000C
	.4byte script_08010650
	.incbin "baserom.gba", 0x0D7190, 0x0000010

gUnk_080D71A0:: @ 080D71A0
	.incbin "baserom.gba", 0x0D71A0, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0D71B0, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0D71C0, 0x0000010

gUnk_080D71D0:: @ 080D71D0
	.incbin "baserom.gba", 0x0D71D0, 0x000000C
	.4byte script_0800E7F4
	.incbin "baserom.gba", 0x0D71E0, 0x0000010

gUnk_080D71F0:: @ 080D71F0
	.incbin "baserom.gba", 0x0D71F0, 0x000000C
	.4byte script_0800E7F4
	.incbin "baserom.gba", 0x0D7200, 0x000000C
	.4byte script_0800E7F4
	.incbin "baserom.gba", 0x0D7210, 0x0000010

gUnk_080D7220:: @ 080D7220
	.incbin "baserom.gba", 0x0D7220, 0x0000050

gUnk_080D7270:: @ 080D7270
	.incbin "baserom.gba", 0x0D7270, 0x0000010

gUnk_080D7280:: @ 080D7280
	.incbin "baserom.gba", 0x0D7280, 0x0000008

gUnk_080D7288:: @ 080D7288
	.incbin "baserom.gba", 0x0D7288, 0x0000014

gUnk_080D729C:: @ 080D729C
	.incbin "baserom.gba", 0x0D729C, 0x0000014

Room_HouseInteriors1_SchoolEast:: @ 080D72B0
	.4byte gUnk_080D7120
	.4byte gUnk_080D7220
	.4byte gUnk_080D7270
	.4byte gUnk_080D7280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BA40
	.4byte sub_0804BA44
	.4byte gUnk_080D7288
	.4byte gUnk_080D729C

gUnk_080D72D8:: @ 080D72D8
	.incbin "baserom.gba", 0x0D72D8, 0x000000C
	.4byte script_08008DC0
	.incbin "baserom.gba", 0x0D72E8, 0x000000C
	.4byte script_08008DC0
	.incbin "baserom.gba", 0x0D72F8, 0x0000010

gUnk_080D7308:: @ 080D7308
	.incbin "baserom.gba", 0x0D7308, 0x0000020

gUnk_080D7328:: @ 080D7328
	.incbin "baserom.gba", 0x0D7328, 0x0000020

gUnk_080D7348:: @ 080D7348
	.incbin "baserom.gba", 0x0D7348, 0x000000C
	.4byte script_0800A734
	.incbin "baserom.gba", 0x0D7358, 0x0000010

gUnk_080D7368:: @ 080D7368
	.incbin "baserom.gba", 0x0D7368, 0x0000010

gUnk_080D7378:: @ 080D7378
	.incbin "baserom.gba", 0x0D7378, 0x0000008

gUnk_080D7380:: @ 080D7380
	.4byte gUnk_080D72D8
	.4byte gUnk_080D7308
	.4byte gUnk_080D7368
	.4byte gUnk_080D7378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BA9C
	.4byte sub_0804BAC0

gUnk_080D73A0:: @ 080D73A0
	.incbin "baserom.gba", 0x0D73A0, 0x0000010

gUnk_080D73B0:: @ 080D73B0
	.incbin "baserom.gba", 0x0D73B0, 0x0000030

gUnk_080D73E0:: @ 080D73E0
	.incbin "baserom.gba", 0x0D73E0, 0x0000030

gUnk_080D7410:: @ 080D7410
	.incbin "baserom.gba", 0x0D7410, 0x000000C
	.4byte script_0800A764
	.incbin "baserom.gba", 0x0D7420, 0x000000C
	.4byte script_0800A7E4
	.incbin "baserom.gba", 0x0D7430, 0x000000C
	.4byte script_0800A820
	.incbin "baserom.gba", 0x0D7440, 0x000000C
	.4byte script_0800A85C
	.incbin "baserom.gba", 0x0D7450, 0x000000C
	.4byte script_0800A898
	.incbin "baserom.gba", 0x0D7460, 0x000000C
	.4byte script_0800A8D4
	.incbin "baserom.gba", 0x0D7470, 0x0000010

gUnk_080D7480:: @ 080D7480
	.incbin "baserom.gba", 0x0D7480, 0x0000010

gUnk_080D7490:: @ 080D7490
	.incbin "baserom.gba", 0x0D7490, 0x0000008

gUnk_080D7498:: @ 080D7498
	.4byte gUnk_080D73A0
	.4byte 0x00000000
	.4byte gUnk_080D7480
	.4byte gUnk_080D7490
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BB18
	.4byte sub_0804BB3C

gUnk_080D74B8:: @ 080D74B8
	.incbin "baserom.gba", 0x0D74B8, 0x0000010

gUnk_080D74C8:: @ 080D74C8
	.incbin "baserom.gba", 0x0D74C8, 0x000000C
	.4byte script_08008E08
	.incbin "baserom.gba", 0x0D74D8, 0x000000C
	.4byte script_08008FFC
	.incbin "baserom.gba", 0x0D74E8, 0x000000C
	.4byte script_08008FFC
	.incbin "baserom.gba", 0x0D74F8, 0x000000C
	.4byte script_08008FFC
	.incbin "baserom.gba", 0x0D7508, 0x000000C
	.4byte script_08008FFC
	.incbin "baserom.gba", 0x0D7518, 0x000000C
	.4byte script_08008FFC
	.incbin "baserom.gba", 0x0D7528, 0x000000C
	.4byte script_08008FFC
	.incbin "baserom.gba", 0x0D7538, 0x000000C
	.4byte script_08009080
	.incbin "baserom.gba", 0x0D7548, 0x000000C
	.4byte script_0800903C
	.incbin "baserom.gba", 0x0D7558, 0x000000C
	.4byte script_08009198
	.incbin "baserom.gba", 0x0D7568, 0x000000C
	.4byte script_080092F0
	.incbin "baserom.gba", 0x0D7578, 0x0000010

gUnk_080D7588:: @ 080D7588
	.incbin "baserom.gba", 0x0D7588, 0x000000C
	.4byte script_08009274
	.incbin "baserom.gba", 0x0D7598, 0x000000C
	.4byte script_080092D4
	.incbin "baserom.gba", 0x0D75A8, 0x000000C
	.4byte script_080092A8
	.incbin "baserom.gba", 0x0D75B8, 0x000000C
	.4byte script_080092F0
	.incbin "baserom.gba", 0x0D75C8, 0x0000010

gUnk_080D75D8:: @ 080D75D8
	.incbin "baserom.gba", 0x0D75D8, 0x000000C
	.4byte script_08009274
	.incbin "baserom.gba", 0x0D75E8, 0x000000C
	.4byte script_080092D4
	.incbin "baserom.gba", 0x0D75F8, 0x000000C
	.4byte script_080092F0
	.incbin "baserom.gba", 0x0D7608, 0x0000010

gUnk_080D7618:: @ 080D7618
	.incbin "baserom.gba", 0x0D7618, 0x000000C
	.4byte script_0800A6D4
	.incbin "baserom.gba", 0x0D7628, 0x0000010

gUnk_080D7638:: @ 080D7638
	.incbin "baserom.gba", 0x0D7638, 0x0000010

gUnk_080D7648:: @ 080D7648
	.incbin "baserom.gba", 0x0D7648, 0x0000008

gUnk_080D7650:: @ 080D7650
	.4byte gUnk_080D74B8
	.4byte 0x00000000
	.4byte gUnk_080D7638
	.4byte gUnk_080D7648
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BB9C
	.4byte sub_0804BBA0

gUnk_080D7670:: @ 080D7670
	.incbin "baserom.gba", 0x0D7670, 0x0000020

gUnk_080D7690:: @ 080D7690
	.incbin "baserom.gba", 0x0D7690, 0x0000040

gUnk_080D76D0:: @ 080D76D0
	.incbin "baserom.gba", 0x0D76D0, 0x0000010

gUnk_080D76E0:: @ 080D76E0
	.incbin "baserom.gba", 0x0D76E0, 0x0000008

gUnk_080D76E8:: @ 080D76E8
	.4byte gUnk_080D7670
	.4byte 0x00000000
	.4byte gUnk_080D76D0
	.4byte gUnk_080D76E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BC34
	.4byte sub_0804bc38
	.4byte gUnk_080D7690

gUnk_080D770C:: @ 080D770C
	.incbin "baserom.gba", 0x0D770C, 0x000000C
	.4byte script_0800B8B8
	.incbin "baserom.gba", 0x0D771C, 0x0000010

gUnk_080D772C:: @ 080D772C
	.incbin "baserom.gba", 0x0D772C, 0x0000010

gUnk_080D773C:: @ 080D773C
	.incbin "baserom.gba", 0x0D773C, 0x0000008

gUnk_080D7744:: @ 080D7744
	.4byte gUnk_080D770C
	.4byte 0x00000000
	.4byte gUnk_080D772C
	.4byte gUnk_080D773C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BC50
	.4byte sub_0804BC70

gUnk_080D7764:: @ 080D7764
	.incbin "baserom.gba", 0x0D7764, 0x0000010

gUnk_080D7774:: @ 080D7774
	.incbin "baserom.gba", 0x0D7774, 0x0000010

gUnk_080D7784:: @ 080D7784
	.incbin "baserom.gba", 0x0D7784, 0x0000008

gUnk_080D778C:: @ 080D778C
	.4byte gUnk_080D7764
	.4byte 0x00000000
	.4byte gUnk_080D7774
	.4byte gUnk_080D7784
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BCEC
	.4byte nullsub_178

gUnk_080D77AC:: @ 080D77AC
	.incbin "baserom.gba", 0x0D77AC, 0x0000040

gUnk_080D77EC:: @ 080D77EC
	.incbin "baserom.gba", 0x0D77EC, 0x0000010

gUnk_080D77FC:: @ 080D77FC
	.incbin "baserom.gba", 0x0D77FC, 0x0000008

Area_87_Main:: @ 080D7804
	.4byte gUnk_080D77AC
	.4byte 0x00000000
	.4byte gUnk_080D77EC
	.4byte gUnk_080D77FC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BCF4
	.4byte nullsub_179

gUnk_080D7824:: @ 080D7824
	.incbin "baserom.gba", 0x0D7824, 0x0000040

gUnk_080D7864:: @ 080D7864
	.incbin "baserom.gba", 0x0D7864, 0x0000010

gUnk_080D7874:: @ 080D7874
	.incbin "baserom.gba", 0x0D7874, 0x0000008

Area_45_Main:: @ 080D787C
	.4byte gUnk_080D7824
	.4byte 0x00000000
	.4byte gUnk_080D7864
	.4byte gUnk_080D7874
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BCFC
	.4byte nullsub_180

gUnk_080D789C:: @ 080D789C
	.incbin "baserom.gba", 0x0D789C, 0x0000040

gUnk_080D78DC:: @ 080D78DC
	.incbin "baserom.gba", 0x0D78DC, 0x0000010

gUnk_080D78EC:: @ 080D78EC
	.incbin "baserom.gba", 0x0D78EC, 0x0000008

Area_4D_Main:: @ 080D78F4
	.4byte gUnk_080D789C
	.4byte 0x00000000
	.4byte gUnk_080D78DC
	.4byte gUnk_080D78EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD04
	.4byte nullsub_181

gUnk_080D7914:: @ 080D7914
	.incbin "baserom.gba", 0x0D7914, 0x0000050

gUnk_080D7964:: @ 080D7964
	.incbin "baserom.gba", 0x0D7964, 0x0000010

gUnk_080D7974:: @ 080D7974
	.incbin "baserom.gba", 0x0D7974, 0x0000008

Area_57_Main:: @ 080D797C
	.4byte gUnk_080D7914
	.4byte 0x00000000
	.4byte gUnk_080D7964
	.4byte gUnk_080D7974
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD0C
	.4byte nullsub_182

gUnk_080D799C:: @ 080D799C
	.incbin "baserom.gba", 0x0D799C, 0x0000040

gUnk_080D79DC:: @ 080D79DC
	.incbin "baserom.gba", 0x0D79DC, 0x0000010

gUnk_080D79EC:: @ 080D79EC
	.incbin "baserom.gba", 0x0D79EC, 0x0000008

Area_5F_Main:: @ 080D79F4
	.4byte gUnk_080D799C
	.4byte 0x00000000
	.4byte gUnk_080D79DC
	.4byte gUnk_080D79EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD14
	.4byte nullsub_183

gUnk_080D7A14:: @ 080D7A14
	.incbin "baserom.gba", 0x0D7A14, 0x0000040

gUnk_080D7A54:: @ 080D7A54
	.incbin "baserom.gba", 0x0D7A54, 0x0000010

gUnk_080D7A64:: @ 080D7A64
	.incbin "baserom.gba", 0x0D7A64, 0x0000008

Area_67_Main:: @ 080D7A6C
	.4byte gUnk_080D7A14
	.4byte 0x00000000
	.4byte gUnk_080D7A54
	.4byte gUnk_080D7A64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD1C
	.4byte nullsub_184

gUnk_080D7A8C:: @ 080D7A8C
	.incbin "baserom.gba", 0x0D7A8C, 0x0000040

gUnk_080D7ACC:: @ 080D7ACC
	.incbin "baserom.gba", 0x0D7ACC, 0x0000010

gUnk_080D7ADC:: @ 080D7ADC
	.incbin "baserom.gba", 0x0D7ADC, 0x0000008

Area_6F_Main:: @ 080D7AE4
	.4byte gUnk_080D7A8C
	.4byte 0x00000000
	.4byte gUnk_080D7ACC
	.4byte gUnk_080D7ADC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD24
	.4byte nullsub_185

gUnk_080D7B04:: @ 080D7B04
	.incbin "baserom.gba", 0x0D7B04, 0x0000050

gUnk_080D7B54:: @ 080D7B54
	.incbin "baserom.gba", 0x0D7B54, 0x0000010

gUnk_080D7B64:: @ 080D7B64
	.incbin "baserom.gba", 0x0D7B64, 0x0000008

Area_77_Main:: @ 080D7B6C
	.4byte gUnk_080D7B04
	.4byte 0x00000000
	.4byte gUnk_080D7B54
	.4byte gUnk_080D7B64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD2C
	.4byte nullsub_186

gUnk_080D7B8C:: @ 080D7B8C
	.incbin "baserom.gba", 0x0D7B8C, 0x0000040

gUnk_080D7BCC:: @ 080D7BCC
	.incbin "baserom.gba", 0x0D7BCC, 0x0000010

gUnk_080D7BDC:: @ 080D7BDC
	.incbin "baserom.gba", 0x0D7BDC, 0x0000008

Area_7F_Main:: @ 080D7BE4
	.4byte gUnk_080D7B8C
	.4byte 0x00000000
	.4byte gUnk_080D7BCC
	.4byte gUnk_080D7BDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD34
	.4byte nullsub_187

gUnk_080D7C04:: @ 080D7C04
	.incbin "baserom.gba", 0x0D7C04, 0x0000040

gUnk_080D7C44:: @ 080D7C44
	.incbin "baserom.gba", 0x0D7C44, 0x0000010

gUnk_080D7C54:: @ 080D7C54
	.incbin "baserom.gba", 0x0D7C54, 0x0000008

Area_8F_Main:: @ 080D7C5C
	.4byte gUnk_080D7C04
	.4byte 0x00000000
	.4byte gUnk_080D7C44
	.4byte gUnk_080D7C54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD3C
	.4byte nullsub_188

gUnk_080D7C7C:: @ 080D7C7C
	.incbin "baserom.gba", 0x0D7C7C, 0x0000020

gUnk_080D7C9C:: @ 080D7C9C
	.incbin "baserom.gba", 0x0D7C9C, 0x0000040

gUnk_080D7CDC:: @ 080D7CDC
	.incbin "baserom.gba", 0x0D7CDC, 0x0000008

Room_GreatFairies_Entrance:: @ 080D7CE4
	.4byte gUnk_080D7C7C
	.4byte 0x00000000
	.4byte gUnk_080D7C9C
	.4byte gUnk_080D7CDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD44
	.4byte nullsub_189

gUnk_080D7D04:: @ 080D7D04
	.incbin "baserom.gba", 0x0D7D04, 0x0000030

gUnk_080D7D34:: @ 080D7D34
	.incbin "baserom.gba", 0x0D7D34, 0x0000040

gUnk_080D7D74:: @ 080D7D74
	.incbin "baserom.gba", 0x0D7D74, 0x0000020

gUnk_080D7D94:: @ 080D7D94
	.incbin "baserom.gba", 0x0D7D94, 0x0000008

Room_GreatFairies_Exit:: @ 080D7D9C
	.4byte gUnk_080D7D04
	.4byte 0x00000000
	.4byte gUnk_080D7D74
	.4byte gUnk_080D7D94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BD4C
	.4byte sub_0804BD50

gUnk_080D7DBC:: @ 080D7DBC
	.incbin "baserom.gba", 0x0D7DBC, 0x000000C
	.4byte script_080161E8
	.incbin "baserom.gba", 0x0D7DCC, 0x0000020

gUnk_080D7DEC:: @ 080D7DEC
	.incbin "baserom.gba", 0x0D7DEC, 0x0000080

gUnk_080D7E6C:: @ 080D7E6C
	.incbin "baserom.gba", 0x0D7E6C, 0x0000010

gUnk_080D7E7C:: @ 080D7E7C
	.incbin "baserom.gba", 0x0D7E7C, 0x0000020

Room_Dojos_Grayblade:: @ 080D7E9C
	.4byte gUnk_080D7DBC
	.4byte gUnk_080D7DEC
	.4byte gUnk_080D7E6C
	.4byte gUnk_080D7E7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDA4
	.4byte nullsub_190

gUnk_080D7EBC:: @ 080D7EBC
	.incbin "baserom.gba", 0x0D7EBC, 0x000000C
	.4byte script_080161E8
	.incbin "baserom.gba", 0x0D7ECC, 0x0000010

gUnk_080D7EDC:: @ 080D7EDC
	.incbin "baserom.gba", 0x0D7EDC, 0x0000080

gUnk_080D7F5C:: @ 080D7F5C
	.incbin "baserom.gba", 0x0D7F5C, 0x0000010

gUnk_080D7F6C:: @ 080D7F6C
	.incbin "baserom.gba", 0x0D7F6C, 0x0000010

Room_Dojos_Splitblade:: @ 080D7F7C
	.4byte gUnk_080D7EBC
	.4byte gUnk_080D7EDC
	.4byte gUnk_080D7F5C
	.4byte gUnk_080D7F6C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDAC
	.4byte nullsub_191

gUnk_080D7F9C:: @ 080D7F9C
	.incbin "baserom.gba", 0x0D7F9C, 0x000000C
	.4byte script_080161E8
	.incbin "baserom.gba", 0x0D7FAC, 0x0000010

gUnk_080D7FBC:: @ 080D7FBC
	.incbin "baserom.gba", 0x0D7FBC, 0x0000080

gUnk_080D803C:: @ 080D803C
	.incbin "baserom.gba", 0x0D803C, 0x0000010

gUnk_080D804C:: @ 080D804C
	.incbin "baserom.gba", 0x0D804C, 0x0000010

Room_Dojos_Greatblade:: @ 080D805C
	.4byte gUnk_080D7F9C
	.4byte gUnk_080D7FBC
	.4byte gUnk_080D803C
	.4byte gUnk_080D804C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDB4
	.4byte nullsub_192

gUnk_080D807C:: @ 080D807C
	.incbin "baserom.gba", 0x0D807C, 0x000000C
	.4byte script_080161E8
	.incbin "baserom.gba", 0x0D808C, 0x0000010

gUnk_080D809C:: @ 080D809C
	.incbin "baserom.gba", 0x0D809C, 0x0000038

gUnk_080D80D4:: @ 080D80D4
	.incbin "baserom.gba", 0x0D80D4, 0x0000048

gUnk_080D811C:: @ 080D811C
	.incbin "baserom.gba", 0x0D811C, 0x0000010

gUnk_080D812C:: @ 080D812C
	.incbin "baserom.gba", 0x0D812C, 0x0000010

Room_Dojos_Scarblade:: @ 080D813C
	.4byte gUnk_080D807C
	.4byte gUnk_080D809C
	.4byte gUnk_080D811C
	.4byte gUnk_080D812C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDBC
	.4byte nullsub_193

gUnk_080D815C:: @ 080D815C
	.incbin "baserom.gba", 0x0D815C, 0x000000C
	.4byte script_080161E8
	.incbin "baserom.gba", 0x0D816C, 0x0000020

gUnk_080D818C:: @ 080D818C
	.incbin "baserom.gba", 0x0D818C, 0x0000080

gUnk_080D820C:: @ 080D820C
	.incbin "baserom.gba", 0x0D820C, 0x0000010

gUnk_080D821C:: @ 080D821C
	.incbin "baserom.gba", 0x0D821C, 0x0000010

Room_Dojos_Swiftblade:: @ 080D822C
	.4byte gUnk_080D815C
	.4byte gUnk_080D818C
	.4byte gUnk_080D820C
	.4byte gUnk_080D821C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDC4
	.4byte nullsub_194

gUnk_080D824C:: @ 080D824C
	.incbin "baserom.gba", 0x0D824C, 0x000000C
	.4byte script_080161E8
	.incbin "baserom.gba", 0x0D825C, 0x0000020

gUnk_080D827C:: @ 080D827C
	.incbin "baserom.gba", 0x0D827C, 0x0000050

gUnk_080D82CC:: @ 080D82CC
	.incbin "baserom.gba", 0x0D82CC, 0x0000080

gUnk_080D834C:: @ 080D834C
	.incbin "baserom.gba", 0x0D834C, 0x0000010

gUnk_080D835C:: @ 080D835C
	.incbin "baserom.gba", 0x0D835C, 0x0000018

Room_Dojos_Grimblade:: @ 080D8374
	.4byte gUnk_080D824C
	.4byte gUnk_080D82CC
	.4byte gUnk_080D834C
	.4byte gUnk_080D835C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BDCC
	.4byte sub_0804BDD0

gUnk_080D8394:: @ 080D8394
	.incbin "baserom.gba", 0x0D8394, 0x000000C
	.4byte script_080161E8
	.incbin "baserom.gba", 0x0D83A4, 0x0000020

gUnk_080D83C4:: @ 080D83C4
	.incbin "baserom.gba", 0x0D83C4, 0x0000080

gUnk_080D8444:: @ 080D8444
	.incbin "baserom.gba", 0x0D8444, 0x0000010

gUnk_080D8454:: @ 080D8454
	.incbin "baserom.gba", 0x0D8454, 0x0000010

Room_Dojos_Waveblade:: @ 080D8464
	.4byte gUnk_080D8394
	.4byte gUnk_080D83C4
	.4byte gUnk_080D8444
	.4byte gUnk_080D8454
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE04

gUnk_080D8480:: @ 080D8480
	.4byte nullsub_28

gUnk_080D8484:: @ 080D8484
	.incbin "baserom.gba", 0x0D8484, 0x0000030

gUnk_080D84B4:: @ 080D84B4
	.incbin "baserom.gba", 0x0D84B4, 0x0000090

gUnk_080D8544:: @ 080D8544
	.incbin "baserom.gba", 0x0D8544, 0x0000010

gUnk_080D8554:: @ 080D8554
	.incbin "baserom.gba", 0x0D8554, 0x0000008

Room_Dojos_7:: @ 080D855C
	.4byte gUnk_080D8484
	.4byte gUnk_080D84B4
	.4byte gUnk_080D8544
	.4byte gUnk_080D8554
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE0C
	.4byte nullsub_29

gUnk_080D857C:: @ 080D857C
	.incbin "baserom.gba", 0x0D857C, 0x0000030

gUnk_080D85AC:: @ 080D85AC
	.incbin "baserom.gba", 0x0D85AC, 0x0000070

gUnk_080D861C:: @ 080D861C
	.incbin "baserom.gba", 0x0D861C, 0x0000010

gUnk_080D862C:: @ 080D862C
	.incbin "baserom.gba", 0x0D862C, 0x0000008

Room_Dojos_8:: @ 080D8634
	.4byte gUnk_080D857C
	.4byte gUnk_080D85AC
	.4byte gUnk_080D861C
	.4byte gUnk_080D862C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE14
	.4byte nullsub_30

gUnk_080D8654:: @ 080D8654
	.incbin "baserom.gba", 0x0D8654, 0x0000010

gUnk_080D8664:: @ 080D8664
	.incbin "baserom.gba", 0x0D8664, 0x00000A0

gUnk_080D8704:: @ 080D8704
	.incbin "baserom.gba", 0x0D8704, 0x0000010

gUnk_080D8714:: @ 080D8714
	.incbin "baserom.gba", 0x0D8714, 0x0000008

Room_Dojos_9:: @ 080D871C
	.4byte gUnk_080D8654
	.4byte gUnk_080D8664
	.4byte gUnk_080D8704
	.4byte gUnk_080D8714
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE1C
	.4byte nullsub_31

gUnk_080D873C:: @ 080D873C
	.incbin "baserom.gba", 0x0D873C, 0x0000010

gUnk_080D874C:: @ 080D874C
	.incbin "baserom.gba", 0x0D874C, 0x0000090

gUnk_080D87DC:: @ 080D87DC
	.incbin "baserom.gba", 0x0D87DC, 0x0000010

gUnk_080D87EC:: @ 080D87EC
	.incbin "baserom.gba", 0x0D87EC, 0x0000008

Room_Dojos_ToGrimblade:: @ 080D87F4
	.4byte gUnk_080D873C
	.4byte gUnk_080D874C
	.4byte gUnk_080D87DC
	.4byte gUnk_080D87EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE24
	.4byte nullsub_32

gUnk_080D8814:: @ 080D8814
	.incbin "baserom.gba", 0x0D8814, 0x0000010

gUnk_080D8824:: @ 080D8824
	.incbin "baserom.gba", 0x0D8824, 0x0000030

gUnk_080D8854:: @ 080D8854
	.incbin "baserom.gba", 0x0D8854, 0x0000010

gUnk_080D8864:: @ 080D8864
	.incbin "baserom.gba", 0x0D8864, 0x0000008

Room_Dojos_ToSplitblade:: @ 080D886C
	.4byte gUnk_080D8814
	.4byte gUnk_080D8824
	.4byte gUnk_080D8854
	.4byte gUnk_080D8864
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE2C
	.4byte nullsub_33

gUnk_080D888C:: @ 080D888C
	.incbin "baserom.gba", 0x0D888C, 0x0000010

gUnk_080D889C:: @ 080D889C
	.incbin "baserom.gba", 0x0D889C, 0x0000030

gUnk_080D88CC:: @ 080D88CC
	.incbin "baserom.gba", 0x0D88CC, 0x0000010

gUnk_080D88DC:: @ 080D88DC
	.incbin "baserom.gba", 0x0D88DC, 0x0000008

Room_Dojos_ToGreatblade:: @ 080D88E4
	.4byte gUnk_080D888C
	.4byte gUnk_080D889C
	.4byte gUnk_080D88CC
	.4byte gUnk_080D88DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE34
	.4byte nullsub_34

gUnk_080D8904:: @ 080D8904
	.incbin "baserom.gba", 0x0D8904, 0x0000010

gUnk_080D8914:: @ 080D8914
	.incbin "baserom.gba", 0x0D8914, 0x0000030

gUnk_080D8944:: @ 080D8944
	.incbin "baserom.gba", 0x0D8944, 0x0000010

gUnk_080D8954:: @ 080D8954
	.incbin "baserom.gba", 0x0D8954, 0x0000008

Room_Dojos_ToScarblade:: @ 080D895C
	.4byte gUnk_080D8904
	.4byte gUnk_080D8914
	.4byte gUnk_080D8944
	.4byte gUnk_080D8954
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE3C
	.4byte nullsub_35

gUnk_080D897C:: @ 080D897C
	.incbin "baserom.gba", 0x0D897C, 0x0000010

gUnk_080D898C:: @ 080D898C
	.incbin "baserom.gba", 0x0D898C, 0x0000010

gUnk_080D899C:: @ 080D899C
	.incbin "baserom.gba", 0x0D899C, 0x0000008

Room_GoronCave_StairsToCave:: @ 080D89A4
	.4byte gUnk_080D897C
	.4byte 0x00000000
	.4byte gUnk_080D898C
	.4byte gUnk_080D899C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE44
	.4byte nullsub_36

gUnk_080D89C4:: @ 080D89C4
	.incbin "baserom.gba", 0x0D89C4, 0x0000020

gUnk_080D89E4:: @ 080D89E4
	.incbin "baserom.gba", 0x0D89E4, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D89F4, 0x0000010

gUnk_080D8A04:: @ 080D8A04
	.incbin "baserom.gba", 0x0D8A04, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8A14, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8A24, 0x0000010

gUnk_080D8A34:: @ 080D8A34
	.incbin "baserom.gba", 0x0D8A34, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8A44, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8A54, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8A64, 0x0000010

gUnk_080D8A74:: @ 080D8A74
	.incbin "baserom.gba", 0x0D8A74, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8A84, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8A94, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8AA4, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8AB4, 0x0000010

gUnk_080D8AC4:: @ 080D8AC4
	.incbin "baserom.gba", 0x0D8AC4, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8AD4, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8AE4, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8AF4, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8B04, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8B14, 0x0000010

gUnk_080D8B24:: @ 080D8B24
	.incbin "baserom.gba", 0x0D8B24, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8B34, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8B44, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8B54, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8B64, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8B74, 0x000000C
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0D8B84, 0x0000010

gUnk_080D8B94:: @ 080D8B94
	.incbin "baserom.gba", 0x0D8B94, 0x0000010

gUnk_080D8BA4:: @ 080D8BA4
	.incbin "baserom.gba", 0x0D8BA4, 0x0000018

gUnk_080D8BBC:: @ 080D8BBC
	.incbin "baserom.gba", 0x0D8BBC, 0x000003E

gUnk_080D8BFA:: @ 080D8BFA
	.incbin "baserom.gba", 0x0D8BFA, 0x000006E

gUnk_080D8C68:: @ 080D8C68
	.incbin "baserom.gba", 0x0D8C68, 0x000009E

gUnk_080D8D06:: @ 080D8D06
	.incbin "baserom.gba", 0x0D8D06, 0x000003E

gUnk_080D8D44:: @ 080D8D44
	.incbin "baserom.gba", 0x0D8D44, 0x000006E

gUnk_080D8DB2:: @ 080D8DB2
	.incbin "baserom.gba", 0x0D8DB2, 0x000009E

gUnk_080D8E50:: @ 080D8E50
	.4byte gUnk_080D8D06
	.incbin "baserom.gba", 0x0D8E54, 0x000000C
	.4byte gUnk_080D8D44
	.incbin "baserom.gba", 0x0D8E64, 0x000000C
	.4byte gUnk_080D8DB2
	.incbin "baserom.gba", 0x0D8E74, 0x000000C
	.4byte gUnk_080D8BBC
	.incbin "baserom.gba", 0x0D8E84, 0x000000C
	.4byte gUnk_080D8BFA
	.incbin "baserom.gba", 0x0D8E94, 0x000000C
	.4byte gUnk_080D8C68
	.incbin "baserom.gba", 0x0D8EA4, 0x000000C

Room_GoronCave_Main:: @ 080D8EB0
	.4byte gUnk_080D89C4
	.4byte 0x00000000
	.4byte gUnk_080D8B94
	.4byte gUnk_080D8BA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804BE4C
	.4byte sub_0804BE50

gUnk_080D8ED0:: @ 080D8ED0
	.incbin "baserom.gba", 0x0D8ED0, 0x0000010

gUnk_080D8EE0:: @ 080D8EE0
	.incbin "baserom.gba", 0x0D8EE0, 0x00000A0

gUnk_080D8F80:: @ 080D8F80
	.incbin "baserom.gba", 0x0D8F80, 0x0000010

gUnk_080D8F90:: @ 080D8F90
	.incbin "baserom.gba", 0x0D8F90, 0x0000008

Area_EzloCutscene_Main:: @ 080D8F98
	.4byte gUnk_080D8ED0
	.4byte gUnk_080D8EE0
	.4byte gUnk_080D8F80
	.4byte gUnk_080D8F90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C00C
	.4byte nullsub_195

gUnk_080D8FB8:: @ 080D8FB8
	.incbin "baserom.gba", 0x0D8FB8, 0x000005C
	.4byte script_08009698
	.incbin "baserom.gba", 0x0D9018, 0x000000C
	.4byte script_08009740
	.incbin "baserom.gba", 0x0D9028, 0x0000020

gUnk_080D9048:: @ 080D9048
	.incbin "baserom.gba", 0x0D9048, 0x0000050

gUnk_080D9098:: @ 080D9098
	.incbin "baserom.gba", 0x0D9098, 0x000000C
	.4byte script_0800962C
	.incbin "baserom.gba", 0x0D90A8, 0x000000C
	.4byte script_080098D4
	.incbin "baserom.gba", 0x0D90B8, 0x0000010

gUnk_080D90C8:: @ 080D90C8
	.incbin "baserom.gba", 0x0D90C8, 0x000000C
	.4byte script_08009778
	.incbin "baserom.gba", 0x0D90D8, 0x000000C
	.4byte script_080097F0
	.incbin "baserom.gba", 0x0D90E8, 0x000000C
	.4byte script_08009838
	.incbin "baserom.gba", 0x0D90F8, 0x0000010

gUnk_080D9108:: @ 080D9108
	.incbin "baserom.gba", 0x0D9108, 0x0000020

gUnk_080D9128:: @ 080D9128
	.incbin "baserom.gba", 0x0D9128, 0x00000C0

gUnk_080D91E8:: @ 080D91E8
	.incbin "baserom.gba", 0x0D91E8, 0x0000090

gUnk_080D9278:: @ 080D9278
	.incbin "baserom.gba", 0x0D9278, 0x0000018

Room_RoyalValley_Main:: @ 080D9290
	.4byte gUnk_080D8FB8
	.4byte gUnk_080D9128
	.4byte gUnk_080D91E8
	.4byte gUnk_080D9278
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C014
	.4byte sub_0804C018

gUnk_080D92B0:: @ 080D92B0
	.incbin "baserom.gba", 0x0D92B0, 0x0000020

gUnk_080D92D0:: @ 080D92D0
	.incbin "baserom.gba", 0x0D92D0, 0x0000010

gUnk_080D92E0:: @ 080D92E0
	.incbin "baserom.gba", 0x0D92E0, 0x0000048

gUnk_080D9328:: @ 080D9328
	.incbin "baserom.gba", 0x0D9328, 0x0000010

gUnk_080D9338:: @ 080D9338
	.incbin "baserom.gba", 0x0D9338, 0x0000008

gUnk_080D9340:: @ 080D9340
	.incbin "baserom.gba", 0x0D9340, 0x0000008

gUnk_080D9348:: @ 080D9348
	.incbin "baserom.gba", 0x0D9348, 0x0000020

Room_RoyalValley_ForestMaze:: @ 080D9368
	.4byte gUnk_080D92B0
	.4byte 0x00000000
	.4byte gUnk_080D92D0
	.4byte gUnk_080D92E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C104
	.4byte sub_0804C108

gUnk_080D9388:: @ 080D9388
	.incbin "baserom.gba", 0x0D9388, 0x0000020

gUnk_080D93A8:: @ 080D93A8
	.incbin "baserom.gba", 0x0D93A8, 0x0000010

gUnk_080D93B8:: @ 080D93B8
	.incbin "baserom.gba", 0x0D93B8, 0x0000008

Room_RoyalValleyGraves_HeartPiece:: @ 080D93C0
	.4byte gUnk_080D9388
	.4byte 0x00000000
	.4byte gUnk_080D93A8
	.4byte gUnk_080D93B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C2BC
	.4byte nullsub_196

gUnk_080D93E0:: @ 080D93E0
	.incbin "baserom.gba", 0x0D93E0, 0x000000C
	.4byte script_0800B91C
	.incbin "baserom.gba", 0x0D93F0, 0x0000010

gUnk_080D9400:: @ 080D9400
	.incbin "baserom.gba", 0x0D9400, 0x0000010

gUnk_080D9410:: @ 080D9410
	.incbin "baserom.gba", 0x0D9410, 0x0000010

Room_RoyalValleyGraves_Gina:: @ 080D9420
	.4byte gUnk_080D93E0
	.4byte 0x00000000
	.4byte gUnk_080D9400
	.4byte gUnk_080D9410
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C2C4
	.4byte nullsub_197

gUnk_080D9440:: @ 080D9440
	.incbin "baserom.gba", 0x0D9440, 0x000000C
	.4byte script_0800E734
	.incbin "baserom.gba", 0x0D9450, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0D9460, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0D9470, 0x0000040

gUnk_080D94B0:: @ 080D94B0
	.incbin "baserom.gba", 0x0D94B0, 0x0000100

gUnk_080D95B0:: @ 080D95B0
	.incbin "baserom.gba", 0x0D95B0, 0x0000010

gUnk_080D95C0:: @ 080D95C0
	.incbin "baserom.gba", 0x0D95C0, 0x0000010

Room_MinishRafters_Cafe:: @ 080D95D0
	.4byte gUnk_080D9440
	.4byte gUnk_080D94B0
	.4byte gUnk_080D95B0
	.4byte gUnk_080D95C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C2CC
	.4byte sub_0804C2D0

gUnk_080D95F0:: @ 080D95F0
	.incbin "baserom.gba", 0x0D95F0, 0x0000010

gUnk_080D9600:: @ 080D9600
	.incbin "baserom.gba", 0x0D9600, 0x0000110

gUnk_080D9710:: @ 080D9710
	.incbin "baserom.gba", 0x0D9710, 0x0000070

gUnk_080D9780:: @ 080D9780
	.incbin "baserom.gba", 0x0D9780, 0x0000020

Room_MinishRafters_Stockwell:: @ 080D97A0
	.4byte gUnk_080D95F0
	.4byte gUnk_080D9600
	.4byte gUnk_080D9710
	.4byte gUnk_080D9780
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C2DC
	.4byte sub_0804C2E0

gUnk_080D97C0:: @ 080D97C0
	.incbin "baserom.gba", 0x0D97C0, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0D97D0, 0x000000C
	.4byte script_0800E760
	.incbin "baserom.gba", 0x0D97E0, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0D97F0, 0x0000010

gUnk_080D9800:: @ 080D9800
	.incbin "baserom.gba", 0x0D9800, 0x0000030

gUnk_080D9830:: @ 080D9830
	.incbin "baserom.gba", 0x0D9830, 0x0000100

gUnk_080D9930:: @ 080D9930
	.incbin "baserom.gba", 0x0D9930, 0x0000010

gUnk_080D9940:: @ 080D9940
	.incbin "baserom.gba", 0x0D9940, 0x0000008

Room_MinishRafters_DrLeft:: @ 080D9948
	.4byte gUnk_080D97C0
	.4byte gUnk_080D9830
	.4byte gUnk_080D9930
	.4byte gUnk_080D9940
	.4byte sub_0804C318
	.4byte 0x00000000
	.4byte sub_0804C2EC
	.4byte sub_0804C2F0

gUnk_080D9968:: @ 080D9968
	.incbin "baserom.gba", 0x0D9968, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0D9978, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0D9988, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0D9998, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0D99A8, 0x0000010

gUnk_080D99B8:: @ 080D99B8
	.incbin "baserom.gba", 0x0D99B8, 0x00000E0

gUnk_080D9A98:: @ 080D9A98
	.incbin "baserom.gba", 0x0D9A98, 0x0000010

gUnk_080D9AA8:: @ 080D9AA8
	.incbin "baserom.gba", 0x0D9AA8, 0x0000010

Room_MinishRafters_Bakery:: @ 080D9AB8
	.4byte gUnk_080D9968
	.4byte gUnk_080D99B8
	.4byte gUnk_080D9A98
	.4byte gUnk_080D9AA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C320
	.4byte sub_0804C324

gUnk_080D9AD8:: @ 080D9AD8
	.incbin "baserom.gba", 0x0D9AD8, 0x000004C
	.4byte script_0800B200
	.incbin "baserom.gba", 0x0D9B28, 0x000000C
	.4byte script_0800B308
	.incbin "baserom.gba", 0x0D9B38, 0x000000C
	.4byte script_0800B254
	.incbin "baserom.gba", 0x0D9B48, 0x000000C
	.4byte script_0800B284
	.incbin "baserom.gba", 0x0D9B58, 0x000000C
	.4byte script_0800B2B4
	.incbin "baserom.gba", 0x0D9B68, 0x00000D0

gUnk_080D9C38:: @ 080D9C38
	.incbin "baserom.gba", 0x0D9C38, 0x0000070

gUnk_080D9CA8:: @ 080D9CA8
	.incbin "baserom.gba", 0x0D9CA8, 0x0000020

gUnk_080D9CC8:: @ 080D9CC8
	.incbin "baserom.gba", 0x0D9CC8, 0x0000020

gUnk_080D9CE8:: @ 080D9CE8
	.incbin "baserom.gba", 0x0D9CE8, 0x000000C
	.4byte script_0800B00C
	.incbin "baserom.gba", 0x0D9CF8, 0x0000010

gUnk_080D9D08:: @ 080D9D08
	.incbin "baserom.gba", 0x0D9D08, 0x0000030

gUnk_080D9D38:: @ 080D9D38
	.incbin "baserom.gba", 0x0D9D38, 0x00000F0

gUnk_080D9E28:: @ 080D9E28
	.incbin "baserom.gba", 0x0D9E28, 0x0000030

gUnk_080D9E58:: @ 080D9E58
	.incbin "baserom.gba", 0x0D9E58, 0x0000010

gUnk_080D9E68:: @ 080D9E68
	.incbin "baserom.gba", 0x0D9E68, 0x0000040

gUnk_080D9EA8:: @ 080D9EA8
	.incbin "baserom.gba", 0x0D9EA8, 0x0000014

gUnk_080D9EBC:: @ 080D9EBC
	.incbin "baserom.gba", 0x0D9EBC, 0x0000014

gUnk_080D9ED0:: @ 080D9ED0
	.incbin "baserom.gba", 0x0D9ED0, 0x0000014

gUnk_080D9EE4:: @ 080D9EE4
	.incbin "baserom.gba", 0x0D9EE4, 0x0000014

gUnk_080D9EF8:: @ 080D9EF8
	.incbin "baserom.gba", 0x0D9EF8, 0x0000014

gUnk_080D9F0C:: @ 080D9F0C
	.incbin "baserom.gba", 0x0D9F0C, 0x0000014

gUnk_080D9F20:: @ 080D9F20
	.incbin "baserom.gba", 0x0D9F20, 0x0000014

gUnk_080D9F34:: @ 080D9F34
	.incbin "baserom.gba", 0x0D9F34, 0x0000010

gUnk_080D9F44:: @ 080D9F44
	.incbin "baserom.gba", 0x0D9F44, 0x0000014

Room_CastorWilds_Main:: @ 080D9F58
	.4byte gUnk_080D9AD8
	.4byte gUnk_080D9D08
	.4byte gUnk_080D9D38
	.4byte gUnk_080D9E58
	.4byte sub_0804C384
	.4byte 0x00000000
	.4byte sub_0804C330
	.4byte sub_0804C334
	.4byte gUnk_080D9E68
	.4byte gUnk_080D9EA8
	.4byte gUnk_080D9EBC
	.4byte gUnk_080D9ED0
	.4byte gUnk_080D9EE4
	.4byte gUnk_080D9EF8
	.4byte gUnk_080D9F0C
	.4byte gUnk_080D9F20
	.4byte gUnk_080D9E28
	.4byte gUnk_080D9F34
	.4byte gUnk_080D9F44
	.4byte gUnk_080D9CA8

gUnk_080D9FA8:: @ 080D9FA8
	.incbin "baserom.gba", 0x0D9FA8, 0x0000010

gUnk_080D9FB8:: @ 080D9FB8
	.incbin "baserom.gba", 0x0D9FB8, 0x0000010

gUnk_080D9FC8:: @ 080D9FC8
	.incbin "baserom.gba", 0x0D9FC8, 0x0000030

gUnk_080D9FF8:: @ 080D9FF8
	.incbin "baserom.gba", 0x0D9FF8, 0x0000010

Room_CastorCaves_South:: @ 080DA008
	.4byte gUnk_080D9FA8
	.4byte gUnk_080D9FB8
	.4byte gUnk_080D9FC8
	.4byte gUnk_080D9FF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3A4
	.4byte nullsub_198

gUnk_080DA028:: @ 080DA028
	.incbin "baserom.gba", 0x0DA028, 0x0000010

gUnk_080DA038:: @ 080DA038
	.incbin "baserom.gba", 0x0DA038, 0x0000010

gUnk_080DA048:: @ 080DA048
	.incbin "baserom.gba", 0x0DA048, 0x0000020

gUnk_080DA068:: @ 080DA068
	.incbin "baserom.gba", 0x0DA068, 0x0000018

Room_CastorCaves_North:: @ 080DA080
	.4byte gUnk_080DA028
	.4byte gUnk_080DA038
	.4byte gUnk_080DA048
	.4byte gUnk_080DA068
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3AC
	.4byte nullsub_199

gUnk_080DA0A0:: @ 080DA0A0
	.incbin "baserom.gba", 0x0DA0A0, 0x0000010

gUnk_080DA0B0:: @ 080DA0B0
	.incbin "baserom.gba", 0x0DA0B0, 0x0000010

gUnk_080DA0C0:: @ 080DA0C0
	.incbin "baserom.gba", 0x0DA0C0, 0x0000010

gUnk_080DA0D0:: @ 080DA0D0
	.incbin "baserom.gba", 0x0DA0D0, 0x0000010

Room_CastorCaves_WindRuins:: @ 080DA0E0
	.4byte gUnk_080DA0A0
	.4byte gUnk_080DA0B0
	.4byte gUnk_080DA0C0
	.4byte gUnk_080DA0D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3B4
	.4byte nullsub_200

gUnk_080DA100:: @ 080DA100
	.incbin "baserom.gba", 0x0DA100, 0x0000050

gUnk_080DA150:: @ 080DA150
	.incbin "baserom.gba", 0x0DA150, 0x0000010

gUnk_080DA160:: @ 080DA160
	.incbin "baserom.gba", 0x0DA160, 0x0000030

gUnk_080DA190:: @ 080DA190
	.incbin "baserom.gba", 0x0DA190, 0x0000008

Room_CastorCaves_Darknut:: @ 080DA198
	.4byte gUnk_080DA100
	.4byte gUnk_080DA150
	.4byte gUnk_080DA160
	.4byte gUnk_080DA190
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3BC
	.4byte nullsub_201

gUnk_080DA1B8:: @ 080DA1B8
	.incbin "baserom.gba", 0x0DA1B8, 0x0000020

gUnk_080DA1D8:: @ 080DA1D8
	.incbin "baserom.gba", 0x0DA1D8, 0x0000010

gUnk_080DA1E8:: @ 080DA1E8
	.incbin "baserom.gba", 0x0DA1E8, 0x0000008

Room_CastorCaves_HeartPiece:: @ 080DA1F0
	.4byte gUnk_080DA1B8
	.4byte 0x00000000
	.4byte gUnk_080DA1D8
	.4byte gUnk_080DA1E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3C4
	.4byte nullsub_202

gUnk_080DA210:: @ 080DA210
	.incbin "baserom.gba", 0x0DA210, 0x0000020

gUnk_080DA230:: @ 080DA230
	.incbin "baserom.gba", 0x0DA230, 0x000000C
	.4byte script_0800B17C
	.incbin "baserom.gba", 0x0DA240, 0x0000020

gUnk_080DA260:: @ 080DA260
	.incbin "baserom.gba", 0x0DA260, 0x0000040

gUnk_080DA2A0:: @ 080DA2A0
	.incbin "baserom.gba", 0x0DA2A0, 0x0000010

gUnk_080DA2B0:: @ 080DA2B0
	.incbin "baserom.gba", 0x0DA2B0, 0x0000010

gUnk_080DA2C0:: @ 080DA2C0
	.incbin "baserom.gba", 0x0DA2C0, 0x0000018

gUnk_080DA2D8:: @ 080DA2D8
	.incbin "baserom.gba", 0x0DA2D8, 0x0000020

Room_CastorDarknut_Main:: @ 080DA2F8
	.4byte gUnk_080DA210
	.4byte gUnk_080DA2A0
	.4byte gUnk_080DA2B0
	.4byte gUnk_080DA2C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3CC
	.4byte nullsub_203
	.4byte gUnk_080DA2D8

gUnk_080DA31C:: @ 080DA31C
	.incbin "baserom.gba", 0x0DA31C, 0x0000010

gUnk_080DA32C:: @ 080DA32C
	.incbin "baserom.gba", 0x0DA32C, 0x0000010

gUnk_080DA33C:: @ 080DA33C
	.incbin "baserom.gba", 0x0DA33C, 0x0000040

gUnk_080DA37C:: @ 080DA37C
	.incbin "baserom.gba", 0x0DA37C, 0x0000008

Room_CastorDarknut_Hall:: @ 080DA384
	.4byte gUnk_080DA31C
	.4byte gUnk_080DA32C
	.4byte gUnk_080DA33C
	.4byte gUnk_080DA37C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3F0
	.4byte nullsub_204

gUnk_080DA3A4:: @ 080DA3A4
	.incbin "baserom.gba", 0x0DA3A4, 0x000000C
	.4byte script_0800B614
	.incbin "baserom.gba", 0x0DA3B4, 0x0000020

gUnk_080DA3D4:: @ 080DA3D4
	.incbin "baserom.gba", 0x0DA3D4, 0x0000010

gUnk_080DA3E4:: @ 080DA3E4
	.incbin "baserom.gba", 0x0DA3E4, 0x0000008

Room_GreatFairies_Graveyard:: @ 080DA3EC
	.4byte gUnk_080DA3A4
	.4byte 0x00000000
	.4byte gUnk_080DA3D4
	.4byte gUnk_080DA3E4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C3F8
	.4byte nullsub_205

gUnk_080DA40C:: @ 080DA40C
	.incbin "baserom.gba", 0x0DA40C, 0x000000C
	.4byte script_0800B6C8
	.incbin "baserom.gba", 0x0DA41C, 0x0000020

gUnk_080DA43C:: @ 080DA43C
	.incbin "baserom.gba", 0x0DA43C, 0x0000010

gUnk_080DA44C:: @ 080DA44C
	.incbin "baserom.gba", 0x0DA44C, 0x0000008

Room_GreatFairies_MinishWoods:: @ 080DA454
	.4byte gUnk_080DA40C
	.4byte 0x00000000
	.4byte gUnk_080DA43C
	.4byte gUnk_080DA44C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C400
	.4byte nullsub_206

gUnk_080DA474:: @ 080DA474
	.incbin "baserom.gba", 0x0DA474, 0x000000C
	.4byte script_0800B730
	.incbin "baserom.gba", 0x0DA484, 0x0000020

gUnk_080DA4A4:: @ 080DA4A4
	.incbin "baserom.gba", 0x0DA4A4, 0x0000010

gUnk_080DA4B4:: @ 080DA4B4
	.incbin "baserom.gba", 0x0DA4B4, 0x0000008

Room_GreatFairies_MtCrenel:: @ 080DA4BC
	.4byte gUnk_080DA474
	.4byte 0x00000000
	.4byte gUnk_080DA4A4
	.4byte gUnk_080DA4B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C408
	.4byte nullsub_207

gUnk_080DA4DC:: @ 080DA4DC
	.incbin "baserom.gba", 0x0DA4DC, 0x0000020

gUnk_080DA4FC:: @ 080DA4FC
	.incbin "baserom.gba", 0x0DA4FC, 0x0000010

gUnk_080DA50C:: @ 080DA50C
	.incbin "baserom.gba", 0x0DA50C, 0x0000008

Room_GardenFountains_East:: @ 080DA514
	.4byte gUnk_080DA4DC
	.4byte 0x00000000
	.4byte gUnk_080DA4FC
	.4byte gUnk_080DA50C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C410
	.4byte nullsub_208

gUnk_080DA534:: @ 080DA534
	.incbin "baserom.gba", 0x0DA534, 0x0000050

gUnk_080DA584:: @ 080DA584
	.incbin "baserom.gba", 0x0DA584, 0x0000010

gUnk_080DA594:: @ 080DA594
	.incbin "baserom.gba", 0x0DA594, 0x0000010

Room_GardenFountains_West:: @ 080DA5A4
	.4byte gUnk_080DA534
	.4byte 0x00000000
	.4byte gUnk_080DA584
	.4byte gUnk_080DA594
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C418
	.4byte nullsub_209

gUnk_080DA5C4:: @ 080DA5C4
	.incbin "baserom.gba", 0x0DA5C4, 0x000000C
	.4byte script_0800C774
	.incbin "baserom.gba", 0x0DA5D4, 0x0000020

gUnk_080DA5F4:: @ 080DA5F4
	.incbin "baserom.gba", 0x0DA5F4, 0x0000030

gUnk_080DA624:: @ 080DA624
	.incbin "baserom.gba", 0x0DA624, 0x0000010

gUnk_080DA634:: @ 080DA634
	.incbin "baserom.gba", 0x0DA634, 0x0000008

Room_MinishHouseInteriors_GentariMain:: @ 080DA63C
	.4byte gUnk_080DA5C4
	.4byte gUnk_080DA5F4
	.4byte gUnk_080DA624
	.4byte gUnk_080DA634
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C420
	.4byte sub_0804C424

gUnk_080DA65C:: @ 080DA65C
	.incbin "baserom.gba", 0x0DA65C, 0x0000010

gUnk_080DA66C:: @ 080DA66C
	.incbin "baserom.gba", 0x0DA66C, 0x0000040

gUnk_080DA6AC:: @ 080DA6AC
	.incbin "baserom.gba", 0x0DA6AC, 0x0000010

gUnk_080DA6BC:: @ 080DA6BC
	.incbin "baserom.gba", 0x0DA6BC, 0x0000008

gUnk_080DA6C4:: @ 080DA6C4
	.incbin "baserom.gba", 0x0DA6C4, 0x0000010

gUnk_080DA6D4:: @ 080DA6D4
	.incbin "baserom.gba", 0x0DA6D4, 0x0000014

Room_MinishHouseInteriors_GentariExit:: @ 080DA6E8
	.4byte gUnk_080DA65C
	.4byte gUnk_080DA66C
	.4byte gUnk_080DA6AC
	.4byte gUnk_080DA6BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C42C
	.4byte sub_0804C430
	.4byte gUnk_080DA6C4
	.4byte gUnk_080DA6D4

gUnk_080DA710:: @ 080DA710
	.incbin "baserom.gba", 0x0DA710, 0x000000C
	.4byte script_0800C634
	.incbin "baserom.gba", 0x0DA720, 0x0000010

gUnk_080DA730:: @ 080DA730
	.incbin "baserom.gba", 0x0DA730, 0x0000030

gUnk_080DA760:: @ 080DA760
	.incbin "baserom.gba", 0x0DA760, 0x0000010

gUnk_080DA770:: @ 080DA770
	.incbin "baserom.gba", 0x0DA770, 0x0000008

gUnk_080DA778:: @ 080DA778
	.incbin "baserom.gba", 0x0DA778, 0x0000018

gUnk_080DA790:: @ 080DA790
	.incbin "baserom.gba", 0x0DA790, 0x0000014

gUnk_080DA7A4:: @ 080DA7A4
	.incbin "baserom.gba", 0x0DA7A4, 0x0000014

Room_MinishHouseInteriors_Festari:: @ 080DA7B8
	.4byte gUnk_080DA710
	.4byte gUnk_080DA730
	.4byte gUnk_080DA760
	.4byte gUnk_080DA770
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C438
	.4byte sub_0804C43C
	.4byte gUnk_080DA778
	.4byte gUnk_080DA790
	.4byte gUnk_080DA7A4

gUnk_080DA7E4:: @ 080DA7E4
	.incbin "baserom.gba", 0x0DA7E4, 0x0000020

gUnk_080DA804:: @ 080DA804
	.incbin "baserom.gba", 0x0DA804, 0x0000020

gUnk_080DA824:: @ 080DA824
	.incbin "baserom.gba", 0x0DA824, 0x0000010

gUnk_080DA834:: @ 080DA834
	.incbin "baserom.gba", 0x0DA834, 0x0000008

Room_MinishHouseInteriors_Red:: @ 080DA83C
	.4byte gUnk_080DA7E4
	.4byte gUnk_080DA804
	.4byte gUnk_080DA824
	.4byte gUnk_080DA834
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C444
	.4byte sub_0804C448

gUnk_080DA85C:: @ 080DA85C
	.incbin "baserom.gba", 0x0DA85C, 0x0000020

gUnk_080DA87C:: @ 080DA87C
	.incbin "baserom.gba", 0x0DA87C, 0x0000020

gUnk_080DA89C:: @ 080DA89C
	.incbin "baserom.gba", 0x0DA89C, 0x0000010

gUnk_080DA8AC:: @ 080DA8AC
	.incbin "baserom.gba", 0x0DA8AC, 0x0000008

Room_MinishHouseInteriors_Green:: @ 080DA8B4
	.4byte gUnk_080DA85C
	.4byte gUnk_080DA87C
	.4byte gUnk_080DA89C
	.4byte gUnk_080DA8AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C450
	.4byte sub_0804C454

gUnk_080DA8D4:: @ 080DA8D4
	.incbin "baserom.gba", 0x0DA8D4, 0x0000020

gUnk_080DA8F4:: @ 080DA8F4
	.incbin "baserom.gba", 0x0DA8F4, 0x0000020

gUnk_080DA914:: @ 080DA914
	.incbin "baserom.gba", 0x0DA914, 0x0000010

gUnk_080DA924:: @ 080DA924
	.incbin "baserom.gba", 0x0DA924, 0x0000008

Room_MinishHouseInteriors_Blue:: @ 080DA92C
	.4byte gUnk_080DA8D4
	.4byte gUnk_080DA8F4
	.4byte gUnk_080DA914
	.4byte gUnk_080DA924
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C45C
	.4byte sub_0804C460

gUnk_080DA94C:: @ 080DA94C
	.incbin "baserom.gba", 0x0DA94C, 0x0000020

gUnk_080DA96C:: @ 080DA96C
	.incbin "baserom.gba", 0x0DA96C, 0x0000020

gUnk_080DA98C:: @ 080DA98C
	.incbin "baserom.gba", 0x0DA98C, 0x0000010

gUnk_080DA99C:: @ 080DA99C
	.incbin "baserom.gba", 0x0DA99C, 0x0000008

Room_MinishHouseInteriors_SideArea:: @ 080DA9A4
	.4byte gUnk_080DA94C
	.4byte gUnk_080DA96C
	.4byte gUnk_080DA98C
	.4byte gUnk_080DA99C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C468
	.4byte sub_0804C46C

gUnk_080DA9C4:: @ 080DA9C4
	.incbin "baserom.gba", 0x0DA9C4, 0x0000020

gUnk_080DA9E4:: @ 080DA9E4
	.incbin "baserom.gba", 0x0DA9E4, 0x0000020

gUnk_080DAA04:: @ 080DAA04
	.incbin "baserom.gba", 0x0DAA04, 0x0000010

gUnk_080DAA14:: @ 080DAA14
	.incbin "baserom.gba", 0x0DAA14, 0x0000008

Room_MinishHouseInteriors_ShoeMinish:: @ 080DAA1C
	.4byte gUnk_080DA9C4
	.4byte gUnk_080DA9E4
	.4byte gUnk_080DAA04
	.4byte gUnk_080DAA14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C474
	.4byte sub_0804C478

gUnk_080DAA3C:: @ 080DAA3C
	.incbin "baserom.gba", 0x0DAA3C, 0x0000020

gUnk_080DAA5C:: @ 080DAA5C
	.incbin "baserom.gba", 0x0DAA5C, 0x0000040

gUnk_080DAA9C:: @ 080DAA9C
	.incbin "baserom.gba", 0x0DAA9C, 0x0000010

gUnk_080DAAAC:: @ 080DAAAC
	.incbin "baserom.gba", 0x0DAAAC, 0x0000008

Room_MinishHouseInteriors_PotMinish:: @ 080DAAB4
	.4byte gUnk_080DAA3C
	.4byte gUnk_080DAA5C
	.4byte gUnk_080DAA9C
	.4byte gUnk_080DAAAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C480
	.4byte sub_0804C484

gUnk_080DAAD4:: @ 080DAAD4
	.incbin "baserom.gba", 0x0DAAD4, 0x0000070

gUnk_080DAB44:: @ 080DAB44
	.incbin "baserom.gba", 0x0DAB44, 0x0000020

gUnk_080DAB64:: @ 080DAB64
	.incbin "baserom.gba", 0x0DAB64, 0x0000020

gUnk_080DAB84:: @ 080DAB84
	.incbin "baserom.gba", 0x0DAB84, 0x0000040

gUnk_080DABC4:: @ 080DABC4
	.incbin "baserom.gba", 0x0DABC4, 0x0000040

gUnk_080DAC04:: @ 080DAC04
	.incbin "baserom.gba", 0x0DAC04, 0x0000050

gUnk_080DAC54:: @ 080DAC54
	.incbin "baserom.gba", 0x0DAC54, 0x0000040

gUnk_080DAC94:: @ 080DAC94
	.incbin "baserom.gba", 0x0DAC94, 0x0000040

gUnk_080DACD4:: @ 080DACD4
	.incbin "baserom.gba", 0x0DACD4, 0x0000050

gUnk_080DAD24:: @ 080DAD24
	.incbin "baserom.gba", 0x0DAD24, 0x0000040

gUnk_080DAD64:: @ 080DAD64
	.incbin "baserom.gba", 0x0DAD64, 0x0000040

gUnk_080DADA4:: @ 080DADA4
	.incbin "baserom.gba", 0x0DADA4, 0x0000050

gUnk_080DADF4:: @ 080DADF4
	.incbin "baserom.gba", 0x0DADF4, 0x00000A0

gUnk_080DAE94:: @ 080DAE94
	.incbin "baserom.gba", 0x0DAE94, 0x0000010

gUnk_080DAEA4:: @ 080DAEA4
	.incbin "baserom.gba", 0x0DAEA4, 0x0000008

gUnk_080DAEAC:: @ 080DAEAC
	.incbin "baserom.gba", 0x0DAEAC, 0x0000008

Room_MinishHouseInteriors_BarrelMinish:: @ 080DAEB4
	.4byte gUnk_080DAAD4
	.4byte gUnk_080DADF4
	.4byte gUnk_080DAE94
	.4byte gUnk_080DAEA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C48C
	.4byte sub_0804C490
	.4byte gUnk_080DAEAC

gUnk_080DAED8:: @ 080DAED8
	.incbin "baserom.gba", 0x0DAED8, 0x0000010

gUnk_080DAEE8:: @ 080DAEE8
	.incbin "baserom.gba", 0x0DAEE8, 0x000000C
	.4byte script_0800D308
	.incbin "baserom.gba", 0x0DAEF8, 0x0000010

gUnk_080DAF08:: @ 080DAF08
	.incbin "baserom.gba", 0x0DAF08, 0x0000030

gUnk_080DAF38:: @ 080DAF38
	.incbin "baserom.gba", 0x0DAF38, 0x0000010

gUnk_080DAF48:: @ 080DAF48
	.incbin "baserom.gba", 0x0DAF48, 0x0000008

Room_MinishHouseInteriors_MelariMinesSouthwest:: @ 080DAF50
	.4byte gUnk_080DAED8
	.4byte gUnk_080DAF08
	.4byte gUnk_080DAF38
	.4byte gUnk_080DAF48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C5DC
	.4byte sub_0804C5E0

gUnk_080DAF70:: @ 080DAF70
	.incbin "baserom.gba", 0x0DAF70, 0x0000010

gUnk_080DAF80:: @ 080DAF80
	.incbin "baserom.gba", 0x0DAF80, 0x000000C
	.4byte script_0800CF50
	.incbin "baserom.gba", 0x0DAF90, 0x0000010

gUnk_080DAFA0:: @ 080DAFA0
	.incbin "baserom.gba", 0x0DAFA0, 0x0000030

gUnk_080DAFD0:: @ 080DAFD0
	.incbin "baserom.gba", 0x0DAFD0, 0x0000010

gUnk_080DAFE0:: @ 080DAFE0
	.incbin "baserom.gba", 0x0DAFE0, 0x0000008

Room_MinishHouseInteriors_MelariMinesSoutheast:: @ 080DAFE8
	.4byte gUnk_080DAF70
	.4byte gUnk_080DAFA0
	.4byte gUnk_080DAFD0
	.4byte gUnk_080DAFE0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C5FC
	.4byte sub_0804C600

gUnk_080DB008:: @ 080DB008
	.incbin "baserom.gba", 0x0DB008, 0x0000010

gUnk_080DB018:: @ 080DB018
	.incbin "baserom.gba", 0x0DB018, 0x000000C
	.4byte script_0800CF50
	.incbin "baserom.gba", 0x0DB028, 0x0000010

gUnk_080DB038:: @ 080DB038
	.incbin "baserom.gba", 0x0DB038, 0x0000050

gUnk_080DB088:: @ 080DB088
	.incbin "baserom.gba", 0x0DB088, 0x0000010

gUnk_080DB098:: @ 080DB098
	.incbin "baserom.gba", 0x0DB098, 0x0000008

Room_MinishHouseInteriors_MelariMinesEast:: @ 080DB0A0
	.4byte gUnk_080DB008
	.4byte gUnk_080DB038
	.4byte gUnk_080DB088
	.4byte gUnk_080DB098
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C61C
	.4byte sub_0804C620

gUnk_080DB0C0:: @ 080DB0C0
	.incbin "baserom.gba", 0x0DB0C0, 0x0000020

gUnk_080DB0E0:: @ 080DB0E0
	.incbin "baserom.gba", 0x0DB0E0, 0x0000020

gUnk_080DB100:: @ 080DB100
	.incbin "baserom.gba", 0x0DB100, 0x0000010

gUnk_080DB110:: @ 080DB110
	.incbin "baserom.gba", 0x0DB110, 0x0000008

Room_MinishHouseInteriors_HyruleFieldSouthwest:: @ 080DB118
	.4byte gUnk_080DB0C0
	.4byte gUnk_080DB0E0
	.4byte gUnk_080DB100
	.4byte gUnk_080DB110
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C63C
	.4byte sub_0804C640

gUnk_080DB138:: @ 080DB138
	.incbin "baserom.gba", 0x0DB138, 0x0000020

gUnk_080DB158:: @ 080DB158
	.incbin "baserom.gba", 0x0DB158, 0x0000020

gUnk_080DB178:: @ 080DB178
	.incbin "baserom.gba", 0x0DB178, 0x0000010

gUnk_080DB188:: @ 080DB188
	.incbin "baserom.gba", 0x0DB188, 0x0000008

Room_MinishHouseInteriors_HyruleFieldOutsideLinksHouse:: @ 080DB190
	.4byte gUnk_080DB138
	.4byte gUnk_080DB158
	.4byte gUnk_080DB178
	.4byte gUnk_080DB188
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C648
	.4byte sub_0804C64C

gUnk_080DB1B0:: @ 080DB1B0
	.incbin "baserom.gba", 0x0DB1B0, 0x0000020

gUnk_080DB1D0:: @ 080DB1D0
	.incbin "baserom.gba", 0x0DB1D0, 0x0000020

gUnk_080DB1F0:: @ 080DB1F0
	.incbin "baserom.gba", 0x0DB1F0, 0x0000010

gUnk_080DB200:: @ 080DB200
	.incbin "baserom.gba", 0x0DB200, 0x0000008

Room_MinishHouseInteriors_NextToKnuckle:: @ 080DB208
	.4byte gUnk_080DB1B0
	.4byte gUnk_080DB1D0
	.4byte gUnk_080DB1F0
	.4byte gUnk_080DB200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C654
	.4byte sub_0804C658

gUnk_080DB228:: @ 080DB228
	.incbin "baserom.gba", 0x0DB228, 0x0000010

gUnk_080DB238:: @ 080DB238
	.incbin "baserom.gba", 0x0DB238, 0x000000C
	.4byte script_08012430
	.incbin "baserom.gba", 0x0DB248, 0x0000010

gUnk_080DB258:: @ 080DB258
	.incbin "baserom.gba", 0x0DB258, 0x0000020

gUnk_080DB278:: @ 080DB278
	.incbin "baserom.gba", 0x0DB278, 0x0000010

gUnk_080DB288:: @ 080DB288
	.incbin "baserom.gba", 0x0DB288, 0x0000008

Room_MinishHouseInteriors_Librari:: @ 080DB290
	.4byte gUnk_080DB228
	.4byte gUnk_080DB258
	.4byte gUnk_080DB278
	.4byte gUnk_080DB288
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C660
	.4byte sub_0804C664

gUnk_080DB2B0:: @ 080DB2B0
	.incbin "baserom.gba", 0x0DB2B0, 0x0000020

gUnk_080DB2D0:: @ 080DB2D0
	.incbin "baserom.gba", 0x0DB2D0, 0x0000020

gUnk_080DB2F0:: @ 080DB2F0
	.incbin "baserom.gba", 0x0DB2F0, 0x0000010

gUnk_080DB300:: @ 080DB300
	.incbin "baserom.gba", 0x0DB300, 0x0000008

Room_MinishHouseInteriors_HyruleFieldExit:: @ 080DB308
	.4byte gUnk_080DB2B0
	.4byte gUnk_080DB2D0
	.4byte gUnk_080DB2F0
	.4byte gUnk_080DB300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C684
	.4byte sub_0804C688

gUnk_080DB328:: @ 080DB328
	.incbin "baserom.gba", 0x0DB328, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB338, 0x0000010

gUnk_080DB348:: @ 080DB348
	.incbin "baserom.gba", 0x0DB348, 0x0000020

gUnk_080DB368:: @ 080DB368
	.incbin "baserom.gba", 0x0DB368, 0x0000010

gUnk_080DB378:: @ 080DB378
	.incbin "baserom.gba", 0x0DB378, 0x0000008

Room_MinishHouseInteriors_HyruleTown:: @ 080DB380
	.4byte gUnk_080DB328
	.4byte gUnk_080DB348
	.4byte gUnk_080DB368
	.4byte gUnk_080DB378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C690
	.4byte sub_0804C694

gUnk_080DB3A0:: @ 080DB3A0
	.incbin "baserom.gba", 0x0DB3A0, 0x0000020

gUnk_080DB3C0:: @ 080DB3C0
	.incbin "baserom.gba", 0x0DB3C0, 0x0000020

gUnk_080DB3E0:: @ 080DB3E0
	.incbin "baserom.gba", 0x0DB3E0, 0x0000010

gUnk_080DB3F0:: @ 080DB3F0
	.incbin "baserom.gba", 0x0DB3F0, 0x0000008

Room_MinishHouseInteriors_MinishWoodsBomb:: @ 080DB3F8
	.4byte gUnk_080DB3A0
	.4byte gUnk_080DB3C0
	.4byte gUnk_080DB3E0
	.4byte gUnk_080DB3F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C69C
	.4byte sub_0804C6A0

gUnk_080DB418:: @ 080DB418
	.incbin "baserom.gba", 0x0DB418, 0x0000020

gUnk_080DB438:: @ 080DB438
	.incbin "baserom.gba", 0x0DB438, 0x0000020

gUnk_080DB458:: @ 080DB458
	.incbin "baserom.gba", 0x0DB458, 0x0000010

gUnk_080DB468:: @ 080DB468
	.incbin "baserom.gba", 0x0DB468, 0x0000008

Room_MinishHouseInteriors_LakeHyliaOcarina:: @ 080DB470
	.4byte gUnk_080DB418
	.4byte gUnk_080DB438
	.4byte gUnk_080DB458
	.4byte gUnk_080DB468
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C6A8
	.4byte sub_0804C6AC

gUnk_080DB490:: @ 080DB490
	.incbin "baserom.gba", 0x0DB490, 0x0000010

gUnk_080DB4A0:: @ 080DB4A0
	.incbin "baserom.gba", 0x0DB4A0, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB4B0, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB4C0, 0x0000010

gUnk_080DB4D0:: @ 080DB4D0
	.incbin "baserom.gba", 0x0DB4D0, 0x000000C
	.4byte script_0800ED90
	.incbin "baserom.gba", 0x0DB4E0, 0x000000C
	.4byte script_0800EE50
	.incbin "baserom.gba", 0x0DB4F0, 0x0000010

gUnk_080DB500:: @ 080DB500
	.incbin "baserom.gba", 0x0DB500, 0x0000030

gUnk_080DB530:: @ 080DB530
	.incbin "baserom.gba", 0x0DB530, 0x0000010

gUnk_080DB540:: @ 080DB540
	.incbin "baserom.gba", 0x0DB540, 0x0000008

Room_TownMinishHoles_MayorsHouse:: @ 080DB548
	.4byte gUnk_080DB490
	.4byte gUnk_080DB500
	.4byte gUnk_080DB530
	.4byte gUnk_080DB540
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C6B4
	.4byte sub_0804C6B8

gUnk_080DB568:: @ 080DB568
	.incbin "baserom.gba", 0x0DB568, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB578, 0x0000010

gUnk_080DB588:: @ 080DB588
	.incbin "baserom.gba", 0x0DB588, 0x0000020

gUnk_080DB5A8:: @ 080DB5A8
	.incbin "baserom.gba", 0x0DB5A8, 0x0000010

gUnk_080DB5B8:: @ 080DB5B8
	.incbin "baserom.gba", 0x0DB5B8, 0x0000008

Room_TownMinishHoles_WestOracle:: @ 080DB5C0
	.4byte gUnk_080DB568
	.4byte gUnk_080DB588
	.4byte gUnk_080DB5A8
	.4byte gUnk_080DB5B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C6F4
	.4byte sub_0804C6F8

gUnk_080DB5E0:: @ 080DB5E0
	.incbin "baserom.gba", 0x0DB5E0, 0x000000C
	.4byte script_0800EFC0
	.incbin "baserom.gba", 0x0DB5F0, 0x0000010

gUnk_080DB600:: @ 080DB600
	.incbin "baserom.gba", 0x0DB600, 0x0000030

gUnk_080DB630:: @ 080DB630
	.incbin "baserom.gba", 0x0DB630, 0x0000010

gUnk_080DB640:: @ 080DB640
	.incbin "baserom.gba", 0x0DB640, 0x0000008

Room_TownMinishHoles_DrLeft:: @ 080DB648
	.4byte gUnk_080DB5E0
	.4byte gUnk_080DB600
	.4byte gUnk_080DB630
	.4byte gUnk_080DB640
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C700
	.4byte sub_0804C704

gUnk_080DB668:: @ 080DB668
	.incbin "baserom.gba", 0x0DB668, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB678, 0x0000010

gUnk_080DB688:: @ 080DB688
	.incbin "baserom.gba", 0x0DB688, 0x0000030

gUnk_080DB6B8:: @ 080DB6B8
	.incbin "baserom.gba", 0x0DB6B8, 0x0000010

gUnk_080DB6C8:: @ 080DB6C8
	.incbin "baserom.gba", 0x0DB6C8, 0x0000008

Room_TownMinishHoles_Carpenter:: @ 080DB6D0
	.4byte gUnk_080DB668
	.4byte gUnk_080DB688
	.4byte gUnk_080DB6B8
	.4byte gUnk_080DB6C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C70C
	.4byte sub_0804C710

gUnk_080DB6F0:: @ 080DB6F0
	.incbin "baserom.gba", 0x0DB6F0, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB700, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB710, 0x0000010

gUnk_080DB720:: @ 080DB720
	.incbin "baserom.gba", 0x0DB720, 0x0000030

gUnk_080DB750:: @ 080DB750
	.incbin "baserom.gba", 0x0DB750, 0x0000010

gUnk_080DB760:: @ 080DB760
	.incbin "baserom.gba", 0x0DB760, 0x0000008

Room_TownMinishHoles_Cafe:: @ 080DB768
	.4byte gUnk_080DB6F0
	.4byte gUnk_080DB720
	.4byte gUnk_080DB750
	.4byte gUnk_080DB760
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C718
	.4byte sub_0804C71C

gUnk_080DB788:: @ 080DB788
	.incbin "baserom.gba", 0x0DB788, 0x0000010

gUnk_080DB798:: @ 080DB798
	.incbin "baserom.gba", 0x0DB798, 0x0000030

gUnk_080DB7C8:: @ 080DB7C8
	.incbin "baserom.gba", 0x0DB7C8, 0x0000010

gUnk_080DB7D8:: @ 080DB7D8
	.incbin "baserom.gba", 0x0DB7D8, 0x0000008

Room_TownMinishHoles_5:: @ 080DB7E0
	.4byte gUnk_080DB788
	.4byte gUnk_080DB798
	.4byte gUnk_080DB7C8
	.4byte gUnk_080DB7D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C724
	.4byte sub_0804C728

gUnk_080DB800:: @ 080DB800
	.incbin "baserom.gba", 0x0DB800, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB810, 0x0000010

gUnk_080DB820:: @ 080DB820
	.incbin "baserom.gba", 0x0DB820, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DB830, 0x0000010

gUnk_080DB840:: @ 080DB840
	.incbin "baserom.gba", 0x0DB840, 0x00000B0

gUnk_080DB8F0:: @ 080DB8F0
	.incbin "baserom.gba", 0x0DB8F0, 0x0000020

gUnk_080DB910:: @ 080DB910
	.incbin "baserom.gba", 0x0DB910, 0x0000070

gUnk_080DB980:: @ 080DB980
	.incbin "baserom.gba", 0x0DB980, 0x0000010

gUnk_080DB990:: @ 080DB990
	.incbin "baserom.gba", 0x0DB990, 0x0000008

gUnk_080DB998:: @ 080DB998
	.incbin "baserom.gba", 0x0DB998, 0x0000010

gUnk_080DB9A8:: @ 080DB9A8
	.incbin "baserom.gba", 0x0DB9A8, 0x0000014

Room_TownMinishHoles_LibraryBookshelf:: @ 080DB9BC
	.4byte gUnk_080DB800
	.4byte gUnk_080DB840
	.4byte gUnk_080DB980
	.4byte gUnk_080DB990
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C730
	.4byte sub_0804C758
	.4byte gUnk_080DB998
	.4byte gUnk_080DB9A8
	.4byte gUnk_080DB820

gUnk_080DB9E8:: @ 080DB9E8
	.incbin "baserom.gba", 0x0DB9E8, 0x000000C
	.4byte script_0800E964
	.incbin "baserom.gba", 0x0DB9F8, 0x0000010

gUnk_080DBA08:: @ 080DBA08
	.incbin "baserom.gba", 0x0DBA08, 0x000000C
	.4byte script_0800E6E8
	.incbin "baserom.gba", 0x0DBA18, 0x0000010

gUnk_080DBA28:: @ 080DBA28
	.incbin "baserom.gba", 0x0DBA28, 0x0000040

gUnk_080DBA68:: @ 080DBA68
	.incbin "baserom.gba", 0x0DBA68, 0x0000010

gUnk_080DBA78:: @ 080DBA78
	.incbin "baserom.gba", 0x0DBA78, 0x0000008

Room_TownMinishHoles_LibrariBookHouse:: @ 080DBA80
	.4byte gUnk_080DB9E8
	.4byte gUnk_080DBA28
	.4byte gUnk_080DBA68
	.4byte gUnk_080DBA78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C788
	.4byte sub_0804C78C

gUnk_080DBAA0:: @ 080DBAA0
	.incbin "baserom.gba", 0x0DBAA0, 0x0000030

gUnk_080DBAD0:: @ 080DBAD0
	.incbin "baserom.gba", 0x0DBAD0, 0x000000C
	.4byte script_08013114
	.incbin "baserom.gba", 0x0DBAE0, 0x000000C
	.4byte script_08013114
	.incbin "baserom.gba", 0x0DBAF0, 0x000000C
	.4byte script_08013114
	.incbin "baserom.gba", 0x0DBB00, 0x0000010

gUnk_080DBB10:: @ 080DBB10
	.incbin "baserom.gba", 0x0DBB10, 0x000000C
	.4byte script_08013114
	.incbin "baserom.gba", 0x0DBB20, 0x000000C
	.4byte script_08013114
	.incbin "baserom.gba", 0x0DBB30, 0x000000C
	.4byte script_08013114
	.incbin "baserom.gba", 0x0DBB40, 0x0000010

gUnk_080DBB50:: @ 080DBB50
	.incbin "baserom.gba", 0x0DBB50, 0x0000020

gUnk_080DBB70:: @ 080DBB70
	.incbin "baserom.gba", 0x0DBB70, 0x0000020

gUnk_080DBB90:: @ 080DBB90
	.incbin "baserom.gba", 0x0DBB90, 0x000000C
	.4byte script_08013188
	.incbin "baserom.gba", 0x0DBBA0, 0x0000010

gUnk_080DBBB0:: @ 080DBBB0
	.incbin "baserom.gba", 0x0DBBB0, 0x0000010

gUnk_080DBBC0:: @ 080DBBC0
	.incbin "baserom.gba", 0x0DBBC0, 0x0000008

Room_TownMinishHoles_RemShoeShop:: @ 080DBBC8
	.4byte gUnk_080DBAA0
	.4byte 0x00000000
	.4byte gUnk_080DBBB0
	.4byte gUnk_080DBBC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C7B4
	.4byte sub_0804C7B8

gUnk_080DBBE8:: @ 080DBBE8
	.incbin "baserom.gba", 0x0DBBE8, 0x0000010

gUnk_080DBBF8:: @ 080DBBF8
	.incbin "baserom.gba", 0x0DBBF8, 0x0000040

gUnk_080DBC38:: @ 080DBC38
	.incbin "baserom.gba", 0x0DBC38, 0x0000010

Room_MinishCaves_BeanPesto:: @ 080DBC48
	.4byte gUnk_080DBBE8
	.4byte 0x00000000
	.4byte gUnk_080DBBF8
	.4byte gUnk_080DBC38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C830
	.4byte nullsub_210

gUnk_080DBC68:: @ 080DBC68
	.incbin "baserom.gba", 0x0DBC68, 0x0000010

gUnk_080DBC78:: @ 080DBC78
	.incbin "baserom.gba", 0x0DBC78, 0x0000010

gUnk_080DBC88:: @ 080DBC88
	.incbin "baserom.gba", 0x0DBC88, 0x0000010

Room_MinishCaves_SoutheastWater1:: @ 080DBC98
	.4byte gUnk_080DBC68
	.4byte 0x00000000
	.4byte gUnk_080DBC78
	.4byte gUnk_080DBC88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C838
	.4byte nullsub_211

gUnk_080DBCB8:: @ 080DBCB8
	.incbin "baserom.gba", 0x0DBCB8, 0x0000020

gUnk_080DBCD8:: @ 080DBCD8
	.incbin "baserom.gba", 0x0DBCD8, 0x0000080

gUnk_080DBD58:: @ 080DBD58
	.incbin "baserom.gba", 0x0DBD58, 0x0000008

Room_MinishCaves_SoutheastWater2:: @ 080DBD60
	.4byte gUnk_080DBCB8
	.4byte 0x00000000
	.4byte gUnk_080DBCD8
	.4byte gUnk_080DBD58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C840
	.4byte nullsub_212

gUnk_080DBD80:: @ 080DBD80
	.incbin "baserom.gba", 0x0DBD80, 0x0000020

gUnk_080DBDA0:: @ 080DBDA0
	.incbin "baserom.gba", 0x0DBDA0, 0x0000050

gUnk_080DBDF0:: @ 080DBDF0
	.incbin "baserom.gba", 0x0DBDF0, 0x0000010

Room_MinishCaves_Ruins:: @ 080DBE00
	.4byte gUnk_080DBD80
	.4byte 0x00000000
	.4byte gUnk_080DBDA0
	.4byte gUnk_080DBDF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C848
	.4byte nullsub_213

gUnk_080DBE20:: @ 080DBE20
	.incbin "baserom.gba", 0x0DBE20, 0x0000020

gUnk_080DBE40:: @ 080DBE40
	.incbin "baserom.gba", 0x0DBE40, 0x0000010

gUnk_080DBE50:: @ 080DBE50
	.incbin "baserom.gba", 0x0DBE50, 0x0000008

Room_MinishCaves_OutsideLinksHouse:: @ 080DBE58
	.4byte gUnk_080DBE20
	.4byte 0x00000000
	.4byte gUnk_080DBE40
	.4byte gUnk_080DBE50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C850
	.4byte nullsub_214

gUnk_080DBE78:: @ 080DBE78
	.incbin "baserom.gba", 0x0DBE78, 0x0000010

gUnk_080DBE88:: @ 080DBE88
	.incbin "baserom.gba", 0x0DBE88, 0x0000050

gUnk_080DBED8:: @ 080DBED8
	.incbin "baserom.gba", 0x0DBED8, 0x0000010

Room_MinishCaves_MinishWoodsNorth1:: @ 080DBEE8
	.4byte gUnk_080DBE78
	.4byte 0x00000000
	.4byte gUnk_080DBE88
	.4byte gUnk_080DBED8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C858
	.4byte nullsub_215

gUnk_080DBF08:: @ 080DBF08
	.incbin "baserom.gba", 0x0DBF08, 0x0000010

gUnk_080DBF18:: @ 080DBF18
	.incbin "baserom.gba", 0x0DBF18, 0x0000040

gUnk_080DBF58:: @ 080DBF58
	.incbin "baserom.gba", 0x0DBF58, 0x0000008

Room_MinishCaves_MinishWoodsNorth2:: @ 080DBF60
	.4byte gUnk_080DBF08
	.4byte 0x00000000
	.4byte gUnk_080DBF18
	.4byte gUnk_080DBF58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C860
	.4byte nullsub_216

gUnk_080DBF80:: @ 080DBF80
	.incbin "baserom.gba", 0x0DBF80, 0x0000010

gUnk_080DBF90:: @ 080DBF90
	.incbin "baserom.gba", 0x0DBF90, 0x0000100

gUnk_080DC090:: @ 080DC090
	.incbin "baserom.gba", 0x0DC090, 0x0000018

Room_MinishCaves_LakeHyliaNorth:: @ 080DC0A8
	.4byte gUnk_080DBF80
	.4byte 0x00000000
	.4byte gUnk_080DBF90
	.4byte gUnk_080DC090
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C868
	.4byte nullsub_217

gUnk_080DC0C8:: @ 080DC0C8
	.incbin "baserom.gba", 0x0DC0C8, 0x0000010

gUnk_080DC0D8:: @ 080DC0D8
	.incbin "baserom.gba", 0x0DC0D8, 0x0000030

gUnk_080DC108:: @ 080DC108
	.incbin "baserom.gba", 0x0DC108, 0x0000050

gUnk_080DC158:: @ 080DC158
	.incbin "baserom.gba", 0x0DC158, 0x0000008

Room_MinishCaves_LakeHyliaLibrari:: @ 080DC160
	.4byte gUnk_080DC0C8
	.4byte gUnk_080DC0D8
	.4byte gUnk_080DC108
	.4byte gUnk_080DC158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C870
	.4byte nullsub_218

gUnk_080DC180:: @ 080DC180
	.incbin "baserom.gba", 0x0DC180, 0x0000020

gUnk_080DC1A0:: @ 080DC1A0
	.incbin "baserom.gba", 0x0DC1A0, 0x00000A0

gUnk_080DC240:: @ 080DC240
	.incbin "baserom.gba", 0x0DC240, 0x0000020

Room_MinishCaves_MinishWoodsSouthwest:: @ 080DC260
	.4byte gUnk_080DC180
	.4byte 0x00000000
	.4byte gUnk_080DC1A0
	.4byte gUnk_080DC240
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C878
	.4byte nullsub_219

gUnk_080DC280:: @ 080DC280
	.incbin "baserom.gba", 0x0DC280, 0x0000110

gUnk_080DC390:: @ 080DC390
	.incbin "baserom.gba", 0x0DC390, 0x0000060

gUnk_080DC3F0:: @ 080DC3F0
	.incbin "baserom.gba", 0x0DC3F0, 0x0000040

gUnk_080DC430:: @ 080DC430
	.incbin "baserom.gba", 0x0DC430, 0x0000040

gUnk_080DC470:: @ 080DC470
	.incbin "baserom.gba", 0x0DC470, 0x0000050

gUnk_080DC4C0:: @ 080DC4C0
	.incbin "baserom.gba", 0x0DC4C0, 0x000000C
	.4byte script_0800C91C
	.incbin "baserom.gba", 0x0DC4D0, 0x0000060

gUnk_080DC530:: @ 080DC530
	.incbin "baserom.gba", 0x0DC530, 0x0000020

gUnk_080DC550:: @ 080DC550
	.incbin "baserom.gba", 0x0DC550, 0x0000010

gUnk_080DC560:: @ 080DC560
	.incbin "baserom.gba", 0x0DC560, 0x0000008

Room_MinishVillage_Main:: @ 080DC568
	.4byte gUnk_080DC280
	.4byte 0x00000000
	.4byte gUnk_080DC550
	.4byte gUnk_080DC560
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C880
	.4byte sub_0804C884

gUnk_080DC588:: @ 080DC588
	.incbin "baserom.gba", 0x0DC588, 0x0000020

gUnk_080DC5A8:: @ 080DC5A8
	.incbin "baserom.gba", 0x0DC5A8, 0x0000010

gUnk_080DC5B8:: @ 080DC5B8
	.incbin "baserom.gba", 0x0DC5B8, 0x0000008

Room_MinishVillage_SideHouse:: @ 080DC5C0
	.4byte gUnk_080DC588
	.4byte 0x00000000
	.4byte gUnk_080DC5A8
	.4byte gUnk_080DC5B8
	.4byte 0x00000000
	.4byte sub_0804C918
	.4byte sub_0804C910
	.4byte nullsub_220

gUnk_080DC5E0:: @ 080DC5E0
	.incbin "baserom.gba", 0x0DC5E0, 0x0000010

gUnk_080DC5F0:: @ 080DC5F0
	.incbin "baserom.gba", 0x0DC5F0, 0x0000010

gUnk_080DC600:: @ 080DC600
	.incbin "baserom.gba", 0x0DC600, 0x0000010

Room_CastleGardenMinishHoles_East:: @ 080DC610
	.4byte gUnk_080DC5E0
	.4byte 0x00000000
	.4byte gUnk_080DC5F0
	.4byte gUnk_080DC600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C948
	.4byte nullsub_221

gUnk_080DC630:: @ 080DC630
	.incbin "baserom.gba", 0x0DC630, 0x0000010

gUnk_080DC640:: @ 080DC640
	.incbin "baserom.gba", 0x0DC640, 0x0000010

gUnk_080DC650:: @ 080DC650
	.incbin "baserom.gba", 0x0DC650, 0x0000010

Room_CastleGardenMinishHoles_West:: @ 080DC660
	.4byte gUnk_080DC630
	.4byte 0x00000000
	.4byte gUnk_080DC640
	.4byte gUnk_080DC650
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C950
	.4byte nullsub_222

gUnk_080DC680:: @ 080DC680
	.incbin "baserom.gba", 0x0DC680, 0x0000010

gUnk_080DC690:: @ 080DC690
	.incbin "baserom.gba", 0x0DC690, 0x0000010

gUnk_080DC6A0:: @ 080DC6A0
	.incbin "baserom.gba", 0x0DC6A0, 0x0000010

Room_37_0:: @ 080DC6B0
	.4byte gUnk_080DC680
	.4byte 0x00000000
	.4byte gUnk_080DC690
	.4byte gUnk_080DC6A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C958
	.4byte nullsub_223

gUnk_080DC6D0:: @ 080DC6D0
	.incbin "baserom.gba", 0x0DC6D0, 0x0000010

gUnk_080DC6E0:: @ 080DC6E0
	.incbin "baserom.gba", 0x0DC6E0, 0x0000010

gUnk_080DC6F0:: @ 080DC6F0
	.incbin "baserom.gba", 0x0DC6F0, 0x0000010

Room_37_1:: @ 080DC700
	.4byte gUnk_080DC6D0
	.4byte 0x00000000
	.4byte gUnk_080DC6E0
	.4byte gUnk_080DC6F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C960
	.4byte nullsub_224

gUnk_080DC720:: @ 080DC720
	.incbin "baserom.gba", 0x0DC720, 0x0000010

gUnk_080DC730:: @ 080DC730
	.incbin "baserom.gba", 0x0DC730, 0x0000040

gUnk_080DC770:: @ 080DC770
	.incbin "baserom.gba", 0x0DC770, 0x0000010

gUnk_080DC780:: @ 080DC780
	.incbin "baserom.gba", 0x0DC780, 0x0000010

Room_MinishCracks_LonLonRanchNorth:: @ 080DC790
	.4byte gUnk_080DC720
	.4byte gUnk_080DC730
	.4byte gUnk_080DC770
	.4byte gUnk_080DC780
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C968
	.4byte nullsub_225

gUnk_080DC7B0:: @ 080DC7B0
	.incbin "baserom.gba", 0x0DC7B0, 0x0000020

gUnk_080DC7D0:: @ 080DC7D0
	.incbin "baserom.gba", 0x0DC7D0, 0x0000060

gUnk_080DC830:: @ 080DC830
	.incbin "baserom.gba", 0x0DC830, 0x0000010

gUnk_080DC840:: @ 080DC840
	.incbin "baserom.gba", 0x0DC840, 0x0000008

Room_MinishCracks_LakeHyliaEast:: @ 080DC848
	.4byte gUnk_080DC7B0
	.4byte gUnk_080DC7D0
	.4byte gUnk_080DC830
	.4byte gUnk_080DC840
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C970
	.4byte nullsub_226

gUnk_080DC868:: @ 080DC868
	.incbin "baserom.gba", 0x0DC868, 0x0000020

gUnk_080DC888:: @ 080DC888
	.incbin "baserom.gba", 0x0DC888, 0x0000050

gUnk_080DC8D8:: @ 080DC8D8
	.incbin "baserom.gba", 0x0DC8D8, 0x0000010

gUnk_080DC8E8:: @ 080DC8E8
	.incbin "baserom.gba", 0x0DC8E8, 0x0000008

Room_MinishCracks_HyruleCastleGarden:: @ 080DC8F0
	.4byte gUnk_080DC868
	.4byte gUnk_080DC888
	.4byte gUnk_080DC8D8
	.4byte gUnk_080DC8E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C978
	.4byte nullsub_227

gUnk_080DC910:: @ 080DC910
	.incbin "baserom.gba", 0x0DC910, 0x0000020

gUnk_080DC930:: @ 080DC930
	.incbin "baserom.gba", 0x0DC930, 0x0000050

gUnk_080DC980:: @ 080DC980
	.incbin "baserom.gba", 0x0DC980, 0x0000010

gUnk_080DC990:: @ 080DC990
	.incbin "baserom.gba", 0x0DC990, 0x0000010

Room_MinishCracks_MtCrenel:: @ 080DC9A0
	.4byte gUnk_080DC910
	.4byte gUnk_080DC930
	.4byte gUnk_080DC980
	.4byte gUnk_080DC990
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C980
	.4byte nullsub_228

gUnk_080DC9C0:: @ 080DC9C0
	.incbin "baserom.gba", 0x0DC9C0, 0x0000020

gUnk_080DC9E0:: @ 080DC9E0
	.incbin "baserom.gba", 0x0DC9E0, 0x0000050

gUnk_080DCA30:: @ 080DCA30
	.incbin "baserom.gba", 0x0DCA30, 0x0000010

gUnk_080DCA40:: @ 080DCA40
	.incbin "baserom.gba", 0x0DCA40, 0x0000008

Room_MinishCracks_EastHyruleCastle:: @ 080DCA48
	.4byte gUnk_080DC9C0
	.4byte gUnk_080DC9E0
	.4byte gUnk_080DCA30
	.4byte gUnk_080DCA40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C988
	.4byte nullsub_229

gUnk_080DCA68:: @ 080DCA68
	.incbin "baserom.gba", 0x0DCA68, 0x0000010

gUnk_080DCA78:: @ 080DCA78
	.incbin "baserom.gba", 0x0DCA78, 0x0000040

gUnk_080DCAB8:: @ 080DCAB8
	.incbin "baserom.gba", 0x0DCAB8, 0x0000010

gUnk_080DCAC8:: @ 080DCAC8
	.incbin "baserom.gba", 0x0DCAC8, 0x0000008

Room_MinishCracks_5:: @ 080DCAD0
	.4byte gUnk_080DCA68
	.4byte gUnk_080DCA78
	.4byte gUnk_080DCAB8
	.4byte gUnk_080DCAC8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C990
	.4byte nullsub_230

gUnk_080DCAF0:: @ 080DCAF0
	.incbin "baserom.gba", 0x0DCAF0, 0x0000020

gUnk_080DCB10:: @ 080DCB10
	.incbin "baserom.gba", 0x0DCB10, 0x0000030

gUnk_080DCB40:: @ 080DCB40
	.incbin "baserom.gba", 0x0DCB40, 0x0000020

gUnk_080DCB60:: @ 080DCB60
	.incbin "baserom.gba", 0x0DCB60, 0x0000060

gUnk_080DCBC0:: @ 080DCBC0
	.incbin "baserom.gba", 0x0DCBC0, 0x0000018

Room_MinishCracks_CastleWildsBowHole:: @ 080DCBD8
	.4byte gUnk_080DCAF0
	.4byte gUnk_080DCB40
	.4byte 0x00000000
	.4byte gUnk_080DCBC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C998
	.4byte sub_0804C99C
	.4byte gUnk_080DCB60

gUnk_080DCBFC:: @ 080DCBFC
	.incbin "baserom.gba", 0x0DCBFC, 0x0000020

gUnk_080DCC1C:: @ 080DCC1C
	.incbin "baserom.gba", 0x0DCC1C, 0x0000050

gUnk_080DCC6C:: @ 080DCC6C
	.incbin "baserom.gba", 0x0DCC6C, 0x0000010

gUnk_080DCC7C:: @ 080DCC7C
	.incbin "baserom.gba", 0x0DCC7C, 0x0000010

Room_MinishCracks_RuinsEntrance:: @ 080DCC8C
	.4byte gUnk_080DCBFC
	.4byte gUnk_080DCC1C
	.4byte gUnk_080DCC6C
	.4byte gUnk_080DCC7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9B4
	.4byte nullsub_231

gUnk_080DCCAC:: @ 080DCCAC
	.incbin "baserom.gba", 0x0DCCAC, 0x0000010

gUnk_080DCCBC:: @ 080DCCBC
	.incbin "baserom.gba", 0x0DCCBC, 0x0000020

gUnk_080DCCDC:: @ 080DCCDC
	.incbin "baserom.gba", 0x0DCCDC, 0x0000010

gUnk_080DCCEC:: @ 080DCCEC
	.incbin "baserom.gba", 0x0DCCEC, 0x0000010

Room_MinishCracks_MinishWoodsSouth:: @ 080DCCFC
	.4byte gUnk_080DCCAC
	.4byte gUnk_080DCCBC
	.4byte gUnk_080DCCDC
	.4byte gUnk_080DCCEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9BC
	.4byte nullsub_232

gUnk_080DCD1C:: @ 080DCD1C
	.incbin "baserom.gba", 0x0DCD1C, 0x0000010

gUnk_080DCD2C:: @ 080DCD2C
	.incbin "baserom.gba", 0x0DCD2C, 0x0000020

gUnk_080DCD4C:: @ 080DCD4C
	.incbin "baserom.gba", 0x0DCD4C, 0x0000010

gUnk_080DCD5C:: @ 080DCD5C
	.incbin "baserom.gba", 0x0DCD5C, 0x0000018

Room_MinishCracks_CastorWildsNorth:: @ 080DCD74
	.4byte gUnk_080DCD1C
	.4byte gUnk_080DCD2C
	.4byte gUnk_080DCD4C
	.4byte gUnk_080DCD5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9C4
	.4byte nullsub_233

gUnk_080DCD94:: @ 080DCD94
	.incbin "baserom.gba", 0x0DCD94, 0x0000010

gUnk_080DCDA4:: @ 080DCDA4
	.incbin "baserom.gba", 0x0DCDA4, 0x0000020

gUnk_080DCDC4:: @ 080DCDC4
	.incbin "baserom.gba", 0x0DCDC4, 0x0000010

gUnk_080DCDD4:: @ 080DCDD4
	.incbin "baserom.gba", 0x0DCDD4, 0x0000018

Room_MinishCracks_CastorWildsWest:: @ 080DCDEC
	.4byte gUnk_080DCD94
	.4byte gUnk_080DCDA4
	.4byte gUnk_080DCDC4
	.4byte gUnk_080DCDD4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9CC
	.4byte nullsub_234

gUnk_080DCE0C:: @ 080DCE0C
	.incbin "baserom.gba", 0x0DCE0C, 0x0000010

gUnk_080DCE1C:: @ 080DCE1C
	.incbin "baserom.gba", 0x0DCE1C, 0x0000020

gUnk_080DCE3C:: @ 080DCE3C
	.incbin "baserom.gba", 0x0DCE3C, 0x0000010

gUnk_080DCE4C:: @ 080DCE4C
	.incbin "baserom.gba", 0x0DCE4C, 0x0000018

Room_MinishCracks_CastorWildsMiddle:: @ 080DCE64
	.4byte gUnk_080DCE0C
	.4byte gUnk_080DCE1C
	.4byte gUnk_080DCE3C
	.4byte gUnk_080DCE4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9D4
	.4byte nullsub_235

gUnk_080DCE84:: @ 080DCE84
	.incbin "baserom.gba", 0x0DCE84, 0x0000010

gUnk_080DCE94:: @ 080DCE94
	.incbin "baserom.gba", 0x0DCE94, 0x0000020

gUnk_080DCEB4:: @ 080DCEB4
	.incbin "baserom.gba", 0x0DCEB4, 0x0000010

gUnk_080DCEC4:: @ 080DCEC4
	.incbin "baserom.gba", 0x0DCEC4, 0x0000018

Room_MinishCracks_RuinsTektite:: @ 080DCEDC
	.4byte gUnk_080DCE84
	.4byte gUnk_080DCE94
	.4byte gUnk_080DCEB4
	.4byte gUnk_080DCEC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9DC
	.4byte nullsub_236

gUnk_080DCEFC:: @ 080DCEFC
	.incbin "baserom.gba", 0x0DCEFC, 0x0000010

gUnk_080DCF0C:: @ 080DCF0C
	.incbin "baserom.gba", 0x0DCF0C, 0x0000020

gUnk_080DCF2C:: @ 080DCF2C
	.incbin "baserom.gba", 0x0DCF2C, 0x0000010

gUnk_080DCF3C:: @ 080DCF3C
	.incbin "baserom.gba", 0x0DCF3C, 0x0000018

Room_MinishCracks_CastorWildsNextToBow:: @ 080DCF54
	.4byte gUnk_080DCEFC
	.4byte gUnk_080DCF0C
	.4byte gUnk_080DCF2C
	.4byte gUnk_080DCF3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9E4
	.4byte nullsub_237

gUnk_080DCF74:: @ 080DCF74
	.incbin "baserom.gba", 0x0DCF74, 0x0000010

gUnk_080DCF84:: @ 080DCF84
	.incbin "baserom.gba", 0x0DCF84, 0x0000010

gUnk_080DCF94:: @ 080DCF94
	.incbin "baserom.gba", 0x0DCF94, 0x0000010

gUnk_080DCFA4:: @ 080DCFA4
	.incbin "baserom.gba", 0x0DCFA4, 0x0000008

Room_MinishCracks_E:: @ 080DCFAC
	.4byte gUnk_080DCF74
	.4byte gUnk_080DCF84
	.4byte gUnk_080DCF94
	.4byte gUnk_080DCFA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9EC
	.4byte nullsub_238

gUnk_080DCFCC:: @ 080DCFCC
	.incbin "baserom.gba", 0x0DCFCC, 0x0000010

gUnk_080DCFDC:: @ 080DCFDC
	.incbin "baserom.gba", 0x0DCFDC, 0x0000010

gUnk_080DCFEC:: @ 080DCFEC
	.incbin "baserom.gba", 0x0DCFEC, 0x0000010

gUnk_080DCFFC:: @ 080DCFFC
	.incbin "baserom.gba", 0x0DCFFC, 0x0000008

Room_MinishCracks_F:: @ 080DD004
	.4byte gUnk_080DCFCC
	.4byte gUnk_080DCFDC
	.4byte gUnk_080DCFEC
	.4byte gUnk_080DCFFC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9F4
	.4byte nullsub_239

gUnk_080DD024:: @ 080DD024
	.incbin "baserom.gba", 0x0DD024, 0x0000010

gUnk_080DD034:: @ 080DD034
	.incbin "baserom.gba", 0x0DD034, 0x0000010

gUnk_080DD044:: @ 080DD044
	.incbin "baserom.gba", 0x0DD044, 0x0000010

gUnk_080DD054:: @ 080DD054
	.incbin "baserom.gba", 0x0DD054, 0x0000008

Room_MinishCracks_10:: @ 080DD05C
	.4byte gUnk_080DD024
	.4byte gUnk_080DD034
	.4byte gUnk_080DD044
	.4byte gUnk_080DD054
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804C9FC
	.4byte nullsub_240

gUnk_080DD07C:: @ 080DD07C
	.incbin "baserom.gba", 0x0DD07C, 0x0000010

gUnk_080DD08C:: @ 080DD08C
	.incbin "baserom.gba", 0x0DD08C, 0x0000080

gUnk_080DD10C:: @ 080DD10C
	.incbin "baserom.gba", 0x0DD10C, 0x0000010

gUnk_080DD11C:: @ 080DD11C
	.incbin "baserom.gba", 0x0DD11C, 0x0000008

Room_MinishCracks_11:: @ 080DD124
	.4byte gUnk_080DD07C
	.4byte gUnk_080DD08C
	.4byte gUnk_080DD10C
	.4byte gUnk_080DD11C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CA04
	.4byte nullsub_241

gUnk_080DD144:: @ 080DD144
	.incbin "baserom.gba", 0x0DD144, 0x000000C
	.4byte script_0800CF88
	.incbin "baserom.gba", 0x0DD154, 0x000000C
	.4byte script_0800CF88
	.incbin "baserom.gba", 0x0DD164, 0x000000C
	.4byte script_0800CF50
	.incbin "baserom.gba", 0x0DD174, 0x000000C
	.4byte script_0800D414
	.incbin "baserom.gba", 0x0DD184, 0x0000090

gUnk_080DD214:: @ 080DD214
	.incbin "baserom.gba", 0x0DD214, 0x000000C
	.4byte script_0800D278
	.incbin "baserom.gba", 0x0DD224, 0x000000C
	.4byte script_0800D278
	.incbin "baserom.gba", 0x0DD234, 0x000000C
	.4byte script_0800CFAC
	.incbin "baserom.gba", 0x0DD244, 0x000000C
	.4byte script_0800D218
	.incbin "baserom.gba", 0x0DD254, 0x000000C
	.4byte script_0800D254
	.incbin "baserom.gba", 0x0DD264, 0x0000010

gUnk_080DD274:: @ 080DD274
	.incbin "baserom.gba", 0x0DD274, 0x000000C
	.4byte script_0800D350
	.incbin "baserom.gba", 0x0DD284, 0x0000010

gUnk_080DD294:: @ 080DD294
	.incbin "baserom.gba", 0x0DD294, 0x000000C
	.4byte script_0800CF50
	.incbin "baserom.gba", 0x0DD2A4, 0x0000010

gUnk_080DD2B4:: @ 080DD2B4
	.incbin "baserom.gba", 0x0DD2B4, 0x0000050

gUnk_080DD304:: @ 080DD304
	.incbin "baserom.gba", 0x0DD304, 0x0000010

gUnk_080DD314:: @ 080DD314
	.incbin "baserom.gba", 0x0DD314, 0x0000008

Room_MelarisMine_Main:: @ 080DD31C
	.4byte gUnk_080DD144
	.4byte gUnk_080DD2B4
	.4byte gUnk_080DD304
	.4byte gUnk_080DD314
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CA0C
	.4byte sub_0804CA10
	.4byte gUnk_080DD214
	.4byte gUnk_080DD274

gUnk_080DD344:: @ 080DD344
	.incbin "baserom.gba", 0x0DD344, 0x0000020

gUnk_080DD364:: @ 080DD364
	.incbin "baserom.gba", 0x0DD364, 0x000000C
	.4byte script_0800B00C
	.incbin "baserom.gba", 0x0DD374, 0x0000010

gUnk_080DD384:: @ 080DD384
	.incbin "baserom.gba", 0x0DD384, 0x0000050

gUnk_080DD3D4:: @ 080DD3D4
	.incbin "baserom.gba", 0x0DD3D4, 0x0000010

gUnk_080DD3E4:: @ 080DD3E4
	.incbin "baserom.gba", 0x0DD3E4, 0x0000008

Room_CloudTops_House:: @ 080DD3EC
	.4byte gUnk_080DD344
	.4byte gUnk_080DD384
	.4byte gUnk_080DD3D4
	.4byte gUnk_080DD3E4
	.4byte sub_0804CA74
	.4byte 0x00000000
	.4byte sub_0804CA50
	.4byte sub_0804CA54

gUnk_080DD40C:: @ 080DD40C
	.incbin "baserom.gba", 0x0DD40C, 0x0000090

gUnk_080DD49C:: @ 080DD49C
	.incbin "baserom.gba", 0x0DD49C, 0x0000130

gUnk_080DD5CC:: @ 080DD5CC
	.incbin "baserom.gba", 0x0DD5CC, 0x00000F0

gUnk_080DD6BC:: @ 080DD6BC
	.incbin "baserom.gba", 0x0DD6BC, 0x0000010

gUnk_080DD6CC:: @ 080DD6CC
	.incbin "baserom.gba", 0x0DD6CC, 0x0000040

Room_CloudTops_Middle:: @ 080DD70C
	.4byte gUnk_080DD40C
	.4byte gUnk_080DD49C
	.4byte gUnk_080DD6BC
	.4byte gUnk_080DD6CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CA94
	.4byte nullsub_242
	.4byte gUnk_080DD5CC

gUnk_080DD730:: @ 080DD730
	.incbin "baserom.gba", 0x0DD730, 0x0000020

gUnk_080DD750:: @ 080DD750
	.incbin "baserom.gba", 0x0DD750, 0x000000C
	.4byte script_0800D710
	.incbin "baserom.gba", 0x0DD760, 0x000000C
	.4byte script_0800D7DC
	.incbin "baserom.gba", 0x0DD770, 0x000000C
	.4byte script_0800D76C
	.incbin "baserom.gba", 0x0DD780, 0x0000010

gUnk_080DD790:: @ 080DD790
	.incbin "baserom.gba", 0x0DD790, 0x0000050

gUnk_080DD7E0:: @ 080DD7E0
	.incbin "baserom.gba", 0x0DD7E0, 0x0000040

gUnk_080DD820:: @ 080DD820
	.incbin "baserom.gba", 0x0DD820, 0x0000020

gUnk_080DD840:: @ 080DD840
	.incbin "baserom.gba", 0x0DD840, 0x0000040

gUnk_080DD880:: @ 080DD880
	.incbin "baserom.gba", 0x0DD880, 0x0000020

gUnk_080DD8A0:: @ 080DD8A0
	.incbin "baserom.gba", 0x0DD8A0, 0x0000050

gUnk_080DD8F0:: @ 080DD8F0
	.incbin "baserom.gba", 0x0DD8F0, 0x00000A8
	.4byte script_0800D6D0
	.incbin "baserom.gba", 0x0DD99C, 0x000000C
	.4byte script_0800D6F0
	.incbin "baserom.gba", 0x0DD9AC, 0x000000C
	.4byte script_0800D6F0
	.incbin "baserom.gba", 0x0DD9BC, 0x000000C
	.4byte script_0800D6B4
	.incbin "baserom.gba", 0x0DD9CC, 0x000000C
	.4byte script_0800D6B4
	.incbin "baserom.gba", 0x0DD9DC, 0x000000C
	.4byte script_0800D6B4
	.incbin "baserom.gba", 0x0DD9EC, 0x0000003

gUnk_080DD9EF:: @ 080DD9EF
	.incbin "baserom.gba", 0x0DD9EF, 0x0000009
	.4byte script_0800D6B4
	.incbin "baserom.gba", 0x0DD9FC, 0x000000C
	.4byte script_0800D6B4
	.incbin "baserom.gba", 0x0DDA0C, 0x0000064

gUnk_080DDA70:: @ 080DDA70
	.incbin "baserom.gba", 0x0DDA70, 0x0000008
	.4byte script_0800D60C
	.incbin "baserom.gba", 0x0DDA7C, 0x000000C
	.4byte script_0800D60C
	.incbin "baserom.gba", 0x0DDA8C, 0x000000C
	.4byte script_0800D60C
	.incbin "baserom.gba", 0x0DDA9C, 0x000000C
	.4byte script_0800D60C
	.incbin "baserom.gba", 0x0DDAAC, 0x000000C
	.4byte script_0800D60C
	.incbin "baserom.gba", 0x0DDABC, 0x000000C
	.4byte script_08014C94
	.incbin "baserom.gba", 0x0DDACC, 0x000000C
	.4byte script_08014C94
	.incbin "baserom.gba", 0x0DDADC, 0x0000002

gUnk_080DDADE:: @ 080DDADE
	.incbin "baserom.gba", 0x0DDADE, 0x0000012

gUnk_080DDAF0:: @ 080DDAF0
	.incbin "baserom.gba", 0x0DDAF0, 0x0000070

gUnk_080DDB60:: @ 080DDB60
	.incbin "baserom.gba", 0x0DDB60, 0x0000008

gUnk_080DDB68:: @ 080DDB68
	.incbin "baserom.gba", 0x0DDB68, 0x0000030

gUnk_080DDB98:: @ 080DDB98
	.incbin "baserom.gba", 0x0DDB98, 0x0000030

Room_CloudTops_Bottom:: @ 080DDBC8
	.4byte gUnk_080DD790
	.4byte gUnk_080DD8A0
	.4byte gUnk_080DDAF0
	.4byte gUnk_080DDB60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CA9C
	.4byte sub_0804CAA0
	.4byte gUnk_080DD8F0
	.4byte gUnk_080DDA70
	.4byte gUnk_080DDB68
	.4byte gUnk_080DDB98
	.4byte gUnk_080DD820
	.4byte gUnk_080DD880

gUnk_080DDC00:: @ 080DDC00
	.incbin "baserom.gba", 0x0DDC00, 0x0000020

gUnk_080DDC20:: @ 080DDC20
	.incbin "baserom.gba", 0x0DDC20, 0x0000030

gUnk_080DDC50:: @ 080DDC50
	.incbin "baserom.gba", 0x0DDC50, 0x0000080

gUnk_080DDCD0:: @ 080DDCD0
	.incbin "baserom.gba", 0x0DDCD0, 0x0000010

gUnk_080DDCE0:: @ 080DDCE0
	.incbin "baserom.gba", 0x0DDCE0, 0x0000010

gUnk_080DDCF0:: @ 080DDCF0
	.incbin "baserom.gba", 0x0DDCF0, 0x0000014

gUnk_080DDD04:: @ 080DDD04
	.incbin "baserom.gba", 0x0DDD04, 0x0000014

gUnk_080DDD18:: @ 080DDD18
	.incbin "baserom.gba", 0x0DDD18, 0x0000014

gUnk_080DDD2C:: @ 080DDD2C
	.incbin "baserom.gba", 0x0DDD2C, 0x0000014

Room_Ruins_Entrance:: @ 080DDD40
	.4byte gUnk_080DDC00
	.4byte gUnk_080DDC20
	.4byte gUnk_080DDC50
	.4byte gUnk_080DDCD0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CAF4
	.4byte sub_0804CAF8
	.4byte gUnk_080DDCE0
	.4byte gUnk_080DDCF0
	.4byte gUnk_080DDD04
	.4byte gUnk_080DDD18
	.4byte gUnk_080DDD2C

gUnk_080DDD74:: @ 080DDD74
	.incbin "baserom.gba", 0x0DDD74, 0x0000010

gUnk_080DDD84:: @ 080DDD84
	.incbin "baserom.gba", 0x0DDD84, 0x0000030

gUnk_080DDDB4:: @ 080DDDB4
	.incbin "baserom.gba", 0x0DDDB4, 0x0000040

gUnk_080DDDF4:: @ 080DDDF4
	.incbin "baserom.gba", 0x0DDDF4, 0x0000008

gUnk_080DDDFC:: @ 080DDDFC
	.incbin "baserom.gba", 0x0DDDFC, 0x0000010

gUnk_080DDE0C:: @ 080DDE0C
	.incbin "baserom.gba", 0x0DDE0C, 0x0000014

Room_Ruins_Beanstalk:: @ 080DDE20
	.4byte gUnk_080DDD74
	.4byte gUnk_080DDD84
	.4byte gUnk_080DDDB4
	.4byte gUnk_080DDDF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CB08
	.4byte nullsub_37
	.4byte gUnk_080DDDFC
	.4byte gUnk_080DDE0C

gUnk_080DDE48:: @ 080DDE48
	.incbin "baserom.gba", 0x0DDE48, 0x0000040

gUnk_080DDE88:: @ 080DDE88
	.incbin "baserom.gba", 0x0DDE88, 0x0000020

gUnk_080DDEA8:: @ 080DDEA8
	.incbin "baserom.gba", 0x0DDEA8, 0x0000010

gUnk_080DDEB8:: @ 080DDEB8
	.incbin "baserom.gba", 0x0DDEB8, 0x0000010

gUnk_080DDEC8:: @ 080DDEC8
	.incbin "baserom.gba", 0x0DDEC8, 0x0000040

gUnk_080DDF08:: @ 080DDF08
	.incbin "baserom.gba", 0x0DDF08, 0x0000008

gUnk_080DDF10:: @ 080DDF10
	.incbin "baserom.gba", 0x0DDF10, 0x0000010

gUnk_080DDF20:: @ 080DDF20
	.incbin "baserom.gba", 0x0DDF20, 0x0000014

Room_Ruins_TripleTektites:: @ 080DDF34
	.4byte gUnk_080DDE48
	.4byte gUnk_080DDEA8
	.4byte gUnk_080DDEB8
	.4byte gUnk_080DDF08
	.4byte sub_0804CB2C
	.4byte 0x00000000
	.4byte sub_0804CB10
	.4byte sub_0804CB14
	.4byte gUnk_080DDF10
	.4byte gUnk_080DDF20
	.4byte gUnk_080DDEC8

gUnk_080DDF60:: @ 080DDF60
	.incbin "baserom.gba", 0x0DDF60, 0x0000010

gUnk_080DDF70:: @ 080DDF70
	.incbin "baserom.gba", 0x0DDF70, 0x0000010

gUnk_080DDF80:: @ 080DDF80
	.incbin "baserom.gba", 0x0DDF80, 0x0000040

gUnk_080DDFC0:: @ 080DDFC0
	.incbin "baserom.gba", 0x0DDFC0, 0x0000008

Room_Ruins_LadderToTektites:: @ 080DDFC8
	.4byte gUnk_080DDF60
	.4byte gUnk_080DDF70
	.4byte gUnk_080DDF80
	.4byte gUnk_080DDFC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CB44
	.4byte nullsub_38

gUnk_080DDFE8:: @ 080DDFE8
	.incbin "baserom.gba", 0x0DDFE8, 0x0000018

gUnk_080DE000:: @ 080DE000
	.incbin "baserom.gba", 0x0DE000, 0x0000008

gUnk_080DE008:: @ 080DE008
	.incbin "baserom.gba", 0x0DE008, 0x000000C
	.4byte script_0800AF8C
	.incbin "baserom.gba", 0x0DE018, 0x0000010

gUnk_080DE028:: @ 080DE028
	.incbin "baserom.gba", 0x0DE028, 0x0000020

gUnk_080DE048:: @ 080DE048
	.incbin "baserom.gba", 0x0DE048, 0x00000A0

gUnk_080DE0E8:: @ 080DE0E8
	.incbin "baserom.gba", 0x0DE0E8, 0x0000030

gUnk_080DE118:: @ 080DE118
	.incbin "baserom.gba", 0x0DE118, 0x0000014

Room_Ruins_FortressEntrance:: @ 080DE12C
	.4byte gUnk_080DDFE8
	.4byte gUnk_080DE028
	.4byte gUnk_080DE048
	.4byte gUnk_080DE0E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CB4C
	.4byte sub_0804CB50
	.4byte gUnk_080DE118

gUnk_080DE150:: @ 080DE150
	.incbin "baserom.gba", 0x0DE150, 0x0000090

gUnk_080DE1E0:: @ 080DE1E0
	.incbin "baserom.gba", 0x0DE1E0, 0x0000020

gUnk_080DE200:: @ 080DE200
	.incbin "baserom.gba", 0x0DE200, 0x0000020

gUnk_080DE220:: @ 080DE220
	.incbin "baserom.gba", 0x0DE220, 0x0000020

gUnk_080DE240:: @ 080DE240
	.incbin "baserom.gba", 0x0DE240, 0x0000020

gUnk_080DE260:: @ 080DE260
	.incbin "baserom.gba", 0x0DE260, 0x0000050

gUnk_080DE2B0:: @ 080DE2B0
	.incbin "baserom.gba", 0x0DE2B0, 0x0000070

gUnk_080DE320:: @ 080DE320
	.incbin "baserom.gba", 0x0DE320, 0x0000018

gUnk_080DE338:: @ 080DE338
	.incbin "baserom.gba", 0x0DE338, 0x0000014

gUnk_080DE34C:: @ 080DE34C
	.incbin "baserom.gba", 0x0DE34C, 0x0000014

gUnk_080DE360:: @ 080DE360
	.incbin "baserom.gba", 0x0DE360, 0x0000014

gUnk_080DE374:: @ 080DE374
	.incbin "baserom.gba", 0x0DE374, 0x0000014

gUnk_080DE388:: @ 080DE388
	.incbin "baserom.gba", 0x0DE388, 0x0000014

Room_Ruins_Armos:: @ 080DE39C
	.4byte gUnk_080DE150
	.4byte gUnk_080DE220
	.4byte gUnk_080DE240
	.4byte gUnk_080DE320
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CB78
	.4byte sub_0804CB7C
	.4byte gUnk_080DE338
	.4byte gUnk_080DE34C
	.4byte gUnk_080DE360
	.4byte gUnk_080DE374
	.4byte gUnk_080DE388
	.4byte gUnk_080DE260
	.4byte gUnk_080DE2B0

gUnk_080DE3D8:: @ 080DE3D8
	.incbin "baserom.gba", 0x0DE3D8, 0x00000F0

gUnk_080DE4C8:: @ 080DE4C8
	.incbin "baserom.gba", 0x0DE4C8, 0x0000020

gUnk_080DE4E8:: @ 080DE4E8
	.incbin "baserom.gba", 0x0DE4E8, 0x0000050

gUnk_080DE538:: @ 080DE538
	.incbin "baserom.gba", 0x0DE538, 0x0000018

Room_DeepwoodShrine_Madderpillar:: @ 080DE550
	.4byte gUnk_080DE3D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080DE538
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CBAC
	.4byte sub_0804CBB0
	.4byte gUnk_080DE4E8

gUnk_080DE574:: @ 080DE574
	.incbin "baserom.gba", 0x0DE574, 0x000008D

gUnk_080DE601:: @ 080DE601
	.incbin "baserom.gba", 0x0DE601, 0x00000E3

gUnk_080DE6E4:: @ 080DE6E4
	.incbin "baserom.gba", 0x0DE6E4, 0x0000020

gUnk_080DE704:: @ 080DE704
	.incbin "baserom.gba", 0x0DE704, 0x0000020

gUnk_080DE724:: @ 080DE724
	.incbin "baserom.gba", 0x0DE724, 0x0000020

gUnk_080DE744:: @ 080DE744
	.incbin "baserom.gba", 0x0DE744, 0x0000020

gUnk_080DE764:: @ 080DE764
	.incbin "baserom.gba", 0x0DE764, 0x0000030

gUnk_080DE794:: @ 080DE794
	.incbin "baserom.gba", 0x0DE794, 0x0000020

Room_DeepwoodShrine_BluePortal:: @ 080DE7B4
	.4byte gUnk_080DE574
	.4byte 0x00000000
	.4byte gUnk_080DE764
	.4byte gUnk_080DE794
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CBE4
	.4byte nullsub_243
	.4byte gUnk_080DE6E4
	.4byte gUnk_080DE704
	.4byte gUnk_080DE724
	.4byte gUnk_080DE744

gUnk_080DE7E4:: @ 080DE7E4
	.incbin "baserom.gba", 0x0DE7E4, 0x0000030

gUnk_080DE814:: @ 080DE814
	.incbin "baserom.gba", 0x0DE814, 0x0000020

gUnk_080DE834:: @ 080DE834
	.incbin "baserom.gba", 0x0DE834, 0x0000030

gUnk_080DE864:: @ 080DE864
	.incbin "baserom.gba", 0x0DE864, 0x0000030

gUnk_080DE894:: @ 080DE894
	.incbin "baserom.gba", 0x0DE894, 0x0000018

Room_DeepwoodShrine_StairsToB1:: @ 080DE8AC
	.4byte gUnk_080DE7E4
	.4byte 0x00000000
	.4byte gUnk_080DE864
	.4byte gUnk_080DE894
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CBEC
	.4byte sub_0804CBF0
	.4byte gUnk_080DE834

gUnk_080DE8D0:: @ 080DE8D0
	.incbin "baserom.gba", 0x0DE8D0, 0x0000060

gUnk_080DE930:: @ 080DE930
	.incbin "baserom.gba", 0x0DE930, 0x0000040

gUnk_080DE970:: @ 080DE970
	.incbin "baserom.gba", 0x0DE970, 0x0000010

Room_DeepwoodShrine_PotBridge:: @ 080DE980
	.4byte gUnk_080DE8D0
	.4byte 0x00000000
	.4byte gUnk_080DE930
	.4byte gUnk_080DE970
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CC54
	.4byte nullsub_244

gUnk_080DE9A0:: @ 080DE9A0
	.incbin "baserom.gba", 0x0DE9A0, 0x0000080

gUnk_080DEA20:: @ 080DEA20
	.incbin "baserom.gba", 0x0DEA20, 0x0000010

gUnk_080DEA30:: @ 080DEA30
	.incbin "baserom.gba", 0x0DEA30, 0x0000018

Room_DeepwoodShrine_DoubleStatue:: @ 080DEA48
	.4byte gUnk_080DE9A0
	.4byte 0x00000000
	.4byte gUnk_080DEA20
	.4byte gUnk_080DEA30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CC5C
	.4byte nullsub_245

gUnk_080DEA68:: @ 080DEA68
	.incbin "baserom.gba", 0x0DEA68, 0x0000070

gUnk_080DEAD8:: @ 080DEAD8
	.incbin "baserom.gba", 0x0DEAD8, 0x0000020

gUnk_080DEAF8:: @ 080DEAF8
	.incbin "baserom.gba", 0x0DEAF8, 0x0000018

Room_DeepwoodShrine_Map:: @ 080DEB10
	.4byte gUnk_080DEA68
	.4byte 0x00000000
	.4byte gUnk_080DEAD8
	.4byte gUnk_080DEAF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CC64
	.4byte nullsub_246

gUnk_080DEB30:: @ 080DEB30
	.incbin "baserom.gba", 0x0DEB30, 0x00000B0

gUnk_080DEBE0:: @ 080DEBE0
	.incbin "baserom.gba", 0x0DEBE0, 0x0000030

gUnk_080DEC10:: @ 080DEC10
	.incbin "baserom.gba", 0x0DEC10, 0x0000040

gUnk_080DEC50:: @ 080DEC50
	.incbin "baserom.gba", 0x0DEC50, 0x0000018

Room_DeepwoodShrine_Barrel:: @ 080DEC68
	.4byte gUnk_080DEB30
	.4byte 0x00000000
	.4byte gUnk_080DEC10
	.4byte gUnk_080DEC50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CC6C
	.4byte sub_0804CC70
	.4byte gUnk_080DEBE0

gUnk_080DEC8C:: @ 080DEC8C
	.incbin "baserom.gba", 0x0DEC8C, 0x00000C0

gUnk_080DED4C:: @ 080DED4C
	.incbin "baserom.gba", 0x0DED4C, 0x0000010

gUnk_080DED5C:: @ 080DED5C
	.incbin "baserom.gba", 0x0DED5C, 0x0000010

Room_DeepwoodShrine_Button:: @ 080DED6C
	.4byte gUnk_080DEC8C
	.4byte 0x00000000
	.4byte gUnk_080DED4C
	.4byte gUnk_080DED5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CCEC
	.4byte nullsub_247

gUnk_080DED8C:: @ 080DED8C
	.incbin "baserom.gba", 0x0DED8C, 0x0000070

gUnk_080DEDFC:: @ 080DEDFC
	.incbin "baserom.gba", 0x0DEDFC, 0x0000040

gUnk_080DEE3C:: @ 080DEE3C
	.incbin "baserom.gba", 0x0DEE3C, 0x0000010

gUnk_080DEE4C:: @ 080DEE4C
	.incbin "baserom.gba", 0x0DEE4C, 0x0000010

Room_DeepwoodShrine_Mulldozer:: @ 080DEE5C
	.4byte gUnk_080DED8C
	.4byte 0x00000000
	.4byte gUnk_080DEE3C
	.4byte gUnk_080DEE4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CCF4
	.4byte nullsub_248
	.4byte gUnk_080DEDFC

gUnk_080DEE80:: @ 080DEE80
	.incbin "baserom.gba", 0x0DEE80, 0x0000060

gUnk_080DEEE0:: @ 080DEEE0
	.incbin "baserom.gba", 0x0DEEE0, 0x0000070

gUnk_080DEF50:: @ 080DEF50
	.incbin "baserom.gba", 0x0DEF50, 0x0000010

Room_DeepwoodShrine_Pillars:: @ 080DEF60
	.4byte gUnk_080DEE80
	.4byte 0x00000000
	.4byte gUnk_080DEEE0
	.4byte gUnk_080DEF50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CCFC
	.4byte nullsub_249

gUnk_080DEF80:: @ 080DEF80
	.incbin "baserom.gba", 0x0DEF80, 0x00000C0

gUnk_080DF040:: @ 080DF040
	.incbin "baserom.gba", 0x0DF040, 0x0000040

gUnk_080DF080:: @ 080DF080
	.incbin "baserom.gba", 0x0DF080, 0x0000010

Room_DeepwoodShrine_Lever:: @ 080DF090
	.4byte gUnk_080DEF80
	.4byte 0x00000000
	.4byte gUnk_080DF040
	.4byte gUnk_080DF080
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD04
	.4byte nullsub_250

gUnk_080DF0B0:: @ 080DF0B0
	.incbin "baserom.gba", 0x0DF0B0, 0x00000D0

gUnk_080DF180:: @ 080DF180
	.incbin "baserom.gba", 0x0DF180, 0x0000010

gUnk_080DF190:: @ 080DF190
	.incbin "baserom.gba", 0x0DF190, 0x0000010

gUnk_080DF1A0:: @ 080DF1A0
	.incbin "baserom.gba", 0x0DF1A0, 0x0000010

Room_DeepwoodShrine_Entrance:: @ 080DF1B0
	.4byte gUnk_080DF0B0
	.4byte 0x00000000
	.4byte gUnk_080DF190
	.4byte gUnk_080DF1A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD0C
	.4byte nullsub_251
	.4byte gUnk_080DF180

gUnk_080DF1D4:: @ 080DF1D4
	.incbin "baserom.gba", 0x0DF1D4, 0x0000022

gUnk_080DF1F6:: @ 080DF1F6
	.incbin "baserom.gba", 0x0DF1F6, 0x00000AE

gUnk_080DF2A4:: @ 080DF2A4
	.incbin "baserom.gba", 0x0DF2A4, 0x0000020

gUnk_080DF2C4:: @ 080DF2C4
	.incbin "baserom.gba", 0x0DF2C4, 0x0000040

gUnk_080DF304:: @ 080DF304
	.incbin "baserom.gba", 0x0DF304, 0x0000020

Room_DeepwoodShrine_Torch:: @ 080DF324
	.4byte gUnk_080DF1D4
	.4byte 0x00000000
	.4byte gUnk_080DF2A4
	.4byte gUnk_080DF304
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD14
	.4byte nullsub_252

gUnk_080DF344:: @ 080DF344
	.incbin "baserom.gba", 0x0DF344, 0x00000A2

gUnk_080DF3E6:: @ 080DF3E6
	.incbin "baserom.gba", 0x0DF3E6, 0x000000A

gUnk_080DF3F0:: @ 080DF3F0
	.incbin "baserom.gba", 0x0DF3F0, 0x0000054

gUnk_080DF444:: @ 080DF444
	.incbin "baserom.gba", 0x0DF444, 0x0000010

gUnk_080DF454:: @ 080DF454
	.incbin "baserom.gba", 0x0DF454, 0x0000018

Room_DeepwoodShrine_BossKey:: @ 080DF46C
	.4byte gUnk_080DF344
	.4byte 0x00000000
	.4byte gUnk_080DF444
	.4byte gUnk_080DF454
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD1C
	.4byte nullsub_253

gUnk_080DF48C:: @ 080DF48C
	.incbin "baserom.gba", 0x0DF48C, 0x00000F0

gUnk_080DF57C:: @ 080DF57C
	.incbin "baserom.gba", 0x0DF57C, 0x0000020

gUnk_080DF59C:: @ 080DF59C
	.incbin "baserom.gba", 0x0DF59C, 0x0000020

Room_DeepwoodShrine_Compass:: @ 080DF5BC
	.4byte gUnk_080DF48C
	.4byte 0x00000000
	.4byte gUnk_080DF57C
	.4byte gUnk_080DF59C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD249
	.4byte nullsub_254

gUnk_080DF5DC:: @ 080DF5DC
	.incbin "baserom.gba", 0x0DF5DC, 0x0000030

gUnk_080DF60C:: @ 080DF60C
	.incbin "baserom.gba", 0x0DF60C, 0x0000010

gUnk_080DF61C:: @ 080DF61C
	.incbin "baserom.gba", 0x0DF61C, 0x0000010

Room_DeepwoodShrine_13:: @ 080DF62C
	.4byte gUnk_080DF5DC
	.4byte 0x00000000
	.4byte gUnk_080DF60C
	.4byte gUnk_080DF61C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD2C90
	.4byte nullsub_255

gUnk_080DF64C:: @ 080DF64C
	.incbin "baserom.gba", 0x0DF64C, 0x0000040

gUnk_080DF68C:: @ 080DF68C
	.incbin "baserom.gba", 0x0DF68C, 0x000006F

gUnk_080DF6FB:: @ 080DF6FB
	.incbin "baserom.gba", 0x0DF6FB, 0x0000001

gUnk_080DF6FC:: @ 080DF6FC
	.incbin "baserom.gba", 0x0DF6FC, 0x0000010

Room_DeepwoodShrine_LilyPadWest:: @ 080DF70C
	.4byte gUnk_080DF64C
	.4byte 0x00000000
	.4byte gUnk_080DF68C
	.4byte gUnk_080DF6FC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD349
	.4byte nullsub_256

gUnk_080DF72C:: @ 080DF72C
	.incbin "baserom.gba", 0x0DF72C, 0x00000D2

gUnk_080DF7FE:: @ 080DF7FE
	.incbin "baserom.gba", 0x0DF7FE, 0x000003E

gUnk_080DF83C:: @ 080DF83C
	.incbin "baserom.gba", 0x0DF83C, 0x0000020

gUnk_080DF85C:: @ 080DF85C
	.incbin "baserom.gba", 0x0DF85C, 0x0000010

Room_DeepwoodShrine_LilyPadEast:: @ 080DF86C
	.4byte gUnk_080DF72C
	.4byte 0x00000000
	.4byte gUnk_080DF83C
	.4byte gUnk_080DF85C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD3C
	.4byte nullsub_257

gUnk_080DF88C:: @ 080DF88C
	.incbin "baserom.gba", 0x0DF88C, 0x000008A

gUnk_080DF916:: @ 080DF916
	.incbin "baserom.gba", 0x0DF916, 0x0000006

gUnk_080DF91C:: @ 080DF91C
	.incbin "baserom.gba", 0x0DF91C, 0x0000030

gUnk_080DF94C:: @ 080DF94C
	.incbin "baserom.gba", 0x0DF94C, 0x0000030

gUnk_080DF97C:: @ 080DF97C
	.incbin "baserom.gba", 0x0DF97C, 0x0000020

gUnk_080DF99C:: @ 080DF99C
	.incbin "baserom.gba", 0x0DF99C, 0x0000010

Room_DeepwoodShrineBoss_Main:: @ 080DF9AC
	.4byte gUnk_080DF88C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080DF99C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CD44
	.4byte sub_0804CD48
	.4byte gUnk_080DF97C
	.4byte gUnk_080DF91C
	.4byte gUnk_080DF94C

gUnk_080DF9D8:: @ 080DF9D8
	.incbin "baserom.gba", 0x0DF9D8, 0x0000004

gUnk_080DF9DC:: @ 080DF9DC
	.incbin "baserom.gba", 0x0DF9DC, 0x0000015

gUnk_080DF9F1:: @ 080DF9F1
	.incbin "baserom.gba", 0x0DF9F1, 0x0000008

gUnk_080DF9F9:: @ 080DF9F9
	.incbin "baserom.gba", 0x0DF9F9, 0x000004F

gUnk_080DFA48:: @ 080DFA48
	.incbin "baserom.gba", 0x0DFA48, 0x0000010

gUnk_080DFA58:: @ 080DFA58
	.incbin "baserom.gba", 0x0DFA58, 0x0000018

Room_DeepwoodShrine_PreBoss:: @ 080DFA70
	.4byte gUnk_080DF9D8
	.4byte 0x00000000
	.4byte gUnk_080DFA48
	.4byte gUnk_080DFA58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CDC8
	.4byte nullsub_258

gUnk_080DFA90:: @ 080DFA90
	.incbin "baserom.gba", 0x0DFA90, 0x0000068

gUnk_080DFAF8:: @ 080DFAF8
	.incbin "baserom.gba", 0x0DFAF8, 0x000000A

gUnk_080DFB02:: @ 080DFB02
	.incbin "baserom.gba", 0x0DFB02, 0x000002E

gUnk_080DFB30:: @ 080DFB30
	.incbin "baserom.gba", 0x0DFB30, 0x0000010

gUnk_080DFB40:: @ 080DFB40
	.incbin "baserom.gba", 0x0DFB40, 0x0000008

Room_DeepwoodShrine_InsideBarrel:: @ 080DFB48
	.4byte gUnk_080DFA90
	.4byte 0x00000000
	.4byte gUnk_080DFB30
	.4byte gUnk_080DFB40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CDD0
	.4byte sub_0804CDD4

gUnk_080DFB68:: @ 080DFB68
	.incbin "baserom.gba", 0x0DFB68, 0x0000010

gUnk_080DFB78:: @ 080DFB78
	.incbin "baserom.gba", 0x0DFB78, 0x000000C
	.4byte script_0800AF44
	.incbin "baserom.gba", 0x0DFB88, 0x0000010

gUnk_080DFB98:: @ 080DFB98
	.incbin "baserom.gba", 0x0DFB98, 0x0000010

gUnk_080DFBA8:: @ 080DFBA8
	.incbin "baserom.gba", 0x0DFBA8, 0x0000008

Room_DeepwoodShrineEntry_Main:: @ 080DFBB0
	.4byte gUnk_080DFB68
	.4byte 0x00000000
	.4byte gUnk_080DFB98
	.4byte gUnk_080DFBA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CDF4
	.4byte sub_0804CDF8

gUnk_080DFBD0:: @ 080DFBD0
	.incbin "baserom.gba", 0x0DFBD0, 0x00000A0

gUnk_080DFC70:: @ 080DFC70
	.incbin "baserom.gba", 0x0DFC70, 0x0000030

gUnk_080DFCA0:: @ 080DFCA0
	.incbin "baserom.gba", 0x0DFCA0, 0x0000010

gUnk_080DFCB0:: @ 080DFCB0
	.incbin "baserom.gba", 0x0DFCB0, 0x0000010

gUnk_080DFCC0:: @ 080DFCC0
	.incbin "baserom.gba", 0x0DFCC0, 0x0000030

Room_CaveOfFlames_AfterCane:: @ 080DFCF0
	.4byte gUnk_080DFBD0
	.4byte gUnk_080DFC70
	.4byte gUnk_080DFCA0
	.4byte gUnk_080DFCB0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE20
	.4byte nullsub_259
	.4byte gUnk_080DFCC0

gUnk_080DFD14:: @ 080DFD14
	.incbin "baserom.gba", 0x0DFD14, 0x0000090

gUnk_080DFDA4:: @ 080DFDA4
	.incbin "baserom.gba", 0x0DFDA4, 0x0000030

gUnk_080DFDD4:: @ 080DFDD4
	.incbin "baserom.gba", 0x0DFDD4, 0x0000010

gUnk_080DFDE4:: @ 080DFDE4
	.incbin "baserom.gba", 0x0DFDE4, 0x0000015

gUnk_080DFDF9:: @ 080DFDF9
	.incbin "baserom.gba", 0x0DFDF9, 0x0000013

gUnk_080DFE0C:: @ 080DFE0C
	.incbin "baserom.gba", 0x0DFE0C, 0x0000090

Room_CaveOfFlames_SpinyChus:: @ 080DFE9C
	.4byte gUnk_080DFD14
	.4byte gUnk_080DFDA4
	.4byte gUnk_080DFDD4
	.4byte gUnk_080DFDE4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE28
	.4byte nullsub_260
	.4byte gUnk_080DFE0C

gUnk_080DFEC0:: @ 080DFEC0
	.incbin "baserom.gba", 0x0DFEC0, 0x0000070

gUnk_080DFF30:: @ 080DFF30
	.incbin "baserom.gba", 0x0DFF30, 0x0000060

gUnk_080DFF90:: @ 080DFF90
	.incbin "baserom.gba", 0x0DFF90, 0x0000069

gUnk_080DFFF9:: @ 080DFFF9
	.incbin "baserom.gba", 0x0DFFF9, 0x0000007

gUnk_080E0000:: @ 080E0000
	.incbin "baserom.gba", 0x0E0000, 0x0000001

gUnk_080E0001:: @ 080E0001
	.incbin "baserom.gba", 0x0E0001, 0x000000D

gUnk_080E000E:: @ 080E000E
	.incbin "baserom.gba", 0x0E000E, 0x0000022

gUnk_080E0030:: @ 080E0030
	.incbin "baserom.gba", 0x0E0030, 0x0000002

gUnk_080E0032:: @ 080E0032
	.incbin "baserom.gba", 0x0E0032, 0x0000016

Room_CaveOfFlames_CartToSpinyChus:: @ 080E0048
	.4byte gUnk_080DFEC0
	.4byte gUnk_080DFF30
	.4byte gUnk_080DFF90
	.4byte gUnk_080E0030
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE30
	.4byte nullsub_261

gUnk_080E0068:: @ 080E0068
	.incbin "baserom.gba", 0x0E0068, 0x0000017

gUnk_080E007F:: @ 080E007F
	.incbin "baserom.gba", 0x0E007F, 0x0000069

gUnk_080E00E8:: @ 080E00E8
	.incbin "baserom.gba", 0x0E00E8, 0x0000005

gUnk_080E00ED:: @ 080E00ED
	.incbin "baserom.gba", 0x0E00ED, 0x0000006

gUnk_080E00F3:: @ 080E00F3
	.incbin "baserom.gba", 0x0E00F3, 0x000001F

gUnk_080E0112:: @ 080E0112
	.incbin "baserom.gba", 0x0E0112, 0x0000016

gUnk_080E0128:: @ 080E0128
	.incbin "baserom.gba", 0x0E0128, 0x0000010

gUnk_080E0138:: @ 080E0138
	.incbin "baserom.gba", 0x0E0138, 0x0000010

gUnk_080E0148:: @ 080E0148
	.incbin "baserom.gba", 0x0E0148, 0x0000040

Room_CaveOfFlames_Entrance:: @ 080E0188
	.4byte gUnk_080E0068
	.4byte gUnk_080E00E8
	.4byte gUnk_080E0128
	.4byte gUnk_080E0138
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE38
	.4byte nullsub_262
	.4byte gUnk_080E0148

gUnk_080E01AC:: @ 080E01AC
	.incbin "baserom.gba", 0x0E01AC, 0x000003C

gUnk_080E01E8:: @ 080E01E8
	.incbin "baserom.gba", 0x0E01E8, 0x0000009

gUnk_080E01F1:: @ 080E01F1
	.incbin "baserom.gba", 0x0E01F1, 0x0000004

gUnk_080E01F5:: @ 080E01F5
	.incbin "baserom.gba", 0x0E01F5, 0x000001B

gUnk_080E0210:: @ 080E0210
	.incbin "baserom.gba", 0x0E0210, 0x000004C

gUnk_080E025C:: @ 080E025C
	.incbin "baserom.gba", 0x0E025C, 0x0000070

gUnk_080E02CC:: @ 080E02CC
	.incbin "baserom.gba", 0x0E02CC, 0x0000027

gUnk_080E02F3:: @ 080E02F3
	.incbin "baserom.gba", 0x0E02F3, 0x000000C

gUnk_080E02FF:: @ 080E02FF
	.incbin "baserom.gba", 0x0E02FF, 0x000004D

gUnk_080E034C:: @ 080E034C
	.incbin "baserom.gba", 0x0E034C, 0x0000010

Room_CaveOfFlames_MainCart:: @ 080E035C
	.4byte gUnk_080E01AC
	.4byte gUnk_080E025C
	.4byte gUnk_080E02CC
	.4byte gUnk_080E034C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE40
	.4byte nullsub_263

gUnk_080E037C:: @ 080E037C
	.incbin "baserom.gba", 0x0E037C, 0x000007E

gUnk_080E03FA:: @ 080E03FA
	.incbin "baserom.gba", 0x0E03FA, 0x0000032

gUnk_080E042C:: @ 080E042C
	.incbin "baserom.gba", 0x0E042C, 0x0000040

gUnk_080E046C:: @ 080E046C
	.incbin "baserom.gba", 0x0E046C, 0x0000020

gUnk_080E048C:: @ 080E048C
	.incbin "baserom.gba", 0x0E048C, 0x0000010

gUnk_080E049C:: @ 080E049C
	.incbin "baserom.gba", 0x0E049C, 0x0000010

Room_CaveOfFlames_NorthEntrance:: @ 080E04AC
	.4byte gUnk_080E037C
	.4byte gUnk_080E042C
	.4byte gUnk_080E046C
	.4byte gUnk_080E048C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE48
	.4byte nullsub_264
	.4byte gUnk_080E049C

gUnk_080E04D0:: @ 080E04D0
	.incbin "baserom.gba", 0x0E04D0, 0x0000031

gUnk_080E0501:: @ 080E0501
	.incbin "baserom.gba", 0x0E0501, 0x0000007

gUnk_080E0508:: @ 080E0508
	.incbin "baserom.gba", 0x0E0508, 0x0000098

gUnk_080E05A0:: @ 080E05A0
	.incbin "baserom.gba", 0x0E05A0, 0x0000057

gUnk_080E05F7:: @ 080E05F7
	.incbin "baserom.gba", 0x0E05F7, 0x0000005

gUnk_080E05FC:: @ 080E05FC
	.incbin "baserom.gba", 0x0E05FC, 0x000000A

gUnk_080E0606:: @ 080E0606
	.incbin "baserom.gba", 0x0E0606, 0x000007A

gUnk_080E0680:: @ 080E0680
	.incbin "baserom.gba", 0x0E0680, 0x000006C

gUnk_080E06EC:: @ 080E06EC
	.incbin "baserom.gba", 0x0E06EC, 0x0000005

gUnk_080E06F1:: @ 080E06F1
	.incbin "baserom.gba", 0x0E06F1, 0x0000014

gUnk_080E0705:: @ 080E0705
	.incbin "baserom.gba", 0x0E0705, 0x000004B

gUnk_080E0750:: @ 080E0750
	.incbin "baserom.gba", 0x0E0750, 0x0000020

Room_CaveOfFlames_CartWest:: @ 080E0770
	.4byte gUnk_080E04D0
	.4byte gUnk_080E05A0
	.4byte gUnk_080E0680
	.4byte gUnk_080E0750
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE50
	.4byte nullsub_265

gUnk_080E0790:: @ 080E0790
	.incbin "baserom.gba", 0x0E0790, 0x0000050

gUnk_080E07E0:: @ 080E07E0
	.incbin "baserom.gba", 0x0E07E0, 0x000001C

gUnk_080E07FC:: @ 080E07FC
	.incbin "baserom.gba", 0x0E07FC, 0x0000004

gUnk_080E0800:: @ 080E0800
	.incbin "baserom.gba", 0x0E0800, 0x0000004

gUnk_080E0804:: @ 080E0804
	.incbin "baserom.gba", 0x0E0804, 0x0000001

gUnk_080E0805:: @ 080E0805
	.incbin "baserom.gba", 0x0E0805, 0x0000007

gUnk_080E080C:: @ 080E080C
	.incbin "baserom.gba", 0x0E080C, 0x0000004

gUnk_080E0810:: @ 080E0810
	.incbin "baserom.gba", 0x0E0810, 0x0000018

gUnk_080E0828:: @ 080E0828
	.incbin "baserom.gba", 0x0E0828, 0x0000050

Room_CaveOfFlames_Helmasaur:: @ 080E0878
	.4byte gUnk_080E0790
	.4byte gUnk_080E07E0
	.4byte gUnk_080E0800
	.4byte gUnk_080E0810
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE58
	.4byte nullsub_266
	.4byte gUnk_080E0828

gUnk_080E089C:: @ 080E089C
	.incbin "baserom.gba", 0x0E089C, 0x0000061

gUnk_080E08FD:: @ 080E08FD
	.incbin "baserom.gba", 0x0E08FD, 0x0000004

gUnk_080E0901:: @ 080E0901
	.incbin "baserom.gba", 0x0E0901, 0x0000001

gUnk_080E0902:: @ 080E0902
	.incbin "baserom.gba", 0x0E0902, 0x000003A

gUnk_080E093C:: @ 080E093C
	.incbin "baserom.gba", 0x0E093C, 0x0000030

gUnk_080E096C:: @ 080E096C
	.incbin "baserom.gba", 0x0E096C, 0x0000050

gUnk_080E09BC:: @ 080E09BC
	.incbin "baserom.gba", 0x0E09BC, 0x0000020

gUnk_080E09DC:: @ 080E09DC
	.4byte gUnk_080E09FC
	.incbin "baserom.gba", 0x0E09E0, 0x000001C

gUnk_080E09FC:: @ 080E09FC
	.incbin "baserom.gba", 0x0E09FC, 0x0000002

gUnk_080E09FE:: @ 080E09FE
	.incbin "baserom.gba", 0x0E09FE, 0x0000003

gUnk_080E0A01:: @ 080E0A01
	.incbin "baserom.gba", 0x0E0A01, 0x0000001

gUnk_080E0A02:: @ 080E0A02
	.incbin "baserom.gba", 0x0E0A02, 0x0000006

gUnk_080E0A08:: @ 080E0A08
	.incbin "baserom.gba", 0x0E0A08, 0x000000F

gUnk_080E0A17:: @ 080E0A17
	.incbin "baserom.gba", 0x0E0A17, 0x0000009

Room_CaveOfFlames_Rollobite:: @ 080E0A20
	.4byte gUnk_080E089C
	.4byte gUnk_080E093C
	.4byte gUnk_080E096C
	.4byte gUnk_080E09BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE60
	.4byte nullsub_267
	.4byte gUnk_080E09DC

gUnk_080E0A44:: @ 080E0A44
	.incbin "baserom.gba", 0x0E0A44, 0x00000BE

gUnk_080E0B02:: @ 080E0B02
	.incbin "baserom.gba", 0x0E0B02, 0x0000002

gUnk_080E0B04:: @ 080E0B04
	.incbin "baserom.gba", 0x0E0B04, 0x0000009

gUnk_080E0B0D:: @ 080E0B0D
	.incbin "baserom.gba", 0x0E0B0D, 0x0000017

gUnk_080E0B24:: @ 080E0B24
	.incbin "baserom.gba", 0x0E0B24, 0x0000040

gUnk_080E0B64:: @ 080E0B64
	.incbin "baserom.gba", 0x0E0B64, 0x0000020

gUnk_080E0B84:: @ 080E0B84
	.incbin "baserom.gba", 0x0E0B84, 0x000007A

gUnk_080E0BFE:: @ 080E0BFE
	.incbin "baserom.gba", 0x0E0BFE, 0x000000A

gUnk_080E0C08:: @ 080E0C08
	.incbin "baserom.gba", 0x0E0C08, 0x0000001

gUnk_080E0C09:: @ 080E0C09
	.incbin "baserom.gba", 0x0E0C09, 0x000000B

Room_CaveOfFlames_MinishLava:: @ 080E0C14
	.4byte gUnk_080E0A44
	.4byte gUnk_080E0B04
	.4byte gUnk_080E0B24
	.4byte gUnk_080E0B64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE68
	.4byte nullsub_268
	.4byte gUnk_080E0B84

gUnk_080E0C38:: @ 080E0C38
	.incbin "baserom.gba", 0x0E0C38, 0x000008E

gUnk_080E0CC6:: @ 080E0CC6
	.incbin "baserom.gba", 0x0E0CC6, 0x0000016

gUnk_080E0CDC:: @ 080E0CDC
	.incbin "baserom.gba", 0x0E0CDC, 0x0000026

gUnk_080E0D02:: @ 080E0D02
	.incbin "baserom.gba", 0x0E0D02, 0x0000001

gUnk_080E0D03:: @ 080E0D03
	.incbin "baserom.gba", 0x0E0D03, 0x0000002

gUnk_080E0D05:: @ 080E0D05
	.incbin "baserom.gba", 0x0E0D05, 0x0000001

gUnk_080E0D06:: @ 080E0D06
	.incbin "baserom.gba", 0x0E0D06, 0x0000006

gUnk_080E0D0C:: @ 080E0D0C
	.incbin "baserom.gba", 0x0E0D0C, 0x000000C

gUnk_080E0D18:: @ 080E0D18
	.incbin "baserom.gba", 0x0E0D18, 0x0000010

gUnk_080E0D28:: @ 080E0D28
	.incbin "baserom.gba", 0x0E0D28, 0x00000B0

gUnk_080E0DD8:: @ 080E0DD8
	.incbin "baserom.gba", 0x0E0DD8, 0x0000020

gUnk_080E0DF8:: @ 080E0DF8
	.incbin "baserom.gba", 0x0E0DF8, 0x0000008

gUnk_080E0E00:: @ 080E0E00
	.incbin "baserom.gba", 0x0E0E00, 0x0000005

gUnk_080E0E05:: @ 080E0E05
	.incbin "baserom.gba", 0x0E0E05, 0x0000003

gUnk_080E0E08:: @ 080E0E08
	.incbin "baserom.gba", 0x0E0E08, 0x0000003

gUnk_080E0E0B:: @ 080E0E0B
	.incbin "baserom.gba", 0x0E0E0B, 0x0000001

gUnk_080E0E0C:: @ 080E0E0C
	.incbin "baserom.gba", 0x0E0E0C, 0x000000A

gUnk_080E0E16:: @ 080E0E16
	.incbin "baserom.gba", 0x0E0E16, 0x000001E

Room_CaveOfFlames_MinishSpikes:: @ 080E0E34
	.4byte gUnk_080E0C38
	.4byte gUnk_080E0D18
	.4byte gUnk_080E0D28
	.4byte gUnk_080E0DD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE70
	.4byte nullsub_269
	.4byte gUnk_080E0DF8
	.4byte gUnk_080E0E16

gUnk_080E0E5C:: @ 080E0E5C
	.incbin "baserom.gba", 0x0E0E5C, 0x0000080

gUnk_080E0EDC:: @ 080E0EDC
	.incbin "baserom.gba", 0x0E0EDC, 0x0000010

gUnk_080E0EEC:: @ 080E0EEC
	.incbin "baserom.gba", 0x0E0EEC, 0x000000F

gUnk_080E0EFB:: @ 080E0EFB
	.incbin "baserom.gba", 0x0E0EFB, 0x0000005

gUnk_080E0F00:: @ 080E0F00
	.incbin "baserom.gba", 0x0E0F00, 0x0000008

gUnk_080E0F08:: @ 080E0F08
	.incbin "baserom.gba", 0x0E0F08, 0x0000001

gUnk_080E0F09:: @ 080E0F09
	.incbin "baserom.gba", 0x0E0F09, 0x0000001

gUnk_080E0F0A:: @ 080E0F0A
	.incbin "baserom.gba", 0x0E0F0A, 0x0000002

gUnk_080E0F0C:: @ 080E0F0C
	.incbin "baserom.gba", 0x0E0F0C, 0x0000001

gUnk_080E0F0D:: @ 080E0F0D
	.incbin "baserom.gba", 0x0E0F0D, 0x0000001

gUnk_080E0F0E:: @ 080E0F0E
	.incbin "baserom.gba", 0x0E0F0E, 0x0000003

gUnk_080E0F11:: @ 080E0F11
	.incbin "baserom.gba", 0x0E0F11, 0x0000001

gUnk_080E0F12:: @ 080E0F12
	.incbin "baserom.gba", 0x0E0F12, 0x0000001

gUnk_080E0F13:: @ 080E0F13
	.incbin "baserom.gba", 0x0E0F13, 0x0000004

gUnk_080E0F17:: @ 080E0F17
	.incbin "baserom.gba", 0x0E0F17, 0x0000001

gUnk_080E0F18:: @ 080E0F18
	.incbin "baserom.gba", 0x0E0F18, 0x0000024

gUnk_080E0F3C:: @ 080E0F3C
	.incbin "baserom.gba", 0x0E0F3C, 0x0000010

Room_CaveOfFlames_RollobiteSwitch:: @ 080E0F4C
	.4byte gUnk_080E0E5C
	.4byte gUnk_080E0EDC
	.4byte gUnk_080E0EEC
	.4byte gUnk_080E0F3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE78
	.4byte nullsub_270

gUnk_080E0F6C:: @ 080E0F6C
	.incbin "baserom.gba", 0x0E0F6C, 0x0000097

gUnk_080E1003:: @ 080E1003
	.incbin "baserom.gba", 0x0E1003, 0x0000002

gUnk_080E1005:: @ 080E1005
	.incbin "baserom.gba", 0x0E1005, 0x0000003

gUnk_080E1008:: @ 080E1008
	.incbin "baserom.gba", 0x0E1008, 0x0000002

gUnk_080E100A:: @ 080E100A
	.incbin "baserom.gba", 0x0E100A, 0x0000001

gUnk_080E100B:: @ 080E100B
	.incbin "baserom.gba", 0x0E100B, 0x0000003

gUnk_080E100E:: @ 080E100E
	.incbin "baserom.gba", 0x0E100E, 0x0000001

gUnk_080E100F:: @ 080E100F
	.incbin "baserom.gba", 0x0E100F, 0x000000D

gUnk_080E101C:: @ 080E101C
	.incbin "baserom.gba", 0x0E101C, 0x0000008

gUnk_080E1024:: @ 080E1024
	.incbin "baserom.gba", 0x0E1024, 0x0000018

gUnk_080E103C:: @ 080E103C
	.incbin "baserom.gba", 0x0E103C, 0x0000020

gUnk_080E105C:: @ 080E105C
	.incbin "baserom.gba", 0x0E105C, 0x0000010

gUnk_080E106C:: @ 080E106C
	.incbin "baserom.gba", 0x0E106C, 0x0000010

Room_CaveOfFlames_BeforeGleerok:: @ 080E107C
	.4byte gUnk_080E0F6C
	.4byte gUnk_080E101C
	.4byte gUnk_080E105C
	.4byte gUnk_080E106C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CE80
	.4byte nullsub_271

gUnk_080E109C:: @ 080E109C
	.incbin "baserom.gba", 0x0E109C, 0x0000020

gUnk_080E10BC:: @ 080E10BC
	.incbin "baserom.gba", 0x0E10BC, 0x0000010

gUnk_080E10CC:: @ 080E10CC
	.incbin "baserom.gba", 0x0E10CC, 0x0000030

gUnk_080E10FC:: @ 080E10FC
	.incbin "baserom.gba", 0x0E10FC, 0x0000010

Room_CaveOfFlames_PathBossKey:: @ 080E110C
	.4byte gUnk_080E109C
	.4byte gUnk_080E10BC
	.4byte gUnk_080E10CC
	.4byte gUnk_080E10FC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEA4
	.4byte nullsub_272

gUnk_080E112C:: @ 080E112C
	.incbin "baserom.gba", 0x0E112C, 0x0000020

gUnk_080E114C:: @ 080E114C
	.incbin "baserom.gba", 0x0E114C, 0x0000010

gUnk_080E115C:: @ 080E115C
	.incbin "baserom.gba", 0x0E115C, 0x0000040

gUnk_080E119C:: @ 080E119C
	.incbin "baserom.gba", 0x0E119C, 0x0000007

gUnk_080E11A3:: @ 080E11A3
	.incbin "baserom.gba", 0x0E11A3, 0x0000011

gUnk_080E11B4:: @ 080E11B4
	.incbin "baserom.gba", 0x0E11B4, 0x000001E

gUnk_080E11D2:: @ 080E11D2
	.incbin "baserom.gba", 0x0E11D2, 0x000001E

Room_CaveOfFlames_PathBossKey2:: @ 080E11F0
	.4byte gUnk_080E112C
	.4byte gUnk_080E114C
	.4byte gUnk_080E115C
	.4byte gUnk_080E119C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEAC
	.4byte nullsub_273
	.4byte gUnk_080E11B4
	.4byte gUnk_080E11D2

gUnk_080E1218:: @ 080E1218
	.incbin "baserom.gba", 0x0E1218, 0x0000001

gUnk_080E1219:: @ 080E1219
	.incbin "baserom.gba", 0x0E1219, 0x000004F

gUnk_080E1268:: @ 080E1268
	.incbin "baserom.gba", 0x0E1268, 0x0000030

gUnk_080E1298:: @ 080E1298
	.incbin "baserom.gba", 0x0E1298, 0x0000010

gUnk_080E12A8:: @ 080E12A8
	.incbin "baserom.gba", 0x0E12A8, 0x0000018

gUnk_080E12C0:: @ 080E12C0
	.incbin "baserom.gba", 0x0E12C0, 0x0000030

Room_CaveOfFlames_Compass:: @ 080E12F0
	.4byte gUnk_080E1218
	.4byte gUnk_080E1268
	.4byte gUnk_080E1298
	.4byte gUnk_080E12A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEB4
	.4byte nullsub_274
	.4byte gUnk_080E12C0

gUnk_080E1314:: @ 080E1314
	.incbin "baserom.gba", 0x0E1314, 0x0000001

gUnk_080E1315:: @ 080E1315
	.incbin "baserom.gba", 0x0E1315, 0x0000001

gUnk_080E1316:: @ 080E1316
	.incbin "baserom.gba", 0x0E1316, 0x0000001

gUnk_080E1317:: @ 080E1317
	.incbin "baserom.gba", 0x0E1317, 0x0000001

gUnk_080E1318:: @ 080E1318
	.incbin "baserom.gba", 0x0E1318, 0x0000001

gUnk_080E1319:: @ 080E1319
	.incbin "baserom.gba", 0x0E1319, 0x0000001

gUnk_080E131A:: @ 080E131A
	.incbin "baserom.gba", 0x0E131A, 0x000006A

gUnk_080E1384:: @ 080E1384
	.incbin "baserom.gba", 0x0E1384, 0x0000030

gUnk_080E13B4:: @ 080E13B4
	.incbin "baserom.gba", 0x0E13B4, 0x0000050

gUnk_080E1404:: @ 080E1404
	.incbin "baserom.gba", 0x0E1404, 0x000000A

gUnk_080E140E:: @ 080E140E
	.incbin "baserom.gba", 0x0E140E, 0x0000003

gUnk_080E1411:: @ 080E1411
	.incbin "baserom.gba", 0x0E1411, 0x0000004

gUnk_080E1415:: @ 080E1415
	.incbin "baserom.gba", 0x0E1415, 0x0000001

gUnk_080E1416:: @ 080E1416
	.incbin "baserom.gba", 0x0E1416, 0x0000001

gUnk_080E1417:: @ 080E1417
	.incbin "baserom.gba", 0x0E1417, 0x0000001

gUnk_080E1418:: @ 080E1418
	.incbin "baserom.gba", 0x0E1418, 0x0000001

gUnk_080E1419:: @ 080E1419
	.incbin "baserom.gba", 0x0E1419, 0x0000001

gUnk_080E141A:: @ 080E141A
	.incbin "baserom.gba", 0x0E141A, 0x0000001

gUnk_080E141B:: @ 080E141B
	.incbin "baserom.gba", 0x0E141B, 0x0000001

Room_CaveOfFlames_Bobomb:: @ 080E141C
	.4byte gUnk_080E1314
	.4byte gUnk_080E1384
	.4byte gUnk_080E13B4
	.4byte gUnk_080E1404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEBC
	.4byte nullsub_275

gUnk_080E143C:: @ 080E143C
	.incbin "baserom.gba", 0x0E143C, 0x00000D7

gUnk_080E1513:: @ 080E1513
	.incbin "baserom.gba", 0x0E1513, 0x0000002

gUnk_080E1515:: @ 080E1515
	.incbin "baserom.gba", 0x0E1515, 0x0000001

gUnk_080E1516:: @ 080E1516
	.incbin "baserom.gba", 0x0E1516, 0x0000005

gUnk_080E151B:: @ 080E151B
	.incbin "baserom.gba", 0x0E151B, 0x0000001

gUnk_080E151C:: @ 080E151C
	.incbin "baserom.gba", 0x0E151C, 0x0000001

gUnk_080E151D:: @ 080E151D
	.incbin "baserom.gba", 0x0E151D, 0x000004F

gUnk_080E156C:: @ 080E156C
	.incbin "baserom.gba", 0x0E156C, 0x0000020

gUnk_080E158C:: @ 080E158C
	.incbin "baserom.gba", 0x0E158C, 0x0000010

gUnk_080E159C:: @ 080E159C
	.incbin "baserom.gba", 0x0E159C, 0x0000028

gUnk_080E15C4:: @ 080E15C4
	.incbin "baserom.gba", 0x0E15C4, 0x0000020
	.4byte gUnk_080E1674
	.incbin "baserom.gba", 0x0E15E8, 0x000000C
	.4byte gUnk_080E16AA
	.incbin "baserom.gba", 0x0E15F8, 0x000000C
	.4byte gUnk_080E16CE
	.incbin "baserom.gba", 0x0E1608, 0x0000005

gUnk_080E160D:: @ 080E160D
	.incbin "baserom.gba", 0x0E160D, 0x0000002

gUnk_080E160F:: @ 080E160F
	.incbin "baserom.gba", 0x0E160F, 0x0000003

gUnk_080E1612:: @ 080E1612
	.incbin "baserom.gba", 0x0E1612, 0x0000002
	.4byte gUnk_080E16EC
	.incbin "baserom.gba", 0x0E1618, 0x0000002

gUnk_080E161A:: @ 080E161A
	.incbin "baserom.gba", 0x0E161A, 0x0000003

gUnk_080E161D:: @ 080E161D
	.incbin "baserom.gba", 0x0E161D, 0x0000003

gUnk_080E1620:: @ 080E1620
	.incbin "baserom.gba", 0x0E1620, 0x0000001

gUnk_080E1621:: @ 080E1621
	.incbin "baserom.gba", 0x0E1621, 0x0000003
	.4byte gUnk_080E170A
	.incbin "baserom.gba", 0x0E1628, 0x000000C
	.4byte gUnk_080E16EC
	.incbin "baserom.gba", 0x0E1638, 0x000000C
	.4byte gUnk_080E170A
	.incbin "baserom.gba", 0x0E1648, 0x000000C
	.4byte gUnk_080E16EC
	.incbin "baserom.gba", 0x0E1658, 0x000001C

gUnk_080E1674:: @ 080E1674
	.incbin "baserom.gba", 0x0E1674, 0x0000036

gUnk_080E16AA:: @ 080E16AA
	.incbin "baserom.gba", 0x0E16AA, 0x0000024

gUnk_080E16CE:: @ 080E16CE
	.incbin "baserom.gba", 0x0E16CE, 0x000001E

gUnk_080E16EC:: @ 080E16EC
	.incbin "baserom.gba", 0x0E16EC, 0x000001E

gUnk_080E170A:: @ 080E170A
	.incbin "baserom.gba", 0x0E170A, 0x0000007

gUnk_080E1711:: @ 080E1711
	.incbin "baserom.gba", 0x0E1711, 0x0000007

gUnk_080E1718:: @ 080E1718
	.incbin "baserom.gba", 0x0E1718, 0x0000005

gUnk_080E171D:: @ 080E171D
	.incbin "baserom.gba", 0x0E171D, 0x0000002

gUnk_080E171F:: @ 080E171F
	.incbin "baserom.gba", 0x0E171F, 0x0000002

gUnk_080E1721:: @ 080E1721
	.incbin "baserom.gba", 0x0E1721, 0x0000007

Room_CaveOfFlames_BossDoor:: @ 080E1728
	.4byte gUnk_080E143C
	.4byte gUnk_080E156C
	.4byte gUnk_080E158C
	.4byte gUnk_080E159C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CEC4
	.4byte nullsub_276
	.4byte gUnk_080E15C4

gUnk_080E174C:: @ 080E174C
	.incbin "baserom.gba", 0x0E174C, 0x0000010

gUnk_080E175C:: @ 080E175C
	.incbin "baserom.gba", 0x0E175C, 0x0000010

gUnk_080E176C:: @ 080E176C
	.incbin "baserom.gba", 0x0E176C, 0x0000010

gUnk_080E177C:: @ 080E177C
	.incbin "baserom.gba", 0x0E177C, 0x0000008

Room_CaveOfFlames_18:: @ 080E1784
	.4byte gUnk_080E174C
	.4byte gUnk_080E175C
	.4byte gUnk_080E176C
	.4byte gUnk_080E177C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CECC
	.4byte nullsub_277

gUnk_080E17A4:: @ 080E17A4
	.incbin "baserom.gba", 0x0E17A4, 0x0000040

gUnk_080E17E4:: @ 080E17E4
	.incbin "baserom.gba", 0x0E17E4, 0x000002B

gUnk_080E180F:: @ 080E180F
	.incbin "baserom.gba", 0x0E180F, 0x0000005

gUnk_080E1814:: @ 080E1814
	.incbin "baserom.gba", 0x0E1814, 0x0000005

gUnk_080E1819:: @ 080E1819
	.incbin "baserom.gba", 0x0E1819, 0x0000008

gUnk_080E1821:: @ 080E1821
	.incbin "baserom.gba", 0x0E1821, 0x0000003

gUnk_080E1824:: @ 080E1824
	.incbin "baserom.gba", 0x0E1824, 0x0000020

gUnk_080E1844:: @ 080E1844
	.incbin "baserom.gba", 0x0E1844, 0x0000020

gUnk_080E1864:: @ 080E1864
	.incbin "baserom.gba", 0x0E1864, 0x0000010

Room_CaveOfFlamesBoss_Main:: @ 080E1874
	.4byte gUnk_080E17A4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080E1864
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CED4
	.4byte sub_0804CED8
	.4byte gUnk_080E1844
	.4byte gUnk_080E17E4
	.4byte gUnk_080E1814

gUnk_080E18A0:: @ 080E18A0
	.incbin "baserom.gba", 0x0E18A0, 0x0000053

gUnk_080E18F3:: @ 080E18F3
	.incbin "baserom.gba", 0x0E18F3, 0x000002E

gUnk_080E1921:: @ 080E1921
	.incbin "baserom.gba", 0x0E1921, 0x0000001

gUnk_080E1922:: @ 080E1922
	.incbin "baserom.gba", 0x0E1922, 0x000000E

gUnk_080E1930:: @ 080E1930
	.incbin "baserom.gba", 0x0E1930, 0x0000010

gUnk_080E1940:: @ 080E1940
	.incbin "baserom.gba", 0x0E1940, 0x0000018

gUnk_080E1958:: @ 080E1958
	.incbin "baserom.gba", 0x0E1958, 0x0000040

Room_FortressOfWinds_Eyegore:: @ 080E1998
	.4byte gUnk_080E18A0
	.4byte 0x00000000
	.4byte gUnk_080E1930
	.4byte gUnk_080E1940
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF38
	.4byte nullsub_278
	.4byte gUnk_080E1958

gUnk_080E19BC:: @ 080E19BC
	.incbin "baserom.gba", 0x0E19BC, 0x0000042

gUnk_080E19FE:: @ 080E19FE
	.incbin "baserom.gba", 0x0E19FE, 0x000001B

gUnk_080E1A19:: @ 080E1A19
	.incbin "baserom.gba", 0x0E1A19, 0x0000001

gUnk_080E1A1A:: @ 080E1A1A
	.incbin "baserom.gba", 0x0E1A1A, 0x0000005

gUnk_080E1A1F:: @ 080E1A1F
	.incbin "baserom.gba", 0x0E1A1F, 0x0000002

gUnk_080E1A21:: @ 080E1A21
	.incbin "baserom.gba", 0x0E1A21, 0x000006B

gUnk_080E1A8C:: @ 080E1A8C
	.incbin "baserom.gba", 0x0E1A8C, 0x0000030

gUnk_080E1ABC:: @ 080E1ABC
	.incbin "baserom.gba", 0x0E1ABC, 0x0000010

Room_FortressOfWinds_BeforeMazaal:: @ 080E1ACC
	.4byte gUnk_080E19BC
	.4byte 0x00000000
	.4byte gUnk_080E1A8C
	.4byte gUnk_080E1ABC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF40
	.4byte sub_0804CF44

gUnk_080E1AEC:: @ 080E1AEC
	.incbin "baserom.gba", 0x0E1AEC, 0x000001C

gUnk_080E1B08:: @ 080E1B08
	.incbin "baserom.gba", 0x0E1B08, 0x000000F

gUnk_080E1B17:: @ 080E1B17
	.incbin "baserom.gba", 0x0E1B17, 0x000000C

gUnk_080E1B23:: @ 080E1B23
	.incbin "baserom.gba", 0x0E1B23, 0x0000002

gUnk_080E1B25:: @ 080E1B25
	.incbin "baserom.gba", 0x0E1B25, 0x000000E

gUnk_080E1B33:: @ 080E1B33
	.incbin "baserom.gba", 0x0E1B33, 0x00000E0

gUnk_080E1C13:: @ 080E1C13
	.incbin "baserom.gba", 0x0E1C13, 0x00000D9

gUnk_080E1CEC:: @ 080E1CEC
	.incbin "baserom.gba", 0x0E1CEC, 0x0000030

gUnk_080E1D1C:: @ 080E1D1C
	.incbin "baserom.gba", 0x0E1D1C, 0x000000D

gUnk_080E1D29:: @ 080E1D29
	.incbin "baserom.gba", 0x0E1D29, 0x0000001

gUnk_080E1D2A:: @ 080E1D2A
	.incbin "baserom.gba", 0x0E1D2A, 0x0000003

gUnk_080E1D2D:: @ 080E1D2D
	.incbin "baserom.gba", 0x0E1D2D, 0x000001F

gUnk_080E1D4C:: @ 080E1D4C
	.incbin "baserom.gba", 0x0E1D4C, 0x0000010

gUnk_080E1D5C:: @ 080E1D5C
	.incbin "baserom.gba", 0x0E1D5C, 0x0000014

gUnk_080E1D70:: @ 080E1D70
	.incbin "baserom.gba", 0x0E1D70, 0x0000014

Room_FortressOfWinds_EastKeyLever:: @ 080E1D84
	.4byte gUnk_080E1AEC
	.4byte gUnk_080E1CEC
	.4byte gUnk_080E1D1C
	.4byte gUnk_080E1D4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF5C
	.4byte sub_0804CF60
	.4byte gUnk_080E1D5C
	.4byte gUnk_080E1D70

gUnk_080E1DAC:: @ 080E1DAC
	.incbin "baserom.gba", 0x0E1DAC, 0x0000120

gUnk_080E1ECC:: @ 080E1ECC
	.incbin "baserom.gba", 0x0E1ECC, 0x0000010

gUnk_080E1EDC:: @ 080E1EDC
	.incbin "baserom.gba", 0x0E1EDC, 0x0000010

gUnk_080E1EEC:: @ 080E1EEC
	.incbin "baserom.gba", 0x0E1EEC, 0x000001D

gUnk_080E1F09:: @ 080E1F09
	.incbin "baserom.gba", 0x0E1F09, 0x0000001

gUnk_080E1F0A:: @ 080E1F0A
	.incbin "baserom.gba", 0x0E1F0A, 0x000001C

gUnk_080E1F26:: @ 080E1F26
	.incbin "baserom.gba", 0x0E1F26, 0x0000002

gUnk_080E1F28:: @ 080E1F28
	.incbin "baserom.gba", 0x0E1F28, 0x0000020

Room_FortressOfWinds_PitPlatforms:: @ 080E1F48
	.4byte gUnk_080E1DAC
	.4byte 0x00000000
	.4byte gUnk_080E1ECC
	.4byte gUnk_080E1EDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF68
	.4byte nullsub_39
	.4byte gUnk_080E1EEC
	.4byte gUnk_080E1F0A
	.4byte gUnk_080E1F28

gUnk_080E1F74:: @ 080E1F74
	.incbin "baserom.gba", 0x0E1F74, 0x0000093

gUnk_080E2007:: @ 080E2007
	.incbin "baserom.gba", 0x0E2007, 0x000008D

gUnk_080E2094:: @ 080E2094
	.incbin "baserom.gba", 0x0E2094, 0x0000040

gUnk_080E20D4:: @ 080E20D4
	.incbin "baserom.gba", 0x0E20D4, 0x0000010

gUnk_080E20E4:: @ 080E20E4
	.incbin "baserom.gba", 0x0E20E4, 0x0000020

gUnk_080E2104:: @ 080E2104
	.incbin "baserom.gba", 0x0E2104, 0x0000014

gUnk_080E2118:: @ 080E2118
	.incbin "baserom.gba", 0x0E2118, 0x0000004

gUnk_080E211C:: @ 080E211C
	.incbin "baserom.gba", 0x0E211C, 0x0000006

gUnk_080E2122:: @ 080E2122
	.incbin "baserom.gba", 0x0E2122, 0x0000003

gUnk_080E2125:: @ 080E2125
	.incbin "baserom.gba", 0x0E2125, 0x0000007

Room_FortressOfWinds_WestKeyLever:: @ 080E212C
	.4byte gUnk_080E1F74
	.4byte 0x00000000
	.4byte gUnk_080E2094
	.4byte gUnk_080E20D4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF70
	.4byte sub_0804CF74
	.4byte gUnk_080E20E4
	.4byte gUnk_080E2104
	.4byte gUnk_080E2118

gUnk_080E2158:: @ 080E2158
	.incbin "baserom.gba", 0x0E2158, 0x0000120

gUnk_080E2278:: @ 080E2278
	.incbin "baserom.gba", 0x0E2278, 0x0000030

gUnk_080E22A8:: @ 080E22A8
	.incbin "baserom.gba", 0x0E22A8, 0x0000010

gUnk_080E22B8:: @ 080E22B8
	.incbin "baserom.gba", 0x0E22B8, 0x0000018

gUnk_080E22D0:: @ 080E22D0
	.incbin "baserom.gba", 0x0E22D0, 0x0000040

Room_FortressOfWinds_Darknut:: @ 080E2310
	.4byte gUnk_080E2158
	.4byte gUnk_080E2278
	.4byte gUnk_080E22A8
	.4byte gUnk_080E22B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF7C
	.4byte nullsub_40
	.4byte gUnk_080E22D0

gUnk_080E2334:: @ 080E2334
	.incbin "baserom.gba", 0x0E2334, 0x0000001

gUnk_080E2335:: @ 080E2335
	.incbin "baserom.gba", 0x0E2335, 0x000009F

gUnk_080E23D4:: @ 080E23D4
	.incbin "baserom.gba", 0x0E23D4, 0x0000020

gUnk_080E23F4:: @ 080E23F4
	.incbin "baserom.gba", 0x0E23F4, 0x0000020

gUnk_080E2414:: @ 080E2414
	.incbin "baserom.gba", 0x0E2414, 0x0000010

Room_FortressOfWinds_EyeBridge:: @ 080E2424
	.4byte gUnk_080E2334
	.4byte gUnk_080E23D4
	.4byte gUnk_080E23F4
	.4byte gUnk_080E2414
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF84
	.4byte nullsub_41

gUnk_080E2444:: @ 080E2444
	.incbin "baserom.gba", 0x0E2444, 0x00000E0

gUnk_080E2524:: @ 080E2524
	.incbin "baserom.gba", 0x0E2524, 0x000000A

gUnk_080E252E:: @ 080E252E
	.incbin "baserom.gba", 0x0E252E, 0x0000001

gUnk_080E252F:: @ 080E252F
	.incbin "baserom.gba", 0x0E252F, 0x0000005

gUnk_080E2534:: @ 080E2534
	.incbin "baserom.gba", 0x0E2534, 0x0000010

gUnk_080E2544:: @ 080E2544
	.incbin "baserom.gba", 0x0E2544, 0x0000020

Room_FortressOfWinds_Pit:: @ 080E2564
	.4byte gUnk_080E2444
	.4byte 0x00000000
	.4byte gUnk_080E2524
	.4byte gUnk_080E2534
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF8C
	.4byte nullsub_42
	.4byte gUnk_080E2544

gUnk_080E2588:: @ 080E2588
	.incbin "baserom.gba", 0x0E2588, 0x00000F0

gUnk_080E2678:: @ 080E2678
	.incbin "baserom.gba", 0x0E2678, 0x0000020

gUnk_080E2698:: @ 080E2698
	.incbin "baserom.gba", 0x0E2698, 0x0000010

gUnk_080E26A8:: @ 080E26A8
	.incbin "baserom.gba", 0x0E26A8, 0x0000010

gUnk_080E26B8:: @ 080E26B8
	.incbin "baserom.gba", 0x0E26B8, 0x0000040

Room_FortressOfWinds_Wallmaster:: @ 080E26F8
	.4byte gUnk_080E2588
	.4byte gUnk_080E2678
	.4byte gUnk_080E2698
	.4byte gUnk_080E26A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF94
	.4byte nullsub_43
	.4byte gUnk_080E26B8

gUnk_080E271C:: @ 080E271C
	.incbin "baserom.gba", 0x0E271C, 0x0000110

gUnk_080E282C:: @ 080E282C
	.incbin "baserom.gba", 0x0E282C, 0x0000019

gUnk_080E2845:: @ 080E2845
	.incbin "baserom.gba", 0x0E2845, 0x0000027

gUnk_080E286C:: @ 080E286C
	.incbin "baserom.gba", 0x0E286C, 0x0000050

gUnk_080E28BC:: @ 080E28BC
	.incbin "baserom.gba", 0x0E28BC, 0x0000010

gUnk_080E28CC:: @ 080E28CC
	.incbin "baserom.gba", 0x0E28CC, 0x0000020

Room_FortressOfWinds_Clone:: @ 080E28EC
	.4byte gUnk_080E271C
	.4byte gUnk_080E282C
	.4byte gUnk_080E286C
	.4byte gUnk_080E28BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CF9C
	.4byte nullsub_44
	.4byte gUnk_080E28CC

gUnk_080E2910:: @ 080E2910
	.incbin "baserom.gba", 0x0E2910, 0x0000030

gUnk_080E2940:: @ 080E2940
	.incbin "baserom.gba", 0x0E2940, 0x0000030

gUnk_080E2970:: @ 080E2970
	.incbin "baserom.gba", 0x0E2970, 0x0000050

gUnk_080E29C0:: @ 080E29C0
	.incbin "baserom.gba", 0x0E29C0, 0x0000010

gUnk_080E29D0:: @ 080E29D0
	.incbin "baserom.gba", 0x0E29D0, 0x0000036

gUnk_080E2A06:: @ 080E2A06
	.incbin "baserom.gba", 0x0E2A06, 0x0000036

gUnk_080E2A3C:: @ 080E2A3C
	.incbin "baserom.gba", 0x0E2A3C, 0x0000036

gUnk_080E2A72:: @ 080E2A72
	.incbin "baserom.gba", 0x0E2A72, 0x0000036

Room_FortressOfWinds_SpikeTraps:: @ 080E2AA8
	.4byte gUnk_080E2910
	.4byte gUnk_080E2940
	.4byte gUnk_080E2970
	.4byte gUnk_080E29C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CFA4
	.4byte nullsub_45
	.4byte gUnk_080E29D0
	.4byte gUnk_080E2A06
	.4byte gUnk_080E2A3C
	.4byte gUnk_080E2A72

gUnk_080E2AD8:: @ 080E2AD8
	.incbin "baserom.gba", 0x0E2AD8, 0x0000038

gUnk_080E2B10:: @ 080E2B10
	.incbin "baserom.gba", 0x0E2B10, 0x0000098

gUnk_080E2BA8:: @ 080E2BA8
	.incbin "baserom.gba", 0x0E2BA8, 0x0000010

gUnk_080E2BB8:: @ 080E2BB8
	.incbin "baserom.gba", 0x0E2BB8, 0x0000010

gUnk_080E2BC8:: @ 080E2BC8
	.incbin "baserom.gba", 0x0E2BC8, 0x0000020

gUnk_080E2BE8:: @ 080E2BE8
	.incbin "baserom.gba", 0x0E2BE8, 0x0000020

Room_FortressOfWinds_Mazaal:: @ 080E2C08
	.4byte gUnk_080E2AD8
	.4byte 0x00000000
	.4byte gUnk_080E2BA8
	.4byte gUnk_080E2BB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804CFAC
	.4byte sub_0804CFB0
	.4byte gUnk_080E2BC8
	.4byte gUnk_080E2BE8

gUnk_080E2C30:: @ 080E2C30
	.incbin "baserom.gba", 0x0E2C30, 0x0000090

gUnk_080E2CC0:: @ 080E2CC0
	.incbin "baserom.gba", 0x0E2CC0, 0x0000020

gUnk_080E2CE0:: @ 080E2CE0
	.incbin "baserom.gba", 0x0E2CE0, 0x0000010

gUnk_080E2CF0:: @ 080E2CF0
	.incbin "baserom.gba", 0x0E2CF0, 0x0000010

gUnk_080E2D00:: @ 080E2D00
	.incbin "baserom.gba", 0x0E2D00, 0x0000060

Room_FortressOfWinds_Stalfos:: @ 080E2D60
	.4byte gUnk_080E2C30
	.4byte gUnk_080E2CC0
	.4byte gUnk_080E2CE0
	.4byte gUnk_080E2CF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D008
	.4byte nullsub_279
	.4byte gUnk_080E2D00

gUnk_080E2D84:: @ 080E2D84
	.incbin "baserom.gba", 0x0E2D84, 0x00000B0

gUnk_080E2E34:: @ 080E2E34
	.incbin "baserom.gba", 0x0E2E34, 0x0000010

gUnk_080E2E44:: @ 080E2E44
	.incbin "baserom.gba", 0x0E2E44, 0x0000018

Room_FortressOfWinds_EntranceMoleMitts:: @ 080E2E5C
	.4byte gUnk_080E2D84
	.4byte 0x00000000
	.4byte gUnk_080E2E34
	.4byte gUnk_080E2E44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D010
	.4byte nullsub_280

gUnk_080E2E7C:: @ 080E2E7C
	.incbin "baserom.gba", 0x0E2E7C, 0x0000100

gUnk_080E2F7C:: @ 080E2F7C
	.incbin "baserom.gba", 0x0E2F7C, 0x0000080

gUnk_080E2FFC:: @ 080E2FFC
	.incbin "baserom.gba", 0x0E2FFC, 0x0000018

gUnk_080E3014:: @ 080E3014
	.incbin "baserom.gba", 0x0E3014, 0x0000020

gUnk_080E3034:: @ 080E3034
	.incbin "baserom.gba", 0x0E3034, 0x0000020

Room_FortressOfWinds_Main2F:: @ 080E3054
	.4byte gUnk_080E2E7C
	.4byte 0x00000000
	.4byte gUnk_080E2F7C
	.4byte gUnk_080E2FFC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D018
	.4byte nullsub_281
	.4byte gUnk_080E3014
	.4byte gUnk_080E3034

gUnk_080E307C:: @ 080E307C
	.incbin "baserom.gba", 0x0E307C, 0x0000060

gUnk_080E30DC:: @ 080E30DC
	.incbin "baserom.gba", 0x0E30DC, 0x0000030

gUnk_080E310C:: @ 080E310C
	.incbin "baserom.gba", 0x0E310C, 0x0000010

gUnk_080E311C:: @ 080E311C
	.incbin "baserom.gba", 0x0E311C, 0x0000014

Room_FortressOfWinds_MinishHole:: @ 080E3130
	.4byte gUnk_080E307C
	.4byte 0x00000000
	.4byte gUnk_080E30DC
	.4byte gUnk_080E310C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D020
	.4byte nullsub_282
	.4byte gUnk_080E311C

gUnk_080E3154:: @ 080E3154
	.incbin "baserom.gba", 0x0E3154, 0x0000020

gUnk_080E3174:: @ 080E3174
	.incbin "baserom.gba", 0x0E3174, 0x0000020

gUnk_080E3194:: @ 080E3194
	.incbin "baserom.gba", 0x0E3194, 0x0000010

gUnk_080E31A4:: @ 080E31A4
	.incbin "baserom.gba", 0x0E31A4, 0x0000018

Room_FortressOfWinds_BossKey:: @ 080E31BC
	.4byte gUnk_080E3154
	.4byte gUnk_080E3174
	.4byte gUnk_080E3194
	.4byte gUnk_080E31A4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D028
	.4byte nullsub_283

gUnk_080E31DC:: @ 080E31DC
	.incbin "baserom.gba", 0x0E31DC, 0x0000010

gUnk_080E31EC:: @ 080E31EC
	.incbin "baserom.gba", 0x0E31EC, 0x0000020

gUnk_080E320C:: @ 080E320C
	.incbin "baserom.gba", 0x0E320C, 0x0000050

gUnk_080E325C:: @ 080E325C
	.incbin "baserom.gba", 0x0E325C, 0x0000010

Room_FortressOfWinds_WestStairs2F:: @ 080E326C
	.4byte gUnk_080E31DC
	.4byte gUnk_080E31EC
	.4byte gUnk_080E320C
	.4byte gUnk_080E325C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D030
	.4byte nullsub_284

gUnk_080E328C:: @ 080E328C
	.incbin "baserom.gba", 0x0E328C, 0x0000030

gUnk_080E32BC:: @ 080E32BC
	.incbin "baserom.gba", 0x0E32BC, 0x00000E0

gUnk_080E339C:: @ 080E339C
	.incbin "baserom.gba", 0x0E339C, 0x0000020

gUnk_080E33BC:: @ 080E33BC
	.incbin "baserom.gba", 0x0E33BC, 0x0000020

Room_FortressOfWinds_EastStairs2F:: @ 080E33DC
	.4byte gUnk_080E328C
	.4byte gUnk_080E32BC
	.4byte gUnk_080E339C
	.4byte gUnk_080E33BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D038
	.4byte nullsub_285

gUnk_080E33FC:: @ 080E33FC
	.incbin "baserom.gba", 0x0E33FC, 0x0000050

gUnk_080E344C:: @ 080E344C
	.incbin "baserom.gba", 0x0E344C, 0x0000010

gUnk_080E345C:: @ 080E345C
	.incbin "baserom.gba", 0x0E345C, 0x0000010

gUnk_080E346C:: @ 080E346C
	.incbin "baserom.gba", 0x0E346C, 0x0000010

Room_FortressOfWinds_WestStairs1F:: @ 080E347C
	.4byte gUnk_080E33FC
	.4byte gUnk_080E344C
	.4byte gUnk_080E345C
	.4byte gUnk_080E346C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D040
	.4byte nullsub_286

gUnk_080E349C:: @ 080E349C
	.incbin "baserom.gba", 0x0E349C, 0x0000060

gUnk_080E34FC:: @ 080E34FC
	.incbin "baserom.gba", 0x0E34FC, 0x0000010

gUnk_080E350C:: @ 080E350C
	.incbin "baserom.gba", 0x0E350C, 0x0000010

Room_FortressOfWinds_CenterStairs1F:: @ 080E351C
	.4byte gUnk_080E349C
	.4byte 0x00000000
	.4byte gUnk_080E34FC
	.4byte gUnk_080E350C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D048
	.4byte nullsub_287

gUnk_080E353C:: @ 080E353C
	.incbin "baserom.gba", 0x0E353C, 0x0000030

gUnk_080E356C:: @ 080E356C
	.incbin "baserom.gba", 0x0E356C, 0x0000010

gUnk_080E357C:: @ 080E357C
	.incbin "baserom.gba", 0x0E357C, 0x0000010

Room_FortressOfWinds_EastStairs1F:: @ 080E358C
	.4byte gUnk_080E353C
	.4byte 0x00000000
	.4byte gUnk_080E356C
	.4byte gUnk_080E357C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D050
	.4byte nullsub_288

gUnk_080E35AC:: @ 080E35AC
	.incbin "baserom.gba", 0x0E35AC, 0x0000050

gUnk_080E35FC:: @ 080E35FC
	.incbin "baserom.gba", 0x0E35FC, 0x0000050

gUnk_080E364C:: @ 080E364C
	.incbin "baserom.gba", 0x0E364C, 0x0000018

gUnk_080E3664:: @ 080E3664
	.incbin "baserom.gba", 0x0E3664, 0x0000030

Room_FortressOfWinds_Wizzrobe:: @ 080E3694
	.4byte gUnk_080E35AC
	.4byte 0x00000000
	.4byte gUnk_080E35FC
	.4byte gUnk_080E364C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D058
	.4byte nullsub_289
	.4byte gUnk_080E3664

gUnk_080E36B8:: @ 080E36B8
	.incbin "baserom.gba", 0x0E36B8, 0x0000040

gUnk_080E36F8:: @ 080E36F8
	.incbin "baserom.gba", 0x0E36F8, 0x0000020

gUnk_080E3718:: @ 080E3718
	.incbin "baserom.gba", 0x0E3718, 0x0000010

Room_FortressOfWinds_HeartPiece:: @ 080E3728
	.4byte gUnk_080E36B8
	.4byte 0x00000000
	.4byte gUnk_080E36F8
	.4byte gUnk_080E3718
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D060
	.4byte nullsub_290

gUnk_080E3748:: @ 080E3748
	.incbin "baserom.gba", 0x0E3748, 0x0000020

gUnk_080E3768:: @ 080E3768
	.incbin "baserom.gba", 0x0E3768, 0x0000020

gUnk_080E3788:: @ 080E3788
	.incbin "baserom.gba", 0x0E3788, 0x0000008

Room_InnerMazaal_Main:: @ 080E3790
	.4byte gUnk_080E3748
	.4byte 0x00000000
	.4byte gUnk_080E3768
	.4byte gUnk_080E3788
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D068
	.4byte nullsub_291

gUnk_080E37B0:: @ 080E37B0
	.incbin "baserom.gba", 0x0E37B0, 0x000000C
	.4byte script_0800D874
	.incbin "baserom.gba", 0x0E37C0, 0x000000C
	.4byte script_0800D8E4
	.incbin "baserom.gba", 0x0E37D0, 0x0000060

gUnk_080E3830:: @ 080E3830
	.incbin "baserom.gba", 0x0E3830, 0x0000020

gUnk_080E3850:: @ 080E3850
	.incbin "baserom.gba", 0x0E3850, 0x0000020

gUnk_080E3870:: @ 080E3870
	.incbin "baserom.gba", 0x0E3870, 0x0000030

gUnk_080E38A0:: @ 080E38A0
	.incbin "baserom.gba", 0x0E38A0, 0x0000010

gUnk_080E38B0:: @ 080E38B0
	.incbin "baserom.gba", 0x0E38B0, 0x0000010

Room_FortressOfWindsTop_Main:: @ 080E38C0
	.4byte gUnk_080E37B0
	.4byte gUnk_080E3870
	.4byte gUnk_080E38A0
	.4byte gUnk_080E38B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D070
	.4byte sub_0804D074

gUnk_080E38E0:: @ 080E38E0
	.incbin "baserom.gba", 0x0E38E0, 0x0000040

gUnk_080E3920:: @ 080E3920
	.incbin "baserom.gba", 0x0E3920, 0x0000040

gUnk_080E3960:: @ 080E3960
	.incbin "baserom.gba", 0x0E3960, 0x0000010

Room_TempleOfDroplets_WestHole:: @ 080E3970
	.4byte gUnk_080E38E0
	.4byte 0x00000000
	.4byte gUnk_080E3920
	.4byte gUnk_080E3960
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0A8
	.4byte sub_0804D0AC

gUnk_080E3990:: @ 080E3990
	.incbin "baserom.gba", 0x0E3990, 0x0000060

gUnk_080E39F0:: @ 080E39F0
	.incbin "baserom.gba", 0x0E39F0, 0x0000090

gUnk_080E3A80:: @ 080E3A80
	.incbin "baserom.gba", 0x0E3A80, 0x0000010

Room_TempleOfDroplets_NorthSplit:: @ 080E3A90
	.4byte gUnk_080E3990
	.4byte 0x00000000
	.4byte gUnk_080E39F0
	.4byte gUnk_080E3A80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0D4
	.4byte nullsub_46

gUnk_080E3AB0:: @ 080E3AB0
	.incbin "baserom.gba", 0x0E3AB0, 0x0000040

gUnk_080E3AF0:: @ 080E3AF0
	.incbin "baserom.gba", 0x0E3AF0, 0x0000040

gUnk_080E3B30:: @ 080E3B30
	.incbin "baserom.gba", 0x0E3B30, 0x0000010

Room_TempleOfDroplets_EastHole:: @ 080E3B40
	.4byte gUnk_080E3AB0
	.4byte 0x00000000
	.4byte gUnk_080E3AF0
	.4byte gUnk_080E3B30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0DC
	.4byte nullsub_47

gUnk_080E3B60:: @ 080E3B60
	.incbin "baserom.gba", 0x0E3B60, 0x0000110

gUnk_080E3C70:: @ 080E3C70
	.incbin "baserom.gba", 0x0E3C70, 0x0000010

gUnk_080E3C80:: @ 080E3C80
	.incbin "baserom.gba", 0x0E3C80, 0x0000010

Room_TempleOfDroplets_Entrance:: @ 080E3C90
	.4byte gUnk_080E3B60
	.4byte 0x00000000
	.4byte gUnk_080E3C70
	.4byte gUnk_080E3C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0E4
	.4byte nullsub_48

gUnk_080E3CB0:: @ 080E3CB0
	.incbin "baserom.gba", 0x0E3CB0, 0x0000010

gUnk_080E3CC0:: @ 080E3CC0
	.incbin "baserom.gba", 0x0E3CC0, 0x0000020

gUnk_080E3CE0:: @ 080E3CE0
	.incbin "baserom.gba", 0x0E3CE0, 0x0000030

gUnk_080E3D10:: @ 080E3D10
	.incbin "baserom.gba", 0x0E3D10, 0x0000010

Room_TempleOfDroplets_NorthwestStairs:: @ 080E3D20
	.4byte gUnk_080E3CB0
	.4byte gUnk_080E3CC0
	.4byte gUnk_080E3CE0
	.4byte gUnk_080E3D10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0EC
	.4byte nullsub_49

gUnk_080E3D40:: @ 080E3D40
	.incbin "baserom.gba", 0x0E3D40, 0x0000070

gUnk_080E3DB0:: @ 080E3DB0
	.incbin "baserom.gba", 0x0E3DB0, 0x0000040

gUnk_080E3DF0:: @ 080E3DF0
	.incbin "baserom.gba", 0x0E3DF0, 0x0000010

gUnk_080E3E00:: @ 080E3E00
	.incbin "baserom.gba", 0x0E3E00, 0x0000010

gUnk_080E3E10:: @ 080E3E10
	.incbin "baserom.gba", 0x0E3E10, 0x0000050

Room_TempleOfDroplets_ScissorsMiniboss:: @ 080E3E60
	.4byte gUnk_080E3D40
	.4byte gUnk_080E3DB0
	.4byte gUnk_080E3DF0
	.4byte gUnk_080E3E00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0F4
	.4byte nullsub_50
	.4byte gUnk_080E3E10

gUnk_080E3E84:: @ 080E3E84
	.incbin "baserom.gba", 0x0E3E84, 0x0000080

gUnk_080E3F04:: @ 080E3F04
	.incbin "baserom.gba", 0x0E3F04, 0x0000030

gUnk_080E3F34:: @ 080E3F34
	.incbin "baserom.gba", 0x0E3F34, 0x0000040

gUnk_080E3F74:: @ 080E3F74
	.incbin "baserom.gba", 0x0E3F74, 0x0000010

Room_TempleOfDroplets_WaterfallNorthwest:: @ 080E3F84
	.4byte gUnk_080E3E84
	.4byte gUnk_080E3F04
	.4byte gUnk_080E3F34
	.4byte gUnk_080E3F74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D0FC
	.4byte nullsub_51

gUnk_080E3FA4:: @ 080E3FA4
	.incbin "baserom.gba", 0x0E3FA4, 0x0000020

gUnk_080E3FC4:: @ 080E3FC4
	.incbin "baserom.gba", 0x0E3FC4, 0x0000040

gUnk_080E4004:: @ 080E4004
	.incbin "baserom.gba", 0x0E4004, 0x0000040

gUnk_080E4044:: @ 080E4044
	.incbin "baserom.gba", 0x0E4044, 0x0000010

Room_TempleOfDroplets_WaterfallNortheast:: @ 080E4054
	.4byte gUnk_080E3FA4
	.4byte gUnk_080E3FC4
	.4byte gUnk_080E4004
	.4byte gUnk_080E4044
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D104
	.4byte nullsub_52

gUnk_080E4074:: @ 080E4074
	.incbin "baserom.gba", 0x0E4074, 0x00001C0

gUnk_080E4234:: @ 080E4234
	.incbin "baserom.gba", 0x0E4234, 0x0000030

gUnk_080E4264:: @ 080E4264
	.incbin "baserom.gba", 0x0E4264, 0x0000010

gUnk_080E4274:: @ 080E4274
	.incbin "baserom.gba", 0x0E4274, 0x0000010

gUnk_080E4284:: @ 080E4284
	.incbin "baserom.gba", 0x0E4284, 0x000000A

gUnk_080E428E:: @ 080E428E
	.incbin "baserom.gba", 0x0E428E, 0x000000A

gUnk_080E4298:: @ 080E4298
	.incbin "baserom.gba", 0x0E4298, 0x0000010

gUnk_080E42A8:: @ 080E42A8
	.incbin "baserom.gba", 0x0E42A8, 0x0000014

Room_TempleOfDroplets_Element:: @ 080E42BC
	.4byte gUnk_080E4074
	.4byte gUnk_080E4234
	.4byte gUnk_080E4264
	.4byte gUnk_080E4274
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D10C
	.4byte nullsub_53
	.4byte gUnk_080E4284
	.4byte gUnk_080E428E
	.4byte gUnk_080E4298
	.4byte gUnk_080E42A8

gUnk_080E42EC:: @ 080E42EC
	.incbin "baserom.gba", 0x0E42EC, 0x0000010

gUnk_080E42FC:: @ 080E42FC
	.incbin "baserom.gba", 0x0E42FC, 0x0000020

gUnk_080E431C:: @ 080E431C
	.incbin "baserom.gba", 0x0E431C, 0x0000010

gUnk_080E432C:: @ 080E432C
	.incbin "baserom.gba", 0x0E432C, 0x0000018

Room_TempleOfDroplets_IceCorner:: @ 080E4344
	.4byte gUnk_080E42EC
	.4byte gUnk_080E42FC
	.4byte gUnk_080E431C
	.4byte gUnk_080E432C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D114
	.4byte nullsub_54

gUnk_080E4364:: @ 080E4364
	.incbin "baserom.gba", 0x0E4364, 0x0000030

gUnk_080E4394:: @ 080E4394
	.incbin "baserom.gba", 0x0E4394, 0x0000100

gUnk_080E4494:: @ 080E4494
	.incbin "baserom.gba", 0x0E4494, 0x0000018

gUnk_080E44AC:: @ 080E44AC
	.incbin "baserom.gba", 0x0E44AC, 0x000001E

gUnk_080E44CA:: @ 080E44CA
	.incbin "baserom.gba", 0x0E44CA, 0x0000024

gUnk_080E44EE:: @ 080E44EE
	.incbin "baserom.gba", 0x0E44EE, 0x0000024

gUnk_080E4512:: @ 080E4512
	.incbin "baserom.gba", 0x0E4512, 0x0000024

gUnk_080E4536:: @ 080E4536
	.incbin "baserom.gba", 0x0E4536, 0x000001E

gUnk_080E4554:: @ 080E4554
	.incbin "baserom.gba", 0x0E4554, 0x0000024

gUnk_080E4578:: @ 080E4578
	.incbin "baserom.gba", 0x0E4578, 0x0000024

gUnk_080E459C:: @ 080E459C
	.incbin "baserom.gba", 0x0E459C, 0x0000024

gUnk_080E45C0:: @ 080E45C0
	.incbin "baserom.gba", 0x0E45C0, 0x000001E

gUnk_080E45DE:: @ 080E45DE
	.incbin "baserom.gba", 0x0E45DE, 0x0000024

gUnk_080E4602:: @ 080E4602
	.incbin "baserom.gba", 0x0E4602, 0x0000024

gUnk_080E4626:: @ 080E4626
	.incbin "baserom.gba", 0x0E4626, 0x0000024

gUnk_080E464A:: @ 080E464A
	.incbin "baserom.gba", 0x0E464A, 0x000001E

Room_TempleOfDroplets_IcePitMaze:: @ 080E4668
	.4byte gUnk_080E4364
	.4byte 0x00000000
	.4byte gUnk_080E4394
	.4byte gUnk_080E4494
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D11C
	.4byte nullsub_55
	.4byte gUnk_080E44AC
	.4byte gUnk_080E44CA
	.4byte gUnk_080E44EE
	.4byte gUnk_080E4512
	.4byte gUnk_080E4536
	.4byte gUnk_080E4554
	.4byte gUnk_080E4578
	.4byte gUnk_080E459C
	.4byte gUnk_080E45C0
	.4byte gUnk_080E45DE
	.4byte gUnk_080E4602
	.4byte gUnk_080E4626
	.4byte gUnk_080E464A

gUnk_080E46BC:: @ 080E46BC
	.incbin "baserom.gba", 0x0E46BC, 0x0000040

gUnk_080E46FC:: @ 080E46FC
	.incbin "baserom.gba", 0x0E46FC, 0x0000010

gUnk_080E470C:: @ 080E470C
	.incbin "baserom.gba", 0x0E470C, 0x0000010

Room_TempleOfDroplets_HoleToBlueChuchu:: @ 080E471C
	.4byte gUnk_080E46BC
	.4byte 0x00000000
	.4byte gUnk_080E46FC
	.4byte gUnk_080E470C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D124
	.4byte nullsub_56

gUnk_080E473C:: @ 080E473C
	.incbin "baserom.gba", 0x0E473C, 0x0000090

gUnk_080E47CC:: @ 080E47CC
	.incbin "baserom.gba", 0x0E47CC, 0x0000010

gUnk_080E47DC:: @ 080E47DC
	.incbin "baserom.gba", 0x0E47DC, 0x0000010

Room_TempleOfDroplets_WaterfallSoutheast:: @ 080E47EC
	.4byte gUnk_080E473C
	.4byte 0x00000000
	.4byte gUnk_080E47CC
	.4byte gUnk_080E47DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D12C
	.4byte nullsub_57

gUnk_080E480C:: @ 080E480C
	.incbin "baserom.gba", 0x0E480C, 0x00000F0

gUnk_080E48FC:: @ 080E48FC
	.incbin "baserom.gba", 0x0E48FC, 0x0000010

gUnk_080E490C:: @ 080E490C
	.incbin "baserom.gba", 0x0E490C, 0x0000018

Room_TempleOfDroplets_WaterfallSouthwest:: @ 080E4924
	.4byte gUnk_080E480C
	.4byte 0x00000000
	.4byte gUnk_080E48FC
	.4byte gUnk_080E490C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D134
	.4byte nullsub_58

gUnk_080E4944:: @ 080E4944
	.incbin "baserom.gba", 0x0E4944, 0x0000080

gUnk_080E49C4:: @ 080E49C4
	.incbin "baserom.gba", 0x0E49C4, 0x0000030

gUnk_080E49F4:: @ 080E49F4
	.incbin "baserom.gba", 0x0E49F4, 0x0000030

gUnk_080E4A24:: @ 080E4A24
	.incbin "baserom.gba", 0x0E4A24, 0x0000020

gUnk_080E4A44:: @ 080E4A44
	.incbin "baserom.gba", 0x0E4A44, 0x0000018

Room_TempleOfDroplets_BigOcto:: @ 080E4A5C
	.4byte gUnk_080E4944
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080E4A44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D13C
	.4byte sub_0804D140
	.4byte gUnk_080E4A24
	.4byte gUnk_080E49C4
	.4byte gUnk_080E49F4

gUnk_080E4A88:: @ 080E4A88
	.incbin "baserom.gba", 0x0E4A88, 0x00000A0

gUnk_080E4B28:: @ 080E4B28
	.incbin "baserom.gba", 0x0E4B28, 0x0000010

gUnk_080E4B38:: @ 080E4B38
	.incbin "baserom.gba", 0x0E4B38, 0x0000010

Room_TempleOfDroplets_ToBigBlueChuchu:: @ 080E4B48
	.4byte gUnk_080E4A88
	.4byte 0x00000000
	.4byte gUnk_080E4B28
	.4byte gUnk_080E4B38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D180
	.4byte nullsub_292

gUnk_080E4B68:: @ 080E4B68
	.incbin "baserom.gba", 0x0E4B68, 0x0000070

gUnk_080E4BD8:: @ 080E4BD8
	.incbin "baserom.gba", 0x0E4BD8, 0x0000020

gUnk_080E4BF8:: @ 080E4BF8
	.incbin "baserom.gba", 0x0E4BF8, 0x0000010

gUnk_080E4C08:: @ 080E4C08
	.incbin "baserom.gba", 0x0E4C08, 0x0000030

gUnk_080E4C38:: @ 080E4C38
	.incbin "baserom.gba", 0x0E4C38, 0x0000010

gUnk_080E4C48:: @ 080E4C48
	.incbin "baserom.gba", 0x0E4C48, 0x0000020

Room_TempleOfDroplets_BigBlueChuchu:: @ 080E4C68
	.4byte gUnk_080E4B68
	.4byte gUnk_080E4BF8
	.4byte gUnk_080E4C38
	.4byte gUnk_080E4C48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D188
	.4byte sub_0804D18C

gUnk_080E4C88:: @ 080E4C88
	.incbin "baserom.gba", 0x0E4C88, 0x0000050

gUnk_080E4CD8:: @ 080E4CD8
	.incbin "baserom.gba", 0x0E4CD8, 0x0000020

gUnk_080E4CF8:: @ 080E4CF8
	.incbin "baserom.gba", 0x0E4CF8, 0x0000020

gUnk_080E4D18:: @ 080E4D18
	.incbin "baserom.gba", 0x0E4D18, 0x0000010

gUnk_080E4D28:: @ 080E4D28
	.incbin "baserom.gba", 0x0E4D28, 0x0000018

gUnk_080E4D40:: @ 080E4D40
	.incbin "baserom.gba", 0x0E4D40, 0x000000C

Room_TempleOfDroplets_BigBlueChuchuKey:: @ 080E4D4C
	.4byte gUnk_080E4C88
	.4byte 0x00000000
	.4byte gUnk_080E4D18
	.4byte gUnk_080E4D28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D1AC
	.4byte sub_0804D1B0
	.4byte gUnk_080E4D40

gUnk_080E4D70:: @ 080E4D70
	.incbin "baserom.gba", 0x0E4D70, 0x0000070

gUnk_080E4DE0:: @ 080E4DE0
	.incbin "baserom.gba", 0x0E4DE0, 0x0000010

gUnk_080E4DF0:: @ 080E4DF0
	.incbin "baserom.gba", 0x0E4DF0, 0x0000010

gUnk_080E4E00:: @ 080E4E00
	.incbin "baserom.gba", 0x0E4E00, 0x000000C

Room_TempleOfDroplets_BossKey:: @ 080E4E0C
	.4byte gUnk_080E4D70
	.4byte 0x00000000
	.4byte gUnk_080E4DE0
	.4byte gUnk_080E4DF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D1E8
	.4byte nullsub_293
	.4byte gUnk_080E4E00

gUnk_080E4E30:: @ 080E4E30
	.incbin "baserom.gba", 0x0E4E30, 0x0000070

gUnk_080E4EA0:: @ 080E4EA0
	.incbin "baserom.gba", 0x0E4EA0, 0x0000010

gUnk_080E4EB0:: @ 080E4EB0
	.incbin "baserom.gba", 0x0E4EB0, 0x0000010

gUnk_080E4EC0:: @ 080E4EC0
	.incbin "baserom.gba", 0x0E4EC0, 0x000000C

Room_TempleOfDroplets_NorthSmallKey:: @ 080E4ECC
	.4byte gUnk_080E4E30
	.4byte 0x00000000
	.4byte gUnk_080E4EA0
	.4byte gUnk_080E4EB0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D1F0
	.4byte nullsub_294
	.4byte gUnk_080E4EC0

gUnk_080E4EF0:: @ 080E4EF0
	.incbin "baserom.gba", 0x0E4EF0, 0x0000080

gUnk_080E4F70:: @ 080E4F70
	.incbin "baserom.gba", 0x0E4F70, 0x0000010

gUnk_080E4F80:: @ 080E4F80
	.incbin "baserom.gba", 0x0E4F80, 0x0000020

Room_TempleOfDroplets_BlockCloneButtonPuzzle:: @ 080E4FA0
	.4byte gUnk_080E4EF0
	.4byte 0x00000000
	.4byte gUnk_080E4F70
	.4byte gUnk_080E4F80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D1F8
	.4byte nullsub_295

gUnk_080E4FC0:: @ 080E4FC0
	.incbin "baserom.gba", 0x0E4FC0, 0x0000010

gUnk_080E4FD0:: @ 080E4FD0
	.incbin "baserom.gba", 0x0E4FD0, 0x0000010

gUnk_080E4FE0:: @ 080E4FE0
	.incbin "baserom.gba", 0x0E4FE0, 0x0000010

Room_TempleOfDroplets_BlockClonePuzzle:: @ 080E4FF0
	.4byte gUnk_080E4FC0
	.4byte 0x00000000
	.4byte gUnk_080E4FD0
	.4byte gUnk_080E4FE0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D200
	.4byte nullsub_296

gUnk_080E5010:: @ 080E5010
	.incbin "baserom.gba", 0x0E5010, 0x0000020

gUnk_080E5030:: @ 080E5030
	.incbin "baserom.gba", 0x0E5030, 0x0000030

gUnk_080E5060:: @ 080E5060
	.incbin "baserom.gba", 0x0E5060, 0x0000090

gUnk_080E50F0:: @ 080E50F0
	.incbin "baserom.gba", 0x0E50F0, 0x0000010

Room_TempleOfDroplets_BlockCloneIceBridge:: @ 080E5100
	.4byte gUnk_080E5010
	.4byte gUnk_080E5030
	.4byte gUnk_080E5060
	.4byte gUnk_080E50F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D208
	.4byte nullsub_297

gUnk_080E5120:: @ 080E5120
	.incbin "baserom.gba", 0x0E5120, 0x0000080

gUnk_080E51A0:: @ 080E51A0
	.incbin "baserom.gba", 0x0E51A0, 0x0000020

gUnk_080E51C0:: @ 080E51C0
	.incbin "baserom.gba", 0x0E51C0, 0x0000050

gUnk_080E5210:: @ 080E5210
	.incbin "baserom.gba", 0x0E5210, 0x0000010

Room_TempleOfDroplets_StairsToScissorsMiniboss:: @ 080E5220
	.4byte gUnk_080E5120
	.4byte gUnk_080E51A0
	.4byte gUnk_080E51C0
	.4byte gUnk_080E5210
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D210
	.4byte nullsub_298

gUnk_080E5240:: @ 080E5240
	.incbin "baserom.gba", 0x0E5240, 0x0000010

gUnk_080E5250:: @ 080E5250
	.incbin "baserom.gba", 0x0E5250, 0x0000030

gUnk_080E5280:: @ 080E5280
	.incbin "baserom.gba", 0x0E5280, 0x00000A0

gUnk_080E5320:: @ 080E5320
	.incbin "baserom.gba", 0x0E5320, 0x0000010

Room_TempleOfDroplets_SpikeBar:: @ 080E5330
	.4byte gUnk_080E5240
	.4byte gUnk_080E5250
	.4byte gUnk_080E5280
	.4byte gUnk_080E5320
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D218
	.4byte nullsub_299

gUnk_080E5350:: @ 080E5350
	.incbin "baserom.gba", 0x0E5350, 0x00000D0

gUnk_080E5420:: @ 080E5420
	.incbin "baserom.gba", 0x0E5420, 0x0000020

gUnk_080E5440:: @ 080E5440
	.incbin "baserom.gba", 0x0E5440, 0x0000010

gUnk_080E5450:: @ 080E5450
	.incbin "baserom.gba", 0x0E5450, 0x0000010

Room_TempleOfDroplets_Lanterns:: @ 080E5460
	.4byte gUnk_080E5350
	.4byte gUnk_080E5420
	.4byte gUnk_080E5440
	.4byte gUnk_080E5450
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D220
	.4byte nullsub_300

gUnk_080E5480:: @ 080E5480
	.incbin "baserom.gba", 0x0E5480, 0x00001E0

gUnk_080E5660:: @ 080E5660
	.incbin "baserom.gba", 0x0E5660, 0x0000020

gUnk_080E5680:: @ 080E5680
	.incbin "baserom.gba", 0x0E5680, 0x0000020

gUnk_080E56A0:: @ 080E56A0
	.incbin "baserom.gba", 0x0E56A0, 0x0000070

gUnk_080E5710:: @ 080E5710
	.incbin "baserom.gba", 0x0E5710, 0x0000020

Room_TempleOfDroplets_LilypadIceBlocks:: @ 080E5730
	.4byte gUnk_080E5480
	.4byte 0x00000000
	.4byte gUnk_080E56A0
	.4byte gUnk_080E5710
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D228
	.4byte sub_0804D22C

gUnk_080E5750:: @ 080E5750
	.incbin "baserom.gba", 0x0E5750, 0x0000090

gUnk_080E57E0:: @ 080E57E0
	.incbin "baserom.gba", 0x0E57E0, 0x0000030

gUnk_080E5810:: @ 080E5810
	.incbin "baserom.gba", 0x0E5810, 0x0000018

Room_TempleOfDroplets_Pit:: @ 080E5828
	.4byte gUnk_080E5750
	.4byte 0x00000000
	.4byte gUnk_080E57E0
	.4byte gUnk_080E5810
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D250
	.4byte nullsub_301

gUnk_080E5848:: @ 080E5848
	.incbin "baserom.gba", 0x0E5848, 0x0000010

gUnk_080E5858:: @ 080E5858
	.incbin "baserom.gba", 0x0E5858, 0x0000050

gUnk_080E58A8:: @ 080E58A8
	.incbin "baserom.gba", 0x0E58A8, 0x0000018

Room_TempleOfDroplets_FireBars:: @ 080E58C0
	.4byte gUnk_080E5848
	.4byte 0x00000000
	.4byte gUnk_080E5858
	.4byte gUnk_080E58A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D258
	.4byte nullsub_302

gUnk_080E58E0:: @ 080E58E0
	.incbin "baserom.gba", 0x0E58E0, 0x0000130

gUnk_080E5A10:: @ 080E5A10
	.incbin "baserom.gba", 0x0E5A10, 0x0000010

gUnk_080E5A20:: @ 080E5A20
	.incbin "baserom.gba", 0x0E5A20, 0x00000E0

gUnk_080E5B00:: @ 080E5B00
	.incbin "baserom.gba", 0x0E5B00, 0x0000038

Room_TempleOfDroplets_LanternMaze:: @ 080E5B38
	.4byte gUnk_080E58E0
	.4byte 0x00000000
	.4byte gUnk_080E5A20
	.4byte gUnk_080E5B00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D260
	.4byte nullsub_303

gUnk_080E5B58:: @ 080E5B58
	.incbin "baserom.gba", 0x0E5B58, 0x0000110

gUnk_080E5C68:: @ 080E5C68
	.incbin "baserom.gba", 0x0E5C68, 0x0000030

gUnk_080E5C98:: @ 080E5C98
	.incbin "baserom.gba", 0x0E5C98, 0x0000010

gUnk_080E5CA8:: @ 080E5CA8
	.incbin "baserom.gba", 0x0E5CA8, 0x0000018

gUnk_080E5CC0:: @ 080E5CC0
	.incbin "baserom.gba", 0x0E5CC0, 0x0000030

Room_TempleOfDroplets_Madderpillars:: @ 080E5CF0
	.4byte gUnk_080E5B58
	.4byte gUnk_080E5C68
	.4byte gUnk_080E5C98
	.4byte gUnk_080E5CA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D268
	.4byte nullsub_304
	.4byte gUnk_080E5CC0

gUnk_080E5D14:: @ 080E5D14
	.incbin "baserom.gba", 0x0E5D14, 0x0000030

gUnk_080E5D44:: @ 080E5D44
	.incbin "baserom.gba", 0x0E5D44, 0x0000040

gUnk_080E5D84:: @ 080E5D84
	.incbin "baserom.gba", 0x0E5D84, 0x0000010

gUnk_080E5D94:: @ 080E5D94
	.incbin "baserom.gba", 0x0E5D94, 0x0000018

Room_TempleOfDroplets_AfterMadderpillars:: @ 080E5DAC
	.4byte gUnk_080E5D14
	.4byte gUnk_080E5D44
	.4byte gUnk_080E5D84
	.4byte gUnk_080E5D94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D270
	.4byte nullsub_305

gUnk_080E5DCC:: @ 080E5DCC
	.incbin "baserom.gba", 0x0E5DCC, 0x0000070

gUnk_080E5E3C:: @ 080E5E3C
	.incbin "baserom.gba", 0x0E5E3C, 0x0000020

gUnk_080E5E5C:: @ 080E5E5C
	.incbin "baserom.gba", 0x0E5E5C, 0x0000020

gUnk_080E5E7C:: @ 080E5E7C
	.incbin "baserom.gba", 0x0E5E7C, 0x0000010

gUnk_080E5E8C:: @ 080E5E8C
	.incbin "baserom.gba", 0x0E5E8C, 0x0000010

Room_TempleOfDroplets_BlueChuchuKeyLever:: @ 080E5E9C
	.4byte gUnk_080E5DCC
	.4byte 0x00000000
	.4byte gUnk_080E5E7C
	.4byte gUnk_080E5E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D278
	.4byte sub_0804D27C

gUnk_080E5EBC:: @ 080E5EBC
	.incbin "baserom.gba", 0x0E5EBC, 0x0000060

gUnk_080E5F1C:: @ 080E5F1C
	.incbin "baserom.gba", 0x0E5F1C, 0x0000010

gUnk_080E5F2C:: @ 080E5F2C
	.incbin "baserom.gba", 0x0E5F2C, 0x0000018

gUnk_080E5F44:: @ 080E5F44
	.incbin "baserom.gba", 0x0E5F44, 0x0000070

Room_TempleOfDroplets_MulldozerKey:: @ 080E5FB4
	.4byte gUnk_080E5EBC
	.4byte 0x00000000
	.4byte gUnk_080E5F1C
	.4byte gUnk_080E5F2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2A4
	.4byte nullsub_306
	.4byte gUnk_080E5F44

gUnk_080E5FD8:: @ 080E5FD8
	.incbin "baserom.gba", 0x0E5FD8, 0x00000D0

gUnk_080E60A8:: @ 080E60A8
	.incbin "baserom.gba", 0x0E60A8, 0x0000030

gUnk_080E60D8:: @ 080E60D8
	.incbin "baserom.gba", 0x0E60D8, 0x0000040

gUnk_080E6118:: @ 080E6118
	.incbin "baserom.gba", 0x0E6118, 0x0000018

Room_TempleOfDroplets_BombWall:: @ 080E6130
	.4byte gUnk_080E5FD8
	.4byte gUnk_080E60A8
	.4byte gUnk_080E60D8
	.4byte gUnk_080E6118
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2AC
	.4byte nullsub_307

gUnk_080E6150:: @ 080E6150
	.incbin "baserom.gba", 0x0E6150, 0x0000100

gUnk_080E6250:: @ 080E6250
	.incbin "baserom.gba", 0x0E6250, 0x0000020

gUnk_080E6270:: @ 080E6270
	.incbin "baserom.gba", 0x0E6270, 0x0000018

gUnk_080E6288:: @ 080E6288
	.incbin "baserom.gba", 0x0E6288, 0x0000020

Room_TempleOfDroplets_LilypadWestB2:: @ 080E62A8
	.4byte gUnk_080E6150
	.4byte 0x00000000
	.4byte gUnk_080E6250
	.4byte gUnk_080E6270
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2B4
	.4byte nullsub_308
	.4byte gUnk_080E6288

gUnk_080E62CC:: @ 080E62CC
	.incbin "baserom.gba", 0x0E62CC, 0x0000060

gUnk_080E632C:: @ 080E632C
	.incbin "baserom.gba", 0x0E632C, 0x0000030

gUnk_080E635C:: @ 080E635C
	.incbin "baserom.gba", 0x0E635C, 0x0000020

Room_TempleOfDroplets_CompassRoom:: @ 080E637C
	.4byte gUnk_080E62CC
	.4byte 0x00000000
	.4byte gUnk_080E632C
	.4byte gUnk_080E635C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2BC
	.4byte nullsub_309

gUnk_080E639C:: @ 080E639C
	.incbin "baserom.gba", 0x0E639C, 0x0000090

gUnk_080E642C:: @ 080E642C
	.incbin "baserom.gba", 0x0E642C, 0x0000010

gUnk_080E643C:: @ 080E643C
	.incbin "baserom.gba", 0x0E643C, 0x0000018

gUnk_080E6454:: @ 080E6454
	.incbin "baserom.gba", 0x0E6454, 0x0000050

Room_TempleOfDroplets_LanternScissors:: @ 080E64A4
	.4byte gUnk_080E639C
	.4byte 0x00000000
	.4byte gUnk_080E642C
	.4byte gUnk_080E643C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2C4
	.4byte nullsub_310
	.4byte gUnk_080E6454

gUnk_080E64C8:: @ 080E64C8
	.incbin "baserom.gba", 0x0E64C8, 0x0000078

gUnk_080E6540:: @ 080E6540
	.incbin "baserom.gba", 0x0E6540, 0x0000038

gUnk_080E6578:: @ 080E6578
	.incbin "baserom.gba", 0x0E6578, 0x0000030

gUnk_080E65A8:: @ 080E65A8
	.incbin "baserom.gba", 0x0E65A8, 0x0000010

Room_TempleOfDroplets_LilypadMiddleB2:: @ 080E65B8
	.4byte gUnk_080E64C8
	.4byte 0x00000000
	.4byte gUnk_080E6578
	.4byte gUnk_080E65A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2CC
	.4byte nullsub_311

gUnk_080E65D8:: @ 080E65D8
	.incbin "baserom.gba", 0x0E65D8, 0x00000C0

gUnk_080E6698:: @ 080E6698
	.incbin "baserom.gba", 0x0E6698, 0x0000010

gUnk_080E66A8:: @ 080E66A8
	.incbin "baserom.gba", 0x0E66A8, 0x0000010

gUnk_080E66B8:: @ 080E66B8
	.incbin "baserom.gba", 0x0E66B8, 0x0000020

Room_TempleOfDroplets_LilypadEastB2:: @ 080E66D8
	.4byte gUnk_080E65D8
	.4byte 0x00000000
	.4byte gUnk_080E6698
	.4byte gUnk_080E66A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2D4
	.4byte nullsub_312
	.4byte gUnk_080E66B8

gUnk_080E66FC:: @ 080E66FC
	.incbin "baserom.gba", 0x0E66FC, 0x0000040

gUnk_080E673C:: @ 080E673C
	.incbin "baserom.gba", 0x0E673C, 0x0000030

gUnk_080E676C:: @ 080E676C
	.incbin "baserom.gba", 0x0E676C, 0x0000020

Room_TempleOfDroplets_FlameBarBlockPuzzle:: @ 080E678C
	.4byte gUnk_080E66FC
	.4byte 0x00000000
	.4byte gUnk_080E673C
	.4byte gUnk_080E676C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2DC
	.4byte nullsub_313

gUnk_080E67AC:: @ 080E67AC
	.incbin "baserom.gba", 0x0E67AC, 0x0000190

gUnk_080E693C:: @ 080E693C
	.incbin "baserom.gba", 0x0E693C, 0x000000C
	.4byte script_0800D954
	.incbin "baserom.gba", 0x0E694C, 0x000000C
	.4byte script_0800DA28
	.incbin "baserom.gba", 0x0E695C, 0x0000010

gUnk_080E696C:: @ 080E696C
	.incbin "baserom.gba", 0x0E696C, 0x0000010

gUnk_080E697C:: @ 080E697C
	.incbin "baserom.gba", 0x0E697C, 0x0000010

Room_RoyalCrypt_KingGustaf:: @ 080E698C
	.4byte gUnk_080E67AC
	.4byte 0x00000000
	.4byte gUnk_080E696C
	.4byte gUnk_080E697C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D2E4
	.4byte sub_0804D2E8

gUnk_080E69AC:: @ 080E69AC
	.incbin "baserom.gba", 0x0E69AC, 0x00000D0

gUnk_080E6A7C:: @ 080E6A7C
	.incbin "baserom.gba", 0x0E6A7C, 0x0000010

gUnk_080E6A8C:: @ 080E6A8C
	.incbin "baserom.gba", 0x0E6A8C, 0x0000008

gUnk_080E6A94:: @ 080E6A94
	.incbin "baserom.gba", 0x0E6A94, 0x0000040

Room_RoyalCrypt_WaterRope:: @ 080E6AD4
	.4byte gUnk_080E69AC
	.4byte 0x00000000
	.4byte gUnk_080E6A7C
	.4byte gUnk_080E6A8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D300
	.4byte nullsub_314
	.4byte gUnk_080E6A94

gUnk_080E6AF8:: @ 080E6AF8
	.incbin "baserom.gba", 0x0E6AF8, 0x0000010

gUnk_080E6B08:: @ 080E6B08
	.incbin "baserom.gba", 0x0E6B08, 0x0000040

gUnk_080E6B48:: @ 080E6B48
	.incbin "baserom.gba", 0x0E6B48, 0x0000008

Room_RoyalCrypt_Gibdo:: @ 080E6B50
	.4byte gUnk_080E6AF8
	.4byte 0x00000000
	.4byte gUnk_080E6B08
	.4byte gUnk_080E6B48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D308
	.4byte nullsub_315

gUnk_080E6B70:: @ 080E6B70
	.incbin "baserom.gba", 0x0E6B70, 0x0000070

gUnk_080E6BE0:: @ 080E6BE0
	.incbin "baserom.gba", 0x0E6BE0, 0x0000010

gUnk_080E6BF0:: @ 080E6BF0
	.incbin "baserom.gba", 0x0E6BF0, 0x0000008

Room_RoyalCrypt_3:: @ 080E6BF8
	.4byte gUnk_080E6B70
	.4byte 0x00000000
	.4byte gUnk_080E6BE0
	.4byte gUnk_080E6BF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D310
	.4byte nullsub_316

gUnk_080E6C18:: @ 080E6C18
	.incbin "baserom.gba", 0x0E6C18, 0x0000140

gUnk_080E6D58:: @ 080E6D58
	.incbin "baserom.gba", 0x0E6D58, 0x0000010

gUnk_080E6D68:: @ 080E6D68
	.incbin "baserom.gba", 0x0E6D68, 0x0000018

gUnk_080E6D80:: @ 080E6D80
	.incbin "baserom.gba", 0x0E6D80, 0x000001E

gUnk_080E6D9E:: @ 080E6D9E
	.incbin "baserom.gba", 0x0E6D9E, 0x0000066

Room_RoyalCrypt_KeyBlock:: @ 080E6E04
	.4byte gUnk_080E6C18
	.4byte 0x00000000
	.4byte gUnk_080E6D58
	.4byte gUnk_080E6D68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D318
	.4byte nullsub_317
	.4byte gUnk_080E6D80
	.4byte gUnk_080E6D9E

gUnk_080E6E2C:: @ 080E6E2C
	.incbin "baserom.gba", 0x0E6E2C, 0x0000070

gUnk_080E6E9C:: @ 080E6E9C
	.incbin "baserom.gba", 0x0E6E9C, 0x0000050

gUnk_080E6EEC:: @ 080E6EEC
	.incbin "baserom.gba", 0x0E6EEC, 0x0000030

Room_RoyalCrypt_5:: @ 080E6F1C
	.4byte gUnk_080E6E2C
	.4byte 0x00000000
	.4byte gUnk_080E6E9C
	.4byte gUnk_080E6EEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D320
	.4byte nullsub_318

gUnk_080E6F3C:: @ 080E6F3C
	.incbin "baserom.gba", 0x0E6F3C, 0x0000070

gUnk_080E6FAC:: @ 080E6FAC
	.incbin "baserom.gba", 0x0E6FAC, 0x00000E0

gUnk_080E708C:: @ 080E708C
	.incbin "baserom.gba", 0x0E708C, 0x0000018

Room_RoyalCrypt_6:: @ 080E70A4
	.4byte gUnk_080E6F3C
	.4byte 0x00000000
	.4byte gUnk_080E6FAC
	.4byte gUnk_080E708C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D328
	.4byte nullsub_319

gUnk_080E70C4:: @ 080E70C4
	.incbin "baserom.gba", 0x0E70C4, 0x0000070

gUnk_080E7134:: @ 080E7134
	.incbin "baserom.gba", 0x0E7134, 0x0000010

gUnk_080E7144:: @ 080E7144
	.incbin "baserom.gba", 0x0E7144, 0x0000008

Room_RoyalCrypt_MushroomPit:: @ 080E714C
	.4byte gUnk_080E70C4
	.4byte 0x00000000
	.4byte gUnk_080E7134
	.4byte gUnk_080E7144
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D330
	.4byte sub_0804D334

gUnk_080E716C:: @ 080E716C
	.incbin "baserom.gba", 0x0E716C, 0x0000020

gUnk_080E718C:: @ 080E718C
	.incbin "baserom.gba", 0x0E718C, 0x0000020

gUnk_080E71AC:: @ 080E71AC
	.incbin "baserom.gba", 0x0E71AC, 0x0000020

gUnk_080E71CC:: @ 080E71CC
	.incbin "baserom.gba", 0x0E71CC, 0x0000030

gUnk_080E71FC:: @ 080E71FC
	.incbin "baserom.gba", 0x0E71FC, 0x0000008

Room_RoyalCrypt_Entrance:: @ 080E7204
	.4byte gUnk_080E716C
	.4byte 0x00000000
	.4byte gUnk_080E71CC
	.4byte gUnk_080E71FC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D33C
	.4byte sub_0804D340

gUnk_080E7224:: @ 080E7224
	.incbin "baserom.gba", 0x0E7224, 0x00000A0

gUnk_080E72C4:: @ 080E72C4
	.incbin "baserom.gba", 0x0E72C4, 0x0000020

gUnk_080E72E4:: @ 080E72E4
	.incbin "baserom.gba", 0x0E72E4, 0x0000030

gUnk_080E7314:: @ 080E7314
	.incbin "baserom.gba", 0x0E7314, 0x0000030

gUnk_080E7344:: @ 080E7344
	.incbin "baserom.gba", 0x0E7344, 0x0000010

gUnk_080E7354:: @ 080E7354
	.incbin "baserom.gba", 0x0E7354, 0x0000010

gUnk_080E7364:: @ 080E7364
	.4byte gUnk_080E7224
	.4byte 0x00000000
	.4byte gUnk_080E7344
	.4byte gUnk_080E7354
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D380
	.4byte sub_0804D384
	.4byte gUnk_080E72E4
	.4byte gUnk_080E7314

gUnk_080E738C:: @ 080E738C
	.incbin "baserom.gba", 0x0E738C, 0x0000020

gUnk_080E73AC:: @ 080E73AC
	.incbin "baserom.gba", 0x0E73AC, 0x0000020

gUnk_080E73CC:: @ 080E73CC
	.incbin "baserom.gba", 0x0E73CC, 0x0000018

gUnk_080E73E4:: @ 080E73E4
	.4byte gUnk_080E738C
	.4byte 0x00000000
	.4byte gUnk_080E73AC
	.4byte gUnk_080E73CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D3F8
	.4byte sub_0804D3FC

gUnk_080E7404:: @ 080E7404
	.incbin "baserom.gba", 0x0E7404, 0x00000A0

gUnk_080E74A4:: @ 080E74A4
	.incbin "baserom.gba", 0x0E74A4, 0x0000010

gUnk_080E74B4:: @ 080E74B4
	.incbin "baserom.gba", 0x0E74B4, 0x0000010

gUnk_080E74C4:: @ 080E74C4
	.4byte gUnk_080E7404
	.4byte 0x00000000
	.4byte gUnk_080E74A4
	.4byte gUnk_080E74B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D408
	.4byte sub_0804D40C

gUnk_080E74E4:: @ 080E74E4
	.incbin "baserom.gba", 0x0E74E4, 0x0000130

gUnk_080E7614:: @ 080E7614
	.incbin "baserom.gba", 0x0E7614, 0x0000010

gUnk_080E7624:: @ 080E7624
	.incbin "baserom.gba", 0x0E7624, 0x0000018

gUnk_080E763C:: @ 080E763C
	.4byte gUnk_080E74E4
	.4byte 0x00000000
	.4byte gUnk_080E7614
	.4byte gUnk_080E7624
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D418
	.4byte sub_0804D41C

gUnk_080E765C:: @ 080E765C
	.incbin "baserom.gba", 0x0E765C, 0x0000020

gUnk_080E767C:: @ 080E767C
	.incbin "baserom.gba", 0x0E767C, 0x0000010

gUnk_080E768C:: @ 080E768C
	.incbin "baserom.gba", 0x0E768C, 0x0000018

gUnk_080E76A4:: @ 080E76A4
	.4byte gUnk_080E765C
	.4byte 0x00000000
	.4byte gUnk_080E767C
	.4byte gUnk_080E768C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D428
	.4byte sub_0804D42C

gUnk_080E76C4:: @ 080E76C4
	.incbin "baserom.gba", 0x0E76C4, 0x0000090

gUnk_080E7754:: @ 080E7754
	.incbin "baserom.gba", 0x0E7754, 0x0000010

gUnk_080E7764:: @ 080E7764
	.incbin "baserom.gba", 0x0E7764, 0x0000010

gUnk_080E7774:: @ 080E7774
	.incbin "baserom.gba", 0x0E7774, 0x0000060

gUnk_080E77D4:: @ 080E77D4
	.4byte gUnk_080E76C4
	.4byte 0x00000000
	.4byte gUnk_080E7754
	.4byte gUnk_080E7764
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D438
	.4byte sub_0804D43C
	.4byte gUnk_080E7774

gUnk_080E77F8:: @ 080E77F8
	.incbin "baserom.gba", 0x0E77F8, 0x0000100

gUnk_080E78F8:: @ 080E78F8
	.incbin "baserom.gba", 0x0E78F8, 0x0000040

gUnk_080E7938:: @ 080E7938
	.incbin "baserom.gba", 0x0E7938, 0x0000010

gUnk_080E7948:: @ 080E7948
	.4byte gUnk_080E77F8
	.4byte 0x00000000
	.4byte gUnk_080E78F8
	.4byte gUnk_080E7938
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D448
	.4byte sub_0804D44C

gUnk_080E7968:: @ 080E7968
	.incbin "baserom.gba", 0x0E7968, 0x0000070

gUnk_080E79D8:: @ 080E79D8
	.incbin "baserom.gba", 0x0E79D8, 0x0000040

gUnk_080E7A18:: @ 080E7A18
	.incbin "baserom.gba", 0x0E7A18, 0x0000018

gUnk_080E7A30:: @ 080E7A30
	.4byte gUnk_080E7968
	.4byte 0x00000000
	.4byte gUnk_080E79D8
	.4byte gUnk_080E7A18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D458
	.4byte sub_0804D45C

gUnk_080E7A50:: @ 080E7A50
	.incbin "baserom.gba", 0x0E7A50, 0x0000070

gUnk_080E7AC0:: @ 080E7AC0
	.incbin "baserom.gba", 0x0E7AC0, 0x0000010

gUnk_080E7AD0:: @ 080E7AD0
	.incbin "baserom.gba", 0x0E7AD0, 0x0000010

gUnk_080E7AE0:: @ 080E7AE0
	.incbin "baserom.gba", 0x0E7AE0, 0x0000030

gUnk_080E7B10:: @ 080E7B10
	.4byte gUnk_080E7A50
	.4byte 0x00000000
	.4byte gUnk_080E7AC0
	.4byte gUnk_080E7AD0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D468
	.4byte sub_0804D46C
	.4byte gUnk_080E7AE0

gUnk_080E7B34:: @ 080E7B34
	.incbin "baserom.gba", 0x0E7B34, 0x0000040

gUnk_080E7B74:: @ 080E7B74
	.incbin "baserom.gba", 0x0E7B74, 0x0000100

gUnk_080E7C74:: @ 080E7C74
	.incbin "baserom.gba", 0x0E7C74, 0x0000010

gUnk_080E7C84:: @ 080E7C84
	.4byte gUnk_080E7B34
	.4byte 0x00000000
	.4byte gUnk_080E7B74
	.4byte gUnk_080E7C74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D478
	.4byte sub_0804D47C

gUnk_080E7CA4:: @ 080E7CA4
	.incbin "baserom.gba", 0x0E7CA4, 0x0000080

gUnk_080E7D24:: @ 080E7D24
	.incbin "baserom.gba", 0x0E7D24, 0x0000010

gUnk_080E7D34:: @ 080E7D34
	.incbin "baserom.gba", 0x0E7D34, 0x0000010

gUnk_080E7D44:: @ 080E7D44
	.4byte gUnk_080E7CA4
	.4byte 0x00000000
	.4byte gUnk_080E7D24
	.4byte gUnk_080E7D34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D488
	.4byte sub_0804D48C

gUnk_080E7D64:: @ 080E7D64
	.incbin "baserom.gba", 0x0E7D64, 0x0000050

gUnk_080E7DB4:: @ 080E7DB4
	.incbin "baserom.gba", 0x0E7DB4, 0x0000010

gUnk_080E7DC4:: @ 080E7DC4
	.incbin "baserom.gba", 0x0E7DC4, 0x0000028

gUnk_080E7DEC:: @ 080E7DEC
	.4byte gUnk_080E7D64
	.4byte 0x00000000
	.4byte gUnk_080E7DB4
	.4byte gUnk_080E7DC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D498
	.4byte sub_0804D49C

gUnk_080E7E0C:: @ 080E7E0C
	.incbin "baserom.gba", 0x0E7E0C, 0x0000070

gUnk_080E7E7C:: @ 080E7E7C
	.incbin "baserom.gba", 0x0E7E7C, 0x0000010

gUnk_080E7E8C:: @ 080E7E8C
	.incbin "baserom.gba", 0x0E7E8C, 0x0000018

gUnk_080E7EA4:: @ 080E7EA4
	.incbin "baserom.gba", 0x0E7EA4, 0x0000020

gUnk_080E7EC4:: @ 080E7EC4
	.4byte gUnk_080E7E0C
	.4byte 0x00000000
	.4byte gUnk_080E7E7C
	.4byte gUnk_080E7E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4A8
	.4byte sub_0804D4AC
	.4byte gUnk_080E7EA4

gUnk_080E7EE8:: @ 080E7EE8
	.incbin "baserom.gba", 0x0E7EE8, 0x0000020

gUnk_080E7F08:: @ 080E7F08
	.incbin "baserom.gba", 0x0E7F08, 0x0000030

gUnk_080E7F38:: @ 080E7F38
	.incbin "baserom.gba", 0x0E7F38, 0x0000018

gUnk_080E7F50:: @ 080E7F50
	.4byte gUnk_080E7EE8
	.4byte 0x00000000
	.4byte gUnk_080E7F08
	.4byte gUnk_080E7F38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4B8
	.4byte sub_0804D4BC

gUnk_080E7F70:: @ 080E7F70
	.incbin "baserom.gba", 0x0E7F70, 0x0000080

gUnk_080E7FF0:: @ 080E7FF0
	.incbin "baserom.gba", 0x0E7FF0, 0x0000030

gUnk_080E8020:: @ 080E8020
	.incbin "baserom.gba", 0x0E8020, 0x0000018

gUnk_080E8038:: @ 080E8038
	.4byte gUnk_080E7F70
	.4byte 0x00000000
	.4byte gUnk_080E7FF0
	.4byte gUnk_080E8020
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4C8
	.4byte sub_0804D4CC

gUnk_080E8058:: @ 080E8058
	.incbin "baserom.gba", 0x0E8058, 0x0000070

gUnk_080E80C8:: @ 080E80C8
	.incbin "baserom.gba", 0x0E80C8, 0x0000030

gUnk_080E80F8:: @ 080E80F8
	.incbin "baserom.gba", 0x0E80F8, 0x0000018

gUnk_080E8110:: @ 080E8110
	.4byte gUnk_080E8058
	.4byte 0x00000000
	.4byte gUnk_080E80C8
	.4byte gUnk_080E80F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4D8
	.4byte sub_0804D4DC

gUnk_080E8130:: @ 080E8130
	.incbin "baserom.gba", 0x0E8130, 0x0000160

gUnk_080E8290:: @ 080E8290
	.incbin "baserom.gba", 0x0E8290, 0x00000A0

gUnk_080E8330:: @ 080E8330
	.incbin "baserom.gba", 0x0E8330, 0x0000018

gUnk_080E8348:: @ 080E8348
	.4byte gUnk_080E8130
	.4byte 0x00000000
	.4byte gUnk_080E8290
	.4byte gUnk_080E8330
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4E8
	.4byte sub_0804D4EC

gUnk_080E8368:: @ 080E8368
	.incbin "baserom.gba", 0x0E8368, 0x0000020

gUnk_080E8388:: @ 080E8388
	.incbin "baserom.gba", 0x0E8388, 0x0000040

gUnk_080E83C8:: @ 080E83C8
	.incbin "baserom.gba", 0x0E83C8, 0x0000010

gUnk_080E83D8:: @ 080E83D8
	.4byte gUnk_080E8368
	.4byte 0x00000000
	.4byte gUnk_080E8388
	.4byte gUnk_080E83C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D4F8
	.4byte sub_0804D4FC

gUnk_080E83F8:: @ 080E83F8
	.incbin "baserom.gba", 0x0E83F8, 0x0000020

gUnk_080E8418:: @ 080E8418
	.incbin "baserom.gba", 0x0E8418, 0x0000010

gUnk_080E8428:: @ 080E8428
	.incbin "baserom.gba", 0x0E8428, 0x0000010

gUnk_080E8438:: @ 080E8438
	.4byte gUnk_080E83F8
	.4byte 0x00000000
	.4byte gUnk_080E8418
	.4byte gUnk_080E8428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D508
	.4byte sub_0804D50C

gUnk_080E8458:: @ 080E8458
	.incbin "baserom.gba", 0x0E8458, 0x0000070

gUnk_080E84C8:: @ 080E84C8
	.incbin "baserom.gba", 0x0E84C8, 0x0000030

gUnk_080E84F8:: @ 080E84F8
	.incbin "baserom.gba", 0x0E84F8, 0x0000010

gUnk_080E8508:: @ 080E8508
	.4byte gUnk_080E8458
	.4byte 0x00000000
	.4byte gUnk_080E84C8
	.4byte gUnk_080E84F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D518
	.4byte sub_0804D51C

gUnk_080E8528:: @ 080E8528
	.incbin "baserom.gba", 0x0E8528, 0x00000A0

gUnk_080E85C8:: @ 080E85C8
	.incbin "baserom.gba", 0x0E85C8, 0x0000030

gUnk_080E85F8:: @ 080E85F8
	.incbin "baserom.gba", 0x0E85F8, 0x0000010

gUnk_080E8608:: @ 080E8608
	.4byte gUnk_080E8528
	.4byte 0x00000000
	.4byte gUnk_080E85C8
	.4byte gUnk_080E85F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D528
	.4byte sub_0804D52C

gUnk_080E8628:: @ 080E8628
	.incbin "baserom.gba", 0x0E8628, 0x0000140

gUnk_080E8768:: @ 080E8768
	.incbin "baserom.gba", 0x0E8768, 0x0000070

gUnk_080E87D8:: @ 080E87D8
	.incbin "baserom.gba", 0x0E87D8, 0x0000028

gUnk_080E8800:: @ 080E8800
	.incbin "baserom.gba", 0x0E8800, 0x0000024

gUnk_080E8824:: @ 080E8824
	.4byte gUnk_080E8628
	.4byte 0x00000000
	.4byte gUnk_080E8768
	.4byte gUnk_080E87D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D538
	.4byte nullsub_59
	.4byte gUnk_080E8800

gUnk_080E8848:: @ 080E8848
	.incbin "baserom.gba", 0x0E8848, 0x00000D0

gUnk_080E8918:: @ 080E8918
	.incbin "baserom.gba", 0x0E8918, 0x0000010

gUnk_080E8928:: @ 080E8928
	.incbin "baserom.gba", 0x0E8928, 0x0000010

gUnk_080E8938:: @ 080E8938
	.incbin "baserom.gba", 0x0E8938, 0x0000050

gUnk_080E8988:: @ 080E8988
	.4byte gUnk_080E8848
	.4byte 0x00000000
	.4byte gUnk_080E8918
	.4byte gUnk_080E8928
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D540
	.4byte sub_0804D544
	.4byte gUnk_080E8938

gUnk_080E89AC:: @ 080E89AC
	.incbin "baserom.gba", 0x0E89AC, 0x0000030

gUnk_080E89DC:: @ 080E89DC
	.incbin "baserom.gba", 0x0E89DC, 0x0000010

gUnk_080E89EC:: @ 080E89EC
	.incbin "baserom.gba", 0x0E89EC, 0x0000010

gUnk_080E89FC:: @ 080E89FC
	.4byte gUnk_080E89AC
	.4byte 0x00000000
	.4byte gUnk_080E89DC
	.4byte gUnk_080E89EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D550
	.4byte sub_0804D554

gUnk_080E8A1C:: @ 080E8A1C
	.incbin "baserom.gba", 0x0E8A1C, 0x00000A0

gUnk_080E8ABC:: @ 080E8ABC
	.incbin "baserom.gba", 0x0E8ABC, 0x0000070

gUnk_080E8B2C:: @ 080E8B2C
	.incbin "baserom.gba", 0x0E8B2C, 0x0000010

gUnk_080E8B3C:: @ 080E8B3C
	.incbin "baserom.gba", 0x0E8B3C, 0x0000030

gUnk_080E8B6C:: @ 080E8B6C
	.incbin "baserom.gba", 0x0E8B6C, 0x0000030

gUnk_080E8B9C:: @ 080E8B9C
	.incbin "baserom.gba", 0x0E8B9C, 0x0000024

gUnk_080E8BC0:: @ 080E8BC0
	.4byte gUnk_080E8A1C
	.4byte 0x00000000
	.4byte gUnk_080E8ABC
	.4byte gUnk_080E8B2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D560
	.4byte sub_0804D564
	.4byte gUnk_080E8B9C
	.4byte gUnk_080E8B3C
	.4byte gUnk_080E8B6C

gUnk_080E8BEC:: @ 080E8BEC
	.incbin "baserom.gba", 0x0E8BEC, 0x0000080

gUnk_080E8C6C:: @ 080E8C6C
	.incbin "baserom.gba", 0x0E8C6C, 0x0000010

gUnk_080E8C7C:: @ 080E8C7C
	.incbin "baserom.gba", 0x0E8C7C, 0x0000010

gUnk_080E8C8C:: @ 080E8C8C
	.incbin "baserom.gba", 0x0E8C8C, 0x0000024

gUnk_080E8CB0:: @ 080E8CB0
	.4byte gUnk_080E8BEC
	.4byte 0x00000000
	.4byte gUnk_080E8C6C
	.4byte gUnk_080E8C7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D570
	.4byte sub_0804D574
	.4byte gUnk_080E8C8C

gUnk_080E8CD4:: @ 080E8CD4
	.incbin "baserom.gba", 0x0E8CD4, 0x00001E0

gUnk_080E8EB4:: @ 080E8EB4
	.incbin "baserom.gba", 0x0E8EB4, 0x0000020

gUnk_080E8ED4:: @ 080E8ED4
	.incbin "baserom.gba", 0x0E8ED4, 0x0000010

gUnk_080E8EE4:: @ 080E8EE4
	.4byte gUnk_080E8CD4
	.4byte 0x00000000
	.4byte gUnk_080E8EB4
	.4byte gUnk_080E8ED4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D580
	.4byte sub_0804D584

gUnk_080E8F04:: @ 080E8F04
	.incbin "baserom.gba", 0x0E8F04, 0x0000040

gUnk_080E8F44:: @ 080E8F44
	.incbin "baserom.gba", 0x0E8F44, 0x0000030

gUnk_080E8F74:: @ 080E8F74
	.incbin "baserom.gba", 0x0E8F74, 0x0000010

gUnk_080E8F84:: @ 080E8F84
	.4byte gUnk_080E8F04
	.4byte 0x00000000
	.4byte gUnk_080E8F44
	.4byte gUnk_080E8F74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D590
	.4byte nullsub_60

gUnk_080E8FA4:: @ 080E8FA4
	.incbin "baserom.gba", 0x0E8FA4, 0x0000040

gUnk_080E8FE4:: @ 080E8FE4
	.incbin "baserom.gba", 0x0E8FE4, 0x0000010

gUnk_080E8FF4:: @ 080E8FF4
	.incbin "baserom.gba", 0x0E8FF4, 0x0000018

gUnk_080E900C:: @ 080E900C
	.incbin "baserom.gba", 0x0E900C, 0x0000040

gUnk_080E904C:: @ 080E904C
	.4byte gUnk_080E8FA4
	.4byte 0x00000000
	.4byte gUnk_080E8FE4
	.4byte gUnk_080E8FF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D598
	.4byte nullsub_61
	.4byte gUnk_080E900C

gUnk_080E9070:: @ 080E9070
	.incbin "baserom.gba", 0x0E9070, 0x0000030

gUnk_080E90A0:: @ 080E90A0
	.incbin "baserom.gba", 0x0E90A0, 0x0000030

gUnk_080E90D0:: @ 080E90D0
	.incbin "baserom.gba", 0x0E90D0, 0x0000010

gUnk_080E90E0:: @ 080E90E0
	.4byte gUnk_080E9070
	.4byte 0x00000000
	.4byte gUnk_080E90A0
	.4byte gUnk_080E90D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5A0
	.4byte nullsub_62

gUnk_080E9100:: @ 080E9100
	.incbin "baserom.gba", 0x0E9100, 0x0000030

gUnk_080E9130:: @ 080E9130
	.incbin "baserom.gba", 0x0E9130, 0x0000040

gUnk_080E9170:: @ 080E9170
	.incbin "baserom.gba", 0x0E9170, 0x0000010

gUnk_080E9180:: @ 080E9180
	.4byte gUnk_080E9100
	.4byte 0x00000000
	.4byte gUnk_080E9130
	.4byte gUnk_080E9170
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5A8
	.4byte nullsub_63

gUnk_080E91A0:: @ 080E91A0
	.incbin "baserom.gba", 0x0E91A0, 0x0000060

gUnk_080E9200:: @ 080E9200
	.incbin "baserom.gba", 0x0E9200, 0x0000010

gUnk_080E9210:: @ 080E9210
	.incbin "baserom.gba", 0x0E9210, 0x0000010

gUnk_080E9220:: @ 080E9220
	.4byte gUnk_080E91A0
	.4byte 0x00000000
	.4byte gUnk_080E9200
	.4byte gUnk_080E9210
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5B0
	.4byte nullsub_64

gUnk_080E9240:: @ 080E9240
	.incbin "baserom.gba", 0x0E9240, 0x0000090

gUnk_080E92D0:: @ 080E92D0
	.incbin "baserom.gba", 0x0E92D0, 0x0000030

gUnk_080E9300:: @ 080E9300
	.incbin "baserom.gba", 0x0E9300, 0x0000010

gUnk_080E9310:: @ 080E9310
	.4byte gUnk_080E9240
	.4byte 0x00000000
	.4byte gUnk_080E92D0
	.4byte gUnk_080E9300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5B8
	.4byte nullsub_65

gUnk_080E9330:: @ 080E9330
	.incbin "baserom.gba", 0x0E9330, 0x0000080

gUnk_080E93B0:: @ 080E93B0
	.incbin "baserom.gba", 0x0E93B0, 0x0000110

gUnk_080E94C0:: @ 080E94C0
	.incbin "baserom.gba", 0x0E94C0, 0x0000010

gUnk_080E94D0:: @ 080E94D0
	.incbin "baserom.gba", 0x0E94D0, 0x000001E

gUnk_080E94EE:: @ 080E94EE
	.incbin "baserom.gba", 0x0E94EE, 0x0000012

gUnk_080E9500:: @ 080E9500
	.incbin "baserom.gba", 0x0E9500, 0x0000018

gUnk_080E9518:: @ 080E9518
	.4byte gUnk_080E9330
	.4byte 0x00000000
	.4byte gUnk_080E93B0
	.4byte gUnk_080E94C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5C0
	.4byte sub_0804D5C4
	.4byte gUnk_080E94D0
	.4byte gUnk_080E94EE
	.4byte gUnk_080E9500

gUnk_080E9544:: @ 080E9544
	.incbin "baserom.gba", 0x0E9544, 0x0000140

gUnk_080E9684:: @ 080E9684
	.incbin "baserom.gba", 0x0E9684, 0x0000010

gUnk_080E9694:: @ 080E9694
	.incbin "baserom.gba", 0x0E9694, 0x0000010

gUnk_080E96A4:: @ 080E96A4
	.incbin "baserom.gba", 0x0E96A4, 0x0000030

gUnk_080E96D4:: @ 080E96D4
	.4byte gUnk_080E9544
	.4byte 0x00000000
	.4byte gUnk_080E9684
	.4byte gUnk_080E9694
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5D0
	.4byte sub_0804D5D4
	.4byte gUnk_080E96A4

gUnk_080E96F8:: @ 080E96F8
	.incbin "baserom.gba", 0x0E96F8, 0x00000E0

gUnk_080E97D8:: @ 080E97D8
	.incbin "baserom.gba", 0x0E97D8, 0x0000040

gUnk_080E9818:: @ 080E9818
	.incbin "baserom.gba", 0x0E9818, 0x0000010

gUnk_080E9828:: @ 080E9828
	.4byte gUnk_080E96F8
	.4byte 0x00000000
	.4byte gUnk_080E97D8
	.4byte gUnk_080E9818
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5E0
	.4byte sub_0804D5E4

gUnk_080E9848:: @ 080E9848
	.incbin "baserom.gba", 0x0E9848, 0x00000D0

gUnk_080E9918:: @ 080E9918
	.incbin "baserom.gba", 0x0E9918, 0x0000010

gUnk_080E9928:: @ 080E9928
	.incbin "baserom.gba", 0x0E9928, 0x0000010

gUnk_080E9938:: @ 080E9938
	.incbin "baserom.gba", 0x0E9938, 0x0000036

gUnk_080E996E:: @ 080E996E
	.incbin "baserom.gba", 0x0E996E, 0x0000036

gUnk_080E99A4:: @ 080E99A4
	.incbin "baserom.gba", 0x0E99A4, 0x0000036

gUnk_080E99DA:: @ 080E99DA
	.incbin "baserom.gba", 0x0E99DA, 0x0000036

gUnk_080E9A10:: @ 080E9A10
	.4byte gUnk_080E9848
	.4byte 0x00000000
	.4byte gUnk_080E9918
	.4byte gUnk_080E9928
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D5F0
	.4byte sub_0804D5F4
	.4byte gUnk_080E9938
	.4byte gUnk_080E996E
	.4byte gUnk_080E99A4
	.4byte gUnk_080E99DA

gUnk_080E9A40:: @ 080E9A40
	.incbin "baserom.gba", 0x0E9A40, 0x0000020

gUnk_080E9A60:: @ 080E9A60
	.incbin "baserom.gba", 0x0E9A60, 0x0000060

gUnk_080E9AC0:: @ 080E9AC0
	.incbin "baserom.gba", 0x0E9AC0, 0x0000010

gUnk_080E9AD0:: @ 080E9AD0
	.4byte gUnk_080E9A40
	.4byte 0x00000000
	.4byte gUnk_080E9A60
	.4byte gUnk_080E9AC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D600
	.4byte nullsub_66

gUnk_080E9AF0:: @ 080E9AF0
	.incbin "baserom.gba", 0x0E9AF0, 0x0000040

gUnk_080E9B30:: @ 080E9B30
	.incbin "baserom.gba", 0x0E9B30, 0x0000040

gUnk_080E9B70:: @ 080E9B70
	.incbin "baserom.gba", 0x0E9B70, 0x0000010

gUnk_080E9B80:: @ 080E9B80
	.4byte gUnk_080E9AF0
	.4byte 0x00000000
	.4byte gUnk_080E9B30
	.4byte gUnk_080E9B70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D608
	.4byte nullsub_67

gUnk_080E9BA0:: @ 080E9BA0
	.incbin "baserom.gba", 0x0E9BA0, 0x0000060

gUnk_080E9C00:: @ 080E9C00
	.incbin "baserom.gba", 0x0E9C00, 0x0000030

gUnk_080E9C30:: @ 080E9C30
	.incbin "baserom.gba", 0x0E9C30, 0x0000010

gUnk_080E9C40:: @ 080E9C40
	.4byte gUnk_080E9BA0
	.4byte 0x00000000
	.4byte gUnk_080E9C00
	.4byte gUnk_080E9C30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D610
	.4byte nullsub_68

gUnk_080E9C60:: @ 080E9C60
	.incbin "baserom.gba", 0x0E9C60, 0x0000030

gUnk_080E9C90:: @ 080E9C90
	.incbin "baserom.gba", 0x0E9C90, 0x0000030

gUnk_080E9CC0:: @ 080E9CC0
	.incbin "baserom.gba", 0x0E9CC0, 0x0000010

gUnk_080E9CD0:: @ 080E9CD0
	.4byte gUnk_080E9C60
	.4byte 0x00000000
	.4byte gUnk_080E9C90
	.4byte gUnk_080E9CC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D618
	.4byte nullsub_69

gUnk_080E9CF0:: @ 080E9CF0
	.incbin "baserom.gba", 0x0E9CF0, 0x0000060

gUnk_080E9D50:: @ 080E9D50
	.incbin "baserom.gba", 0x0E9D50, 0x0000010

gUnk_080E9D60:: @ 080E9D60
	.incbin "baserom.gba", 0x0E9D60, 0x0000018

gUnk_080E9D78:: @ 080E9D78
	.incbin "baserom.gba", 0x0E9D78, 0x0000030

gUnk_080E9DA8:: @ 080E9DA8
	.4byte gUnk_080E9CF0
	.4byte 0x00000000
	.4byte gUnk_080E9D50
	.4byte gUnk_080E9D60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D620
	.4byte nullsub_70
	.4byte gUnk_080E9D78

gUnk_080E9DCC:: @ 080E9DCC
	.incbin "baserom.gba", 0x0E9DCC, 0x0000020

gUnk_080E9DEC:: @ 080E9DEC
	.incbin "baserom.gba", 0x0E9DEC, 0x0000030

gUnk_080E9E1C:: @ 080E9E1C
	.incbin "baserom.gba", 0x0E9E1C, 0x0000010

gUnk_080E9E2C:: @ 080E9E2C
	.4byte gUnk_080E9DCC
	.4byte 0x00000000
	.4byte gUnk_080E9DEC
	.4byte gUnk_080E9E1C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D628
	.4byte nullsub_71

gUnk_080E9E4C:: @ 080E9E4C
	.incbin "baserom.gba", 0x0E9E4C, 0x0000020

gUnk_080E9E6C:: @ 080E9E6C
	.incbin "baserom.gba", 0x0E9E6C, 0x0000040

gUnk_080E9EAC:: @ 080E9EAC
	.incbin "baserom.gba", 0x0E9EAC, 0x0000018

gUnk_080E9EC4:: @ 080E9EC4
	.incbin "baserom.gba", 0x0E9EC4, 0x000001E

gUnk_080E9EE2:: @ 080E9EE2
	.incbin "baserom.gba", 0x0E9EE2, 0x000001E

gUnk_080E9F00:: @ 080E9F00
	.incbin "baserom.gba", 0x0E9F00, 0x0000020

gUnk_080E9F20:: @ 080E9F20
	.4byte gUnk_080E9E4C
	.4byte 0x00000000
	.4byte gUnk_080E9E6C
	.4byte gUnk_080E9EAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D630
	.4byte sub_0804D634
	.4byte gUnk_080E9EC4
	.4byte gUnk_080E9EE2
	.4byte gUnk_080E9F00

gUnk_080E9F4C:: @ 080E9F4C
	.incbin "baserom.gba", 0x0E9F4C, 0x0000150

gUnk_080EA09C:: @ 080EA09C
	.incbin "baserom.gba", 0x0EA09C, 0x0000050

gUnk_080EA0EC:: @ 080EA0EC
	.incbin "baserom.gba", 0x0EA0EC, 0x0000020

gUnk_080EA10C:: @ 080EA10C
	.incbin "baserom.gba", 0x0EA10C, 0x0000018

gUnk_080EA124:: @ 080EA124
	.incbin "baserom.gba", 0x0EA124, 0x0000030

gUnk_080EA154:: @ 080EA154
	.incbin "baserom.gba", 0x0EA154, 0x0000050

gUnk_080EA1A4:: @ 080EA1A4
	.incbin "baserom.gba", 0x0EA1A4, 0x0000070

gUnk_080EA214:: @ 080EA214
	.4byte gUnk_080E9F4C
	.4byte 0x00000000
	.4byte gUnk_080EA0EC
	.4byte gUnk_080EA10C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D640
	.4byte sub_0804D644
	.4byte gUnk_080EA124
	.4byte gUnk_080EA154
	.4byte gUnk_080EA1A4

gUnk_080EA240:: @ 080EA240
	.incbin "baserom.gba", 0x0EA240, 0x0000020

gUnk_080EA260:: @ 080EA260
	.incbin "baserom.gba", 0x0EA260, 0x0000080

gUnk_080EA2E0:: @ 080EA2E0
	.incbin "baserom.gba", 0x0EA2E0, 0x0000018

gUnk_080EA2F8:: @ 080EA2F8
	.4byte gUnk_080EA240
	.4byte 0x00000000
	.4byte gUnk_080EA260
	.4byte gUnk_080EA2E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D664
	.4byte sub_0804D668

gUnk_080EA318:: @ 080EA318
	.incbin "baserom.gba", 0x0EA318, 0x00000F0

gUnk_080EA408:: @ 080EA408
	.incbin "baserom.gba", 0x0EA408, 0x0000010

gUnk_080EA418:: @ 080EA418
	.incbin "baserom.gba", 0x0EA418, 0x0000010

gUnk_080EA428:: @ 080EA428
	.incbin "baserom.gba", 0x0EA428, 0x0000050

gUnk_080EA478:: @ 080EA478
	.incbin "baserom.gba", 0x0EA478, 0x000001E

gUnk_080EA496:: @ 080EA496
	.incbin "baserom.gba", 0x0EA496, 0x0000026

gUnk_080EA4BC:: @ 080EA4BC
	.4byte gUnk_080EA318
	.4byte 0x00000000
	.4byte gUnk_080EA408
	.4byte gUnk_080EA418
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D674
	.4byte sub_0804D678
	.4byte gUnk_080EA428
	.4byte gUnk_080EA478
	.4byte gUnk_080EA496

gUnk_080EA4E8:: @ 080EA4E8
	.incbin "baserom.gba", 0x0EA4E8, 0x0000030

gUnk_080EA518:: @ 080EA518
	.incbin "baserom.gba", 0x0EA518, 0x0000010

gUnk_080EA528:: @ 080EA528
	.incbin "baserom.gba", 0x0EA528, 0x0000010

gUnk_080EA538:: @ 080EA538
	.4byte gUnk_080EA4E8
	.4byte 0x00000000
	.4byte gUnk_080EA518
	.4byte gUnk_080EA528
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D684
	.4byte sub_0804D688

gUnk_080EA558:: @ 080EA558
	.incbin "baserom.gba", 0x0EA558, 0x0000100

gUnk_080EA658:: @ 080EA658
	.incbin "baserom.gba", 0x0EA658, 0x0000080

gUnk_080EA6D8:: @ 080EA6D8
	.incbin "baserom.gba", 0x0EA6D8, 0x0000010

gUnk_080EA6E8:: @ 080EA6E8
	.4byte gUnk_080EA558
	.4byte 0x00000000
	.4byte gUnk_080EA658
	.4byte gUnk_080EA6D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D694
	.4byte sub_0804D698

gUnk_080EA708:: @ 080EA708
	.incbin "baserom.gba", 0x0EA708, 0x00000A0

gUnk_080EA7A8:: @ 080EA7A8
	.incbin "baserom.gba", 0x0EA7A8, 0x0000010

gUnk_080EA7B8:: @ 080EA7B8
	.incbin "baserom.gba", 0x0EA7B8, 0x0000010

gUnk_080EA7C8:: @ 080EA7C8
	.4byte gUnk_080EA708
	.4byte 0x00000000
	.4byte gUnk_080EA7A8
	.4byte gUnk_080EA7B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6A4
	.4byte sub_0804D6A8

gUnk_080EA7E8:: @ 080EA7E8
	.incbin "baserom.gba", 0x0EA7E8, 0x0000180

gUnk_080EA968:: @ 080EA968
	.incbin "baserom.gba", 0x0EA968, 0x0000050

gUnk_080EA9B8:: @ 080EA9B8
	.incbin "baserom.gba", 0x0EA9B8, 0x0000028

gUnk_080EA9E0:: @ 080EA9E0
	.4byte gUnk_080EA7E8
	.4byte 0x00000000
	.4byte gUnk_080EA968
	.4byte gUnk_080EA9B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6B4
	.4byte nullsub_72

gUnk_080EAA00:: @ 080EAA00
	.incbin "baserom.gba", 0x0EAA00, 0x0000030

gUnk_080EAA30:: @ 080EAA30
	.incbin "baserom.gba", 0x0EAA30, 0x0000010

gUnk_080EAA40:: @ 080EAA40
	.incbin "baserom.gba", 0x0EAA40, 0x0000010

gUnk_080EAA50:: @ 080EAA50
	.incbin "baserom.gba", 0x0EAA50, 0x0000008

Room_PalaceOfWindsBoss_Main:: @ 080EAA58
	.4byte gUnk_080EAA00
	.4byte gUnk_080EAA30
	.4byte gUnk_080EAA40
	.4byte gUnk_080EAA50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6BC
	.4byte nullsub_73

gUnk_080EAA78:: @ 080EAA78
	.incbin "baserom.gba", 0x0EAA78, 0x000000C
	.4byte script_0800DFE4
	.incbin "baserom.gba", 0x0EAA88, 0x0000030

gUnk_080EAAB8:: @ 080EAAB8
	.incbin "baserom.gba", 0x0EAAB8, 0x0000020

gUnk_080EAAD8:: @ 080EAAD8
	.incbin "baserom.gba", 0x0EAAD8, 0x0000020

gUnk_080EAAF8:: @ 080EAAF8
	.incbin "baserom.gba", 0x0EAAF8, 0x0000008

Room_Vaati2_Main:: @ 080EAB00
	.4byte gUnk_080EAA78
	.4byte gUnk_080EAAB8
	.4byte gUnk_080EAAD8
	.4byte gUnk_080EAAF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6C4
	.4byte sub_0804D6C8

gUnk_080EAB20:: @ 080EAB20
	.incbin "baserom.gba", 0x0EAB20, 0x000002C
	.4byte script_0800A0FC
	.incbin "baserom.gba", 0x0EAB50, 0x0000040

gUnk_080EAB90:: @ 080EAB90
	.incbin "baserom.gba", 0x0EAB90, 0x0000010

gUnk_080EABA0:: @ 080EABA0
	.incbin "baserom.gba", 0x0EABA0, 0x0000008

Room_Vaati3_Main:: @ 080EABA8
	.4byte gUnk_080EAB20
	.4byte 0x00000000
	.4byte gUnk_080EAB90
	.4byte gUnk_080EABA0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D6EC
	.4byte sub_0804D6F0

gUnk_080EABC8:: @ 080EABC8
	.incbin "baserom.gba", 0x0EABC8, 0x000000C
	.4byte script_0800E4A4
	.incbin "baserom.gba", 0x0EABD8, 0x0000020

gUnk_080EABF8:: @ 080EABF8
	.incbin "baserom.gba", 0x0EABF8, 0x0000020

gUnk_080EAC18:: @ 080EAC18
	.incbin "baserom.gba", 0x0EAC18, 0x0000020

gUnk_080EAC38:: @ 080EAC38
	.incbin "baserom.gba", 0x0EAC38, 0x0000008

Room_DarkHyruleCastleBridge_Main:: @ 080EAC40
	.4byte gUnk_080EABC8
	.4byte gUnk_080EABF8
	.4byte gUnk_080EAC18
	.4byte gUnk_080EAC38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D754
	.4byte sub_0804D758

gUnk_080EAC60:: @ 080EAC60
	.incbin "baserom.gba", 0x0EAC60, 0x0000030

gUnk_080EAC90:: @ 080EAC90
	.incbin "baserom.gba", 0x0EAC90, 0x0000010

gUnk_080EACA0:: @ 080EACA0
	.incbin "baserom.gba", 0x0EACA0, 0x0000008

Room_VaatisArms_First:: @ 080EACA8
	.4byte gUnk_080EAC60
	.4byte 0x00000000
	.4byte gUnk_080EAC90
	.4byte gUnk_080EACA0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D764
	.4byte nullsub_74

gUnk_080EACC8:: @ 080EACC8
	.incbin "baserom.gba", 0x0EACC8, 0x0000030

gUnk_080EACF8:: @ 080EACF8
	.incbin "baserom.gba", 0x0EACF8, 0x0000010

gUnk_080EAD08:: @ 080EAD08
	.incbin "baserom.gba", 0x0EAD08, 0x0000010

Room_VaatisArms_Second:: @ 080EAD18
	.4byte gUnk_080EACC8
	.4byte 0x00000000
	.4byte gUnk_080EACF8
	.4byte gUnk_080EAD08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D76C
	.4byte nullsub_75

gUnk_080EAD38:: @ 080EAD38
	.incbin "baserom.gba", 0x0EAD38, 0x0000010

gUnk_080EAD48:: @ 080EAD48
	.incbin "baserom.gba", 0x0EAD48, 0x0000020

gUnk_080EAD68:: @ 080EAD68
	.incbin "baserom.gba", 0x0EAD68, 0x000000C
	.4byte script_0800DA60
	.incbin "baserom.gba", 0x0EAD78, 0x000000C
	.4byte script_0800DB18
	.incbin "baserom.gba", 0x0EAD88, 0x000000C
	.4byte script_0800DB28
	.incbin "baserom.gba", 0x0EAD98, 0x0000020

gUnk_080EADB8:: @ 080EADB8
	.incbin "baserom.gba", 0x0EADB8, 0x000000C
	.4byte script_0800DB78
	.incbin "baserom.gba", 0x0EADC8, 0x000000C
	.4byte script_0800DCAC
	.incbin "baserom.gba", 0x0EADD8, 0x0000010

gUnk_080EADE8:: @ 080EADE8
	.incbin "baserom.gba", 0x0EADE8, 0x0000010

gUnk_080EADF8:: @ 080EADF8
	.incbin "baserom.gba", 0x0EADF8, 0x0000008

gUnk_080EAE00:: @ 080EAE00
	.incbin "baserom.gba", 0x0EAE00, 0x0000020

Room_DarkHyruleCastleOutside_ZeldaStatuePlatform:: @ 080EAE20
	.4byte gUnk_080EAD38
	.4byte gUnk_080EAD48
	.4byte gUnk_080EADE8
	.4byte gUnk_080EADF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D774
	.4byte sub_0804D780

gUnk_080EAE40:: @ 080EAE40
	.incbin "baserom.gba", 0x0EAE40, 0x0000020

gUnk_080EAE60:: @ 080EAE60
	.incbin "baserom.gba", 0x0EAE60, 0x000000C
	.4byte script_0800E0BC
	.incbin "baserom.gba", 0x0EAE70, 0x000000C
	.4byte script_0800E154
	.incbin "baserom.gba", 0x0EAE80, 0x000000C
	.4byte script_0800E200
	.incbin "baserom.gba", 0x0EAE90, 0x0000030

gUnk_080EAEC0:: @ 080EAEC0
	.incbin "baserom.gba", 0x0EAEC0, 0x000000C
	.4byte script_0800A1D8
	.incbin "baserom.gba", 0x0EAED0, 0x000000C
	.4byte script_0800A340
	.incbin "baserom.gba", 0x0EAEE0, 0x000000C
	.4byte script_0800A3D8
	.incbin "baserom.gba", 0x0EAEF0, 0x000000C
	.4byte script_0800A590
	.incbin "baserom.gba", 0x0EAF00, 0x000000C
	.4byte script_0800A500
	.incbin "baserom.gba", 0x0EAF10, 0x0000010

gUnk_080EAF20:: @ 080EAF20
	.incbin "baserom.gba", 0x0EAF20, 0x000000C
	.4byte script_0800AAD8
	.incbin "baserom.gba", 0x0EAF30, 0x0000010

gUnk_080EAF40:: @ 080EAF40
	.incbin "baserom.gba", 0x0EAF40, 0x0000020

gUnk_080EAF60:: @ 080EAF60
	.incbin "baserom.gba", 0x0EAF60, 0x0000010

gUnk_080EAF70:: @ 080EAF70
	.incbin "baserom.gba", 0x0EAF70, 0x0000008

Room_DarkHyruleCastleOutside_Garden:: @ 080EAF78
	.4byte gUnk_080EAE40
	.4byte gUnk_080EAF40
	.4byte gUnk_080EAF60
	.4byte gUnk_080EAF70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D830
	.4byte sub_0804D834

gUnk_080EAF98:: @ 080EAF98
	.incbin "baserom.gba", 0x0EAF98, 0x0000020

gUnk_080EAFB8:: @ 080EAFB8
	.incbin "baserom.gba", 0x0EAFB8, 0x0000010

gUnk_080EAFC8:: @ 080EAFC8
	.incbin "baserom.gba", 0x0EAFC8, 0x0000008

Room_DarkHyruleCastleOutside_OutsideNorthwest:: @ 080EAFD0
	.4byte gUnk_080EAF98
	.4byte 0x00000000
	.4byte gUnk_080EAFB8
	.4byte gUnk_080EAFC8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8CC
	.4byte nullsub_320

gUnk_080EAFF0:: @ 080EAFF0
	.incbin "baserom.gba", 0x0EAFF0, 0x0000080

gUnk_080EB070:: @ 080EB070
	.incbin "baserom.gba", 0x0EB070, 0x0000020

gUnk_080EB090:: @ 080EB090
	.incbin "baserom.gba", 0x0EB090, 0x0000008

gUnk_080EB098:: @ 080EB098
	.incbin "baserom.gba", 0x0EB098, 0x000000C

Room_DarkHyruleCastleOutside_OutsideNortheast:: @ 080EB0A4
	.4byte gUnk_080EAFF0
	.4byte 0x00000000
	.4byte gUnk_080EB070
	.4byte gUnk_080EB090
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8D4
	.4byte nullsub_321
	.4byte gUnk_080EB098

gUnk_080EB0C8:: @ 080EB0C8
	.incbin "baserom.gba", 0x0EB0C8, 0x0000050

gUnk_080EB118:: @ 080EB118
	.incbin "baserom.gba", 0x0EB118, 0x0000060

gUnk_080EB178:: @ 080EB178
	.incbin "baserom.gba", 0x0EB178, 0x0000008

Room_DarkHyruleCastleOutside_OutsideEast:: @ 080EB180
	.4byte gUnk_080EB0C8
	.4byte 0x00000000
	.4byte gUnk_080EB118
	.4byte gUnk_080EB178
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8DC
	.4byte nullsub_322

gUnk_080EB1A0:: @ 080EB1A0
	.incbin "baserom.gba", 0x0EB1A0, 0x0000010

gUnk_080EB1B0:: @ 080EB1B0
	.incbin "baserom.gba", 0x0EB1B0, 0x0000020

gUnk_080EB1D0:: @ 080EB1D0
	.incbin "baserom.gba", 0x0EB1D0, 0x0000008

Room_DarkHyruleCastleOutside_OutsideSouthwest:: @ 080EB1D8
	.4byte gUnk_080EB1A0
	.4byte 0x00000000
	.4byte gUnk_080EB1B0
	.4byte gUnk_080EB1D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8E4
	.4byte nullsub_323

gUnk_080EB1F8:: @ 080EB1F8
	.incbin "baserom.gba", 0x0EB1F8, 0x0000090

gUnk_080EB288:: @ 080EB288
	.incbin "baserom.gba", 0x0EB288, 0x0000090

gUnk_080EB318:: @ 080EB318
	.incbin "baserom.gba", 0x0EB318, 0x0000008

Room_DarkHyruleCastleOutside_OutsideSouth:: @ 080EB320
	.4byte gUnk_080EB1F8
	.4byte 0x00000000
	.4byte gUnk_080EB288
	.4byte gUnk_080EB318
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8EC
	.4byte nullsub_324

gUnk_080EB340:: @ 080EB340
	.incbin "baserom.gba", 0x0EB340, 0x00000B0

gUnk_080EB3F0:: @ 080EB3F0
	.incbin "baserom.gba", 0x0EB3F0, 0x0000030

gUnk_080EB420:: @ 080EB420
	.incbin "baserom.gba", 0x0EB420, 0x0000008

gUnk_080EB428:: @ 080EB428
	.incbin "baserom.gba", 0x0EB428, 0x0000018

Room_DarkHyruleCastleOutside_OutsideSoutheast:: @ 080EB440
	.4byte gUnk_080EB340
	.4byte 0x00000000
	.4byte gUnk_080EB3F0
	.4byte gUnk_080EB420
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8F4
	.4byte nullsub_325
	.4byte gUnk_080EB428

gUnk_080EB464:: @ 080EB464
	.incbin "baserom.gba", 0x0EB464, 0x0000040

gUnk_080EB4A4:: @ 080EB4A4
	.incbin "baserom.gba", 0x0EB4A4, 0x0000060

gUnk_080EB504:: @ 080EB504
	.incbin "baserom.gba", 0x0EB504, 0x0000008

gUnk_080EB50C:: @ 080EB50C
	.incbin "baserom.gba", 0x0EB50C, 0x000001E

gUnk_080EB52A:: @ 080EB52A
	.incbin "baserom.gba", 0x0EB52A, 0x000001E

gUnk_080EB548:: @ 080EB548
	.incbin "baserom.gba", 0x0EB548, 0x0000020

Room_DarkHyruleCastleOutside_8:: @ 080EB568
	.4byte gUnk_080EB464
	.4byte 0x00000000
	.4byte gUnk_080EB4A4
	.4byte gUnk_080EB504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D8FC
	.4byte nullsub_326
	.4byte gUnk_080EB50C
	.4byte gUnk_080EB52A
	.4byte gUnk_080EB548

gUnk_080EB594:: @ 080EB594
	.incbin "baserom.gba", 0x0EB594, 0x0000040

gUnk_080EB5D4:: @ 080EB5D4
	.incbin "baserom.gba", 0x0EB5D4, 0x000000C
	.4byte script_0800DE78
	.incbin "baserom.gba", 0x0EB5E4, 0x000000C
	.4byte script_0800DED4
	.incbin "baserom.gba", 0x0EB5F4, 0x0000010

gUnk_080EB604:: @ 080EB604
	.incbin "baserom.gba", 0x0EB604, 0x000000C
	.4byte script_0800A704
	.incbin "baserom.gba", 0x0EB614, 0x0000050

gUnk_080EB664:: @ 080EB664
	.incbin "baserom.gba", 0x0EB664, 0x0000010

gUnk_080EB674:: @ 080EB674
	.incbin "baserom.gba", 0x0EB674, 0x0000010

gUnk_080EB684:: @ 080EB684
	.incbin "baserom.gba", 0x0EB684, 0x0000080

gUnk_080EB704:: @ 080EB704
	.4byte gUnk_080EB594
	.4byte 0x00000000
	.4byte gUnk_080EB664
	.4byte gUnk_080EB674
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804D904
	.4byte sub_0804D97C

gUnk_080EB724:: @ 080EB724
	.incbin "baserom.gba", 0x0EB724, 0x0000010

gUnk_080EB734:: @ 080EB734
	.incbin "baserom.gba", 0x0EB734, 0x0000010

gUnk_080EB744:: @ 080EB744
	.incbin "baserom.gba", 0x0EB744, 0x0000018

gUnk_080EB75C:: @ 080EB75C
	.4byte gUnk_080EB724
	.4byte 0x00000000
	.4byte gUnk_080EB734
	.4byte gUnk_080EB744
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA04
	.4byte nullsub_327

gUnk_080EB77C:: @ 080EB77C
	.incbin "baserom.gba", 0x0EB77C, 0x0000010

gUnk_080EB78C:: @ 080EB78C
	.incbin "baserom.gba", 0x0EB78C, 0x0000010

gUnk_080EB79C:: @ 080EB79C
	.incbin "baserom.gba", 0x0EB79C, 0x0000018

gUnk_080EB7B4:: @ 080EB7B4
	.4byte gUnk_080EB77C
	.4byte 0x00000000
	.4byte gUnk_080EB78C
	.4byte gUnk_080EB79C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA0C
	.4byte nullsub_328

gUnk_080EB7D4:: @ 080EB7D4
	.incbin "baserom.gba", 0x0EB7D4, 0x0000010

gUnk_080EB7E4:: @ 080EB7E4
	.incbin "baserom.gba", 0x0EB7E4, 0x0000010

gUnk_080EB7F4:: @ 080EB7F4
	.incbin "baserom.gba", 0x0EB7F4, 0x0000018

gUnk_080EB80C:: @ 080EB80C
	.4byte gUnk_080EB7D4
	.4byte 0x00000000
	.4byte gUnk_080EB7E4
	.4byte gUnk_080EB7F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA14
	.4byte nullsub_329

gUnk_080EB82C:: @ 080EB82C
	.incbin "baserom.gba", 0x0EB82C, 0x0000010

gUnk_080EB83C:: @ 080EB83C
	.incbin "baserom.gba", 0x0EB83C, 0x0000010

gUnk_080EB84C:: @ 080EB84C
	.incbin "baserom.gba", 0x0EB84C, 0x0000018

gUnk_080EB864:: @ 080EB864
	.4byte gUnk_080EB82C
	.4byte 0x00000000
	.4byte gUnk_080EB83C
	.4byte gUnk_080EB84C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA1C
	.4byte nullsub_330

gUnk_080EB884:: @ 080EB884
	.incbin "baserom.gba", 0x0EB884, 0x000000C
	.4byte script_0800E504
	.incbin "baserom.gba", 0x0EB894, 0x0000070

gUnk_080EB904:: @ 080EB904
	.incbin "baserom.gba", 0x0EB904, 0x00000B0

gUnk_080EB9B4:: @ 080EB9B4
	.incbin "baserom.gba", 0x0EB9B4, 0x0000010

gUnk_080EB9C4:: @ 080EB9C4
	.4byte gUnk_080EB884
	.4byte 0x00000000
	.4byte gUnk_080EB904
	.4byte gUnk_080EB9B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA24
	.4byte nullsub_331

gUnk_080EB9E4:: @ 080EB9E4
	.incbin "baserom.gba", 0x0EB9E4, 0x0000010

gUnk_080EB9F4:: @ 080EB9F4
	.incbin "baserom.gba", 0x0EB9F4, 0x000000C
	.4byte script_0800E544
	.incbin "baserom.gba", 0x0EBA04, 0x00000A0

gUnk_080EBAA4:: @ 080EBAA4
	.incbin "baserom.gba", 0x0EBAA4, 0x000000C
	.4byte script_0800DF24
	.incbin "baserom.gba", 0x0EBAB4, 0x000000C
	.4byte script_0800DFB4
	.incbin "baserom.gba", 0x0EBAC4, 0x0000030

gUnk_080EBAF4:: @ 080EBAF4
	.incbin "baserom.gba", 0x0EBAF4, 0x000000C
	.4byte script_0800E050
	.incbin "baserom.gba", 0x0EBB04, 0x0000030

gUnk_080EBB34:: @ 080EBB34
	.incbin "baserom.gba", 0x0EBB34, 0x0000070

gUnk_080EBBA4:: @ 080EBBA4
	.incbin "baserom.gba", 0x0EBBA4, 0x0000010

gUnk_080EBBB4:: @ 080EBBB4
	.incbin "baserom.gba", 0x0EBBB4, 0x0000060

gUnk_080EBC14:: @ 080EBC14
	.4byte gUnk_080EB9E4
	.4byte 0x00000000
	.4byte gUnk_080EBB34
	.4byte gUnk_080EBBA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA2C
	.4byte sub_0804DA48
	.4byte gUnk_080EBBB4

gUnk_080EBC38:: @ 080EBC38
	.incbin "baserom.gba", 0x0EBC38, 0x0000040

gUnk_080EBC78:: @ 080EBC78
	.incbin "baserom.gba", 0x0EBC78, 0x0000010

gUnk_080EBC88:: @ 080EBC88
	.incbin "baserom.gba", 0x0EBC88, 0x0000010

gUnk_080EBC98:: @ 080EBC98
	.4byte gUnk_080EBC38
	.4byte 0x00000000
	.4byte gUnk_080EBC78
	.4byte gUnk_080EBC88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DA98
	.4byte nullsub_332

gUnk_080EBCB8:: @ 080EBCB8
	.incbin "baserom.gba", 0x0EBCB8, 0x0000100

gUnk_080EBDB8:: @ 080EBDB8
	.incbin "baserom.gba", 0x0EBDB8, 0x0000070

gUnk_080EBE28:: @ 080EBE28
	.incbin "baserom.gba", 0x0EBE28, 0x0000010

gUnk_080EBE38:: @ 080EBE38
	.4byte gUnk_080EBCB8
	.4byte 0x00000000
	.4byte gUnk_080EBDB8
	.4byte gUnk_080EBE28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAA0
	.4byte nullsub_333

gUnk_080EBE58:: @ 080EBE58
	.incbin "baserom.gba", 0x0EBE58, 0x00000A0

gUnk_080EBEF8:: @ 080EBEF8
	.incbin "baserom.gba", 0x0EBEF8, 0x0000010

gUnk_080EBF08:: @ 080EBF08
	.incbin "baserom.gba", 0x0EBF08, 0x0000038

gUnk_080EBF40:: @ 080EBF40
	.4byte gUnk_080EBE58
	.4byte 0x00000000
	.4byte gUnk_080EBEF8
	.4byte gUnk_080EBF08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAA8
	.4byte nullsub_334

gUnk_080EBF60:: @ 080EBF60
	.incbin "baserom.gba", 0x0EBF60, 0x0000050

gUnk_080EBFB0:: @ 080EBFB0
	.incbin "baserom.gba", 0x0EBFB0, 0x0000010

gUnk_080EBFC0:: @ 080EBFC0
	.incbin "baserom.gba", 0x0EBFC0, 0x0000018

gUnk_080EBFD8:: @ 080EBFD8
	.incbin "baserom.gba", 0x0EBFD8, 0x000003C
	.4byte script_0800E5C4
	.incbin "baserom.gba", 0x0EC018, 0x0000020

gUnk_080EC038:: @ 080EC038
	.4byte gUnk_080EBF60
	.4byte 0x00000000
	.4byte gUnk_080EBFB0
	.4byte gUnk_080EBFC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAB0
	.4byte nullsub_335
	.4byte gUnk_080EBFD8

gUnk_080EC05C:: @ 080EC05C
	.incbin "baserom.gba", 0x0EC05C, 0x0000040

gUnk_080EC09C:: @ 080EC09C
	.incbin "baserom.gba", 0x0EC09C, 0x0000010

gUnk_080EC0AC:: @ 080EC0AC
	.incbin "baserom.gba", 0x0EC0AC, 0x0000010

gUnk_080EC0BC:: @ 080EC0BC
	.incbin "baserom.gba", 0x0EC0BC, 0x0000020

gUnk_080EC0DC:: @ 080EC0DC
	.incbin "baserom.gba", 0x0EC0DC, 0x0000010

gUnk_080EC0EC:: @ 080EC0EC
	.4byte gUnk_080EC05C
	.4byte 0x00000000
	.4byte gUnk_080EC09C
	.4byte gUnk_080EC0AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAB8
	.4byte nullsub_336
	.4byte gUnk_080EC0BC
	.4byte gUnk_080EC0DC

gUnk_080EC114:: @ 080EC114
	.incbin "baserom.gba", 0x0EC114, 0x00000E0

gUnk_080EC1F4:: @ 080EC1F4
	.incbin "baserom.gba", 0x0EC1F4, 0x0000010

gUnk_080EC204:: @ 080EC204
	.incbin "baserom.gba", 0x0EC204, 0x0000018

gUnk_080EC21C:: @ 080EC21C
	.4byte gUnk_080EC114
	.4byte 0x00000000
	.4byte gUnk_080EC1F4
	.4byte gUnk_080EC204
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAC0
	.4byte nullsub_337

gUnk_080EC23C:: @ 080EC23C
	.incbin "baserom.gba", 0x0EC23C, 0x0000010

gUnk_080EC24C:: @ 080EC24C
	.incbin "baserom.gba", 0x0EC24C, 0x0000030

gUnk_080EC27C:: @ 080EC27C
	.incbin "baserom.gba", 0x0EC27C, 0x0000010

gUnk_080EC28C:: @ 080EC28C
	.4byte gUnk_080EC23C
	.4byte 0x00000000
	.4byte gUnk_080EC24C
	.4byte gUnk_080EC27C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAC8
	.4byte nullsub_338

gUnk_080EC2AC:: @ 080EC2AC
	.incbin "baserom.gba", 0x0EC2AC, 0x0000020

gUnk_080EC2CC:: @ 080EC2CC
	.incbin "baserom.gba", 0x0EC2CC, 0x0000080

gUnk_080EC34C:: @ 080EC34C
	.incbin "baserom.gba", 0x0EC34C, 0x0000010

gUnk_080EC35C:: @ 080EC35C
	.incbin "baserom.gba", 0x0EC35C, 0x0000018

gUnk_080EC374:: @ 080EC374
	.incbin "baserom.gba", 0x0EC374, 0x0000050

gUnk_080EC3C4:: @ 080EC3C4
	.4byte gUnk_080EC2AC
	.4byte 0x00000000
	.4byte gUnk_080EC34C
	.4byte gUnk_080EC35C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAD0
	.4byte sub_0804DAD4
	.4byte gUnk_080EC374

gUnk_080EC3E8:: @ 080EC3E8
	.incbin "baserom.gba", 0x0EC3E8, 0x0000050

gUnk_080EC438:: @ 080EC438
	.incbin "baserom.gba", 0x0EC438, 0x0000060

gUnk_080EC498:: @ 080EC498
	.incbin "baserom.gba", 0x0EC498, 0x0000010

gUnk_080EC4A8:: @ 080EC4A8
	.4byte gUnk_080EC3E8
	.4byte 0x00000000
	.4byte gUnk_080EC438
	.4byte gUnk_080EC498
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DAF8
	.4byte nullsub_339

gUnk_080EC4C8:: @ 080EC4C8
	.incbin "baserom.gba", 0x0EC4C8, 0x0000020

gUnk_080EC4E8:: @ 080EC4E8
	.incbin "baserom.gba", 0x0EC4E8, 0x0000080

gUnk_080EC568:: @ 080EC568
	.incbin "baserom.gba", 0x0EC568, 0x0000010

gUnk_080EC578:: @ 080EC578
	.incbin "baserom.gba", 0x0EC578, 0x0000018

gUnk_080EC590:: @ 080EC590
	.incbin "baserom.gba", 0x0EC590, 0x0000070

gUnk_080EC600:: @ 080EC600
	.4byte gUnk_080EC4C8
	.4byte 0x00000000
	.4byte gUnk_080EC568
	.4byte gUnk_080EC578
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB00
	.4byte sub_0804DB04
	.4byte gUnk_080EC590

gUnk_080EC624:: @ 080EC624
	.incbin "baserom.gba", 0x0EC624, 0x00000D0

gUnk_080EC6F4:: @ 080EC6F4
	.incbin "baserom.gba", 0x0EC6F4, 0x0000010

gUnk_080EC704:: @ 080EC704
	.incbin "baserom.gba", 0x0EC704, 0x0000028

gUnk_080EC72C:: @ 080EC72C
	.incbin "baserom.gba", 0x0EC72C, 0x0000050

gUnk_080EC77C:: @ 080EC77C
	.4byte gUnk_080EC624
	.4byte 0x00000000
	.4byte gUnk_080EC6F4
	.4byte gUnk_080EC704
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB28
	.4byte nullsub_340
	.4byte gUnk_080EC72C

gUnk_080EC7A0:: @ 080EC7A0
	.incbin "baserom.gba", 0x0EC7A0, 0x0000020

gUnk_080EC7C0:: @ 080EC7C0
	.incbin "baserom.gba", 0x0EC7C0, 0x0000010

gUnk_080EC7D0:: @ 080EC7D0
	.incbin "baserom.gba", 0x0EC7D0, 0x0000010

gUnk_080EC7E0:: @ 080EC7E0
	.4byte gUnk_080EC7A0
	.4byte 0x00000000
	.4byte gUnk_080EC7C0
	.4byte gUnk_080EC7D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB30
	.4byte nullsub_341

gUnk_080EC800:: @ 080EC800
	.incbin "baserom.gba", 0x0EC800, 0x0000020

gUnk_080EC820:: @ 080EC820
	.incbin "baserom.gba", 0x0EC820, 0x0000080

gUnk_080EC8A0:: @ 080EC8A0
	.incbin "baserom.gba", 0x0EC8A0, 0x0000010

gUnk_080EC8B0:: @ 080EC8B0
	.incbin "baserom.gba", 0x0EC8B0, 0x0000018

gUnk_080EC8C8:: @ 080EC8C8
	.incbin "baserom.gba", 0x0EC8C8, 0x0000070

gUnk_080EC938:: @ 080EC938
	.4byte gUnk_080EC800
	.4byte 0x00000000
	.4byte gUnk_080EC8A0
	.4byte gUnk_080EC8B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB38
	.4byte sub_0804DB3C
	.4byte gUnk_080EC8C8

gUnk_080EC95C:: @ 080EC95C
	.incbin "baserom.gba", 0x0EC95C, 0x0000070

gUnk_080EC9CC:: @ 080EC9CC
	.incbin "baserom.gba", 0x0EC9CC, 0x0000010

gUnk_080EC9DC:: @ 080EC9DC
	.incbin "baserom.gba", 0x0EC9DC, 0x0000010

gUnk_080EC9EC:: @ 080EC9EC
	.incbin "baserom.gba", 0x0EC9EC, 0x0000030

gUnk_080ECA1C:: @ 080ECA1C
	.4byte gUnk_080EC95C
	.4byte 0x00000000
	.4byte gUnk_080EC9CC
	.4byte gUnk_080EC9DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB60
	.4byte nullsub_342
	.4byte gUnk_080EC9EC

gUnk_080ECA40:: @ 080ECA40
	.incbin "baserom.gba", 0x0ECA40, 0x0000020

gUnk_080ECA60:: @ 080ECA60
	.incbin "baserom.gba", 0x0ECA60, 0x0000080

gUnk_080ECAE0:: @ 080ECAE0
	.incbin "baserom.gba", 0x0ECAE0, 0x0000010

gUnk_080ECAF0:: @ 080ECAF0
	.incbin "baserom.gba", 0x0ECAF0, 0x0000010

gUnk_080ECB00:: @ 080ECB00
	.incbin "baserom.gba", 0x0ECB00, 0x0000050

gUnk_080ECB50:: @ 080ECB50
	.4byte gUnk_080ECA40
	.4byte 0x00000000
	.4byte gUnk_080ECAE0
	.4byte gUnk_080ECAF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB68
	.4byte sub_0804DB6C
	.4byte gUnk_080ECB00

gUnk_080ECB74:: @ 080ECB74
	.incbin "baserom.gba", 0x0ECB74, 0x00000B0

gUnk_080ECC24:: @ 080ECC24
	.incbin "baserom.gba", 0x0ECC24, 0x0000010

gUnk_080ECC34:: @ 080ECC34
	.incbin "baserom.gba", 0x0ECC34, 0x0000010

gUnk_080ECC44:: @ 080ECC44
	.4byte gUnk_080ECB74
	.4byte 0x00000000
	.4byte gUnk_080ECC24
	.4byte gUnk_080ECC34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB90
	.4byte nullsub_343

gUnk_080ECC64:: @ 080ECC64
	.incbin "baserom.gba", 0x0ECC64, 0x000007C

gUnk_080ECCE0:: @ 080ECCE0
	.incbin "baserom.gba", 0x0ECCE0, 0x0000014

gUnk_080ECCF4:: @ 080ECCF4
	.incbin "baserom.gba", 0x0ECCF4, 0x0000010

gUnk_080ECD04:: @ 080ECD04
	.incbin "baserom.gba", 0x0ECD04, 0x0000010

gUnk_080ECD14:: @ 080ECD14
	.4byte gUnk_080ECC64
	.4byte 0x00000000
	.4byte gUnk_080ECCF4
	.4byte gUnk_080ECD04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DB98
	.4byte nullsub_344

gUnk_080ECD34:: @ 080ECD34
	.incbin "baserom.gba", 0x0ECD34, 0x00000C0

gUnk_080ECDF4:: @ 080ECDF4
	.incbin "baserom.gba", 0x0ECDF4, 0x0000010

gUnk_080ECE04:: @ 080ECE04
	.incbin "baserom.gba", 0x0ECE04, 0x0000010

gUnk_080ECE14:: @ 080ECE14
	.4byte gUnk_080ECD34
	.4byte 0x00000000
	.4byte gUnk_080ECDF4
	.4byte gUnk_080ECE04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBA0
	.4byte nullsub_345

gUnk_080ECE34:: @ 080ECE34
	.incbin "baserom.gba", 0x0ECE34, 0x0000010

gUnk_080ECE44:: @ 080ECE44
	.incbin "baserom.gba", 0x0ECE44, 0x0000010

gUnk_080ECE54:: @ 080ECE54
	.incbin "baserom.gba", 0x0ECE54, 0x0000010

gUnk_080ECE64:: @ 080ECE64
	.4byte gUnk_080ECE34
	.4byte 0x00000000
	.4byte gUnk_080ECE44
	.4byte gUnk_080ECE54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBA8
	.4byte nullsub_346

gUnk_080ECE84:: @ 080ECE84
	.incbin "baserom.gba", 0x0ECE84, 0x0000040

gUnk_080ECEC4:: @ 080ECEC4
	.incbin "baserom.gba", 0x0ECEC4, 0x0000010

gUnk_080ECED4:: @ 080ECED4
	.incbin "baserom.gba", 0x0ECED4, 0x0000010

gUnk_080ECEE4:: @ 080ECEE4
	.incbin "baserom.gba", 0x0ECEE4, 0x0000020

gUnk_080ECF04:: @ 080ECF04
	.incbin "baserom.gba", 0x0ECF04, 0x0000010

gUnk_080ECF14:: @ 080ECF14
	.4byte gUnk_080ECE84
	.4byte 0x00000000
	.4byte gUnk_080ECEC4
	.4byte gUnk_080ECED4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBB0
	.4byte nullsub_347
	.4byte gUnk_080ECEE4
	.4byte gUnk_080ECF04

gUnk_080ECF3C:: @ 080ECF3C
	.incbin "baserom.gba", 0x0ECF3C, 0x0000010

gUnk_080ECF4C:: @ 080ECF4C
	.incbin "baserom.gba", 0x0ECF4C, 0x0000010

gUnk_080ECF5C:: @ 080ECF5C
	.incbin "baserom.gba", 0x0ECF5C, 0x0000010

gUnk_080ECF6C:: @ 080ECF6C
	.4byte gUnk_080ECF3C
	.4byte 0x00000000
	.4byte gUnk_080ECF4C
	.4byte gUnk_080ECF5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBB8
	.4byte nullsub_348

gUnk_080ECF8C:: @ 080ECF8C
	.incbin "baserom.gba", 0x0ECF8C, 0x0000020

gUnk_080ECFAC:: @ 080ECFAC
	.incbin "baserom.gba", 0x0ECFAC, 0x0000010

gUnk_080ECFBC:: @ 080ECFBC
	.incbin "baserom.gba", 0x0ECFBC, 0x0000010

gUnk_080ECFCC:: @ 080ECFCC
	.incbin "baserom.gba", 0x0ECFCC, 0x0000040

gUnk_080ED00C:: @ 080ED00C
	.4byte gUnk_080ECF8C
	.4byte 0x00000000
	.4byte gUnk_080ECFAC
	.4byte gUnk_080ECFBC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DBC0
	.4byte sub_0804DBDC

gUnk_080ED02C:: @ 080ED02C
	.incbin "baserom.gba", 0x0ED02C, 0x0000080

gUnk_080ED0AC:: @ 080ED0AC
	.incbin "baserom.gba", 0x0ED0AC, 0x0000030

gUnk_080ED0DC:: @ 080ED0DC
	.incbin "baserom.gba", 0x0ED0DC, 0x0000020

gUnk_080ED0FC:: @ 080ED0FC
	.4byte gUnk_080ED02C
	.4byte 0x00000000
	.4byte gUnk_080ED0AC
	.4byte gUnk_080ED0DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC18
	.4byte nullsub_349

gUnk_080ED11C:: @ 080ED11C
	.incbin "baserom.gba", 0x0ED11C, 0x0000010

gUnk_080ED12C:: @ 080ED12C
	.incbin "baserom.gba", 0x0ED12C, 0x0000030

gUnk_080ED15C:: @ 080ED15C
	.incbin "baserom.gba", 0x0ED15C, 0x0000018

gUnk_080ED174:: @ 080ED174
	.4byte gUnk_080ED11C
	.4byte 0x00000000
	.4byte gUnk_080ED12C
	.4byte gUnk_080ED15C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC20
	.4byte nullsub_350

gUnk_080ED194:: @ 080ED194
	.incbin "baserom.gba", 0x0ED194, 0x0000050

gUnk_080ED1E4:: @ 080ED1E4
	.incbin "baserom.gba", 0x0ED1E4, 0x000000C
	.4byte script_0800A6A4
	.incbin "baserom.gba", 0x0ED1F4, 0x0000040

gUnk_080ED234:: @ 080ED234
	.incbin "baserom.gba", 0x0ED234, 0x0000020

gUnk_080ED254:: @ 080ED254
	.incbin "baserom.gba", 0x0ED254, 0x0000010

gUnk_080ED264:: @ 080ED264
	.incbin "baserom.gba", 0x0ED264, 0x0000018

gUnk_080ED27C:: @ 080ED27C
	.incbin "baserom.gba", 0x0ED27C, 0x0000030

gUnk_080ED2AC:: @ 080ED2AC
	.4byte gUnk_080ED194
	.4byte gUnk_080ED234
	.4byte gUnk_080ED254
	.4byte gUnk_080ED264
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC28
	.4byte sub_0804DC4C
	.4byte gUnk_080ED27C

gUnk_080ED2D0:: @ 080ED2D0
	.incbin "baserom.gba", 0x0ED2D0, 0x0000020

gUnk_080ED2F0:: @ 080ED2F0
	.incbin "baserom.gba", 0x0ED2F0, 0x0000010

gUnk_080ED300:: @ 080ED300
	.incbin "baserom.gba", 0x0ED300, 0x0000018

gUnk_080ED318:: @ 080ED318
	.4byte gUnk_080ED2D0
	.4byte 0x00000000
	.4byte gUnk_080ED2F0
	.4byte gUnk_080ED300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC70
	.4byte nullsub_351

gUnk_080ED338:: @ 080ED338
	.incbin "baserom.gba", 0x0ED338, 0x0000010

gUnk_080ED348:: @ 080ED348
	.incbin "baserom.gba", 0x0ED348, 0x0000030

gUnk_080ED378:: @ 080ED378
	.incbin "baserom.gba", 0x0ED378, 0x0000010

gUnk_080ED388:: @ 080ED388
	.4byte gUnk_080ED338
	.4byte 0x00000000
	.4byte gUnk_080ED348
	.4byte gUnk_080ED378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC78
	.4byte nullsub_352

gUnk_080ED3A8:: @ 080ED3A8
	.incbin "baserom.gba", 0x0ED3A8, 0x0000010

gUnk_080ED3B8:: @ 080ED3B8
	.incbin "baserom.gba", 0x0ED3B8, 0x0000010

gUnk_080ED3C8:: @ 080ED3C8
	.incbin "baserom.gba", 0x0ED3C8, 0x0000010

gUnk_080ED3D8:: @ 080ED3D8
	.4byte gUnk_080ED3A8
	.4byte 0x00000000
	.4byte gUnk_080ED3B8
	.4byte gUnk_080ED3C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC80
	.4byte nullsub_353

gUnk_080ED3F8:: @ 080ED3F8
	.incbin "baserom.gba", 0x0ED3F8, 0x0000070

gUnk_080ED468:: @ 080ED468
	.incbin "baserom.gba", 0x0ED468, 0x0000020

gUnk_080ED488:: @ 080ED488
	.incbin "baserom.gba", 0x0ED488, 0x0000030

gUnk_080ED4B8:: @ 080ED4B8
	.incbin "baserom.gba", 0x0ED4B8, 0x0000010

gUnk_080ED4C8:: @ 080ED4C8
	.4byte gUnk_080ED3F8
	.4byte gUnk_080ED468
	.4byte gUnk_080ED488
	.4byte gUnk_080ED4B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC88
	.4byte nullsub_354

gUnk_080ED4E8:: @ 080ED4E8
	.incbin "baserom.gba", 0x0ED4E8, 0x0000050

gUnk_080ED538:: @ 080ED538
	.incbin "baserom.gba", 0x0ED538, 0x0000030

gUnk_080ED568:: @ 080ED568
	.incbin "baserom.gba", 0x0ED568, 0x0000010

gUnk_080ED578:: @ 080ED578
	.incbin "baserom.gba", 0x0ED578, 0x0000010

gUnk_080ED588:: @ 080ED588
	.4byte gUnk_080ED4E8
	.4byte gUnk_080ED538
	.4byte gUnk_080ED568
	.4byte gUnk_080ED578
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC90
	.4byte nullsub_355

gUnk_080ED5A8:: @ 080ED5A8
	.incbin "baserom.gba", 0x0ED5A8, 0x0000010

gUnk_080ED5B8:: @ 080ED5B8
	.incbin "baserom.gba", 0x0ED5B8, 0x0000020

gUnk_080ED5D8:: @ 080ED5D8
	.incbin "baserom.gba", 0x0ED5D8, 0x0000060

gUnk_080ED638:: @ 080ED638
	.incbin "baserom.gba", 0x0ED638, 0x0000010

gUnk_080ED648:: @ 080ED648
	.4byte gUnk_080ED5A8
	.4byte gUnk_080ED5B8
	.4byte gUnk_080ED5D8
	.4byte gUnk_080ED638
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DC98
	.4byte nullsub_356

gUnk_080ED668:: @ 080ED668
	.incbin "baserom.gba", 0x0ED668, 0x0000080

gUnk_080ED6E8:: @ 080ED6E8
	.incbin "baserom.gba", 0x0ED6E8, 0x0000010

gUnk_080ED6F8:: @ 080ED6F8
	.incbin "baserom.gba", 0x0ED6F8, 0x0000010

gUnk_080ED708:: @ 080ED708
	.incbin "baserom.gba", 0x0ED708, 0x0000018

gUnk_080ED720:: @ 080ED720
	.4byte gUnk_080ED668
	.4byte 0x00000000
	.4byte gUnk_080ED6E8
	.4byte gUnk_080ED6F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCA0
	.4byte nullsub_357
	.4byte gUnk_080ED708

gUnk_080ED744:: @ 080ED744
	.incbin "baserom.gba", 0x0ED744, 0x0000070

gUnk_080ED7B4:: @ 080ED7B4
	.incbin "baserom.gba", 0x0ED7B4, 0x0000020

gUnk_080ED7D4:: @ 080ED7D4
	.incbin "baserom.gba", 0x0ED7D4, 0x0000018

gUnk_080ED7EC:: @ 080ED7EC
	.incbin "baserom.gba", 0x0ED7EC, 0x00000E0

gUnk_080ED8CC:: @ 080ED8CC
	.4byte gUnk_080ED744
	.4byte 0x00000000
	.4byte gUnk_080ED7B4
	.4byte gUnk_080ED7D4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCA8
	.4byte nullsub_358
	.4byte gUnk_080ED7EC

gUnk_080ED8F0:: @ 080ED8F0
	.incbin "baserom.gba", 0x0ED8F0, 0x0000010

gUnk_080ED900:: @ 080ED900
	.incbin "baserom.gba", 0x0ED900, 0x0000030

gUnk_080ED930:: @ 080ED930
	.incbin "baserom.gba", 0x0ED930, 0x0000010

gUnk_080ED940:: @ 080ED940
	.4byte gUnk_080ED8F0
	.4byte 0x00000000
	.4byte gUnk_080ED900
	.4byte gUnk_080ED930
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCB0
	.4byte nullsub_359

gUnk_080ED960:: @ 080ED960
	.incbin "baserom.gba", 0x0ED960, 0x0000010

gUnk_080ED970:: @ 080ED970
	.incbin "baserom.gba", 0x0ED970, 0x0000070

gUnk_080ED9E0:: @ 080ED9E0
	.incbin "baserom.gba", 0x0ED9E0, 0x0000010

gUnk_080ED9F0:: @ 080ED9F0
	.4byte gUnk_080ED960
	.4byte 0x00000000
	.4byte gUnk_080ED970
	.4byte gUnk_080ED9E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCB8
	.4byte nullsub_360

gUnk_080EDA10:: @ 080EDA10
	.incbin "baserom.gba", 0x0EDA10, 0x0000010

gUnk_080EDA20:: @ 080EDA20
	.incbin "baserom.gba", 0x0EDA20, 0x0000040

gUnk_080EDA60:: @ 080EDA60
	.incbin "baserom.gba", 0x0EDA60, 0x0000010

gUnk_080EDA70:: @ 080EDA70
	.4byte gUnk_080EDA10
	.4byte 0x00000000
	.4byte gUnk_080EDA20
	.4byte gUnk_080EDA60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCC0
	.4byte nullsub_361

gUnk_080EDA90:: @ 080EDA90
	.incbin "baserom.gba", 0x0EDA90, 0x0000070

gUnk_080EDB00:: @ 080EDB00
	.incbin "baserom.gba", 0x0EDB00, 0x0000010

gUnk_080EDB10:: @ 080EDB10
	.incbin "baserom.gba", 0x0EDB10, 0x0000010

gUnk_080EDB20:: @ 080EDB20
	.4byte gUnk_080EDA90
	.4byte 0x00000000
	.4byte gUnk_080EDB00
	.4byte gUnk_080EDB10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCC8
	.4byte nullsub_362

gUnk_080EDB40:: @ 080EDB40
	.incbin "baserom.gba", 0x0EDB40, 0x0000010

gUnk_080EDB50:: @ 080EDB50
	.incbin "baserom.gba", 0x0EDB50, 0x0000040

gUnk_080EDB90:: @ 080EDB90
	.incbin "baserom.gba", 0x0EDB90, 0x0000018

gUnk_080EDBA8:: @ 080EDBA8
	.4byte gUnk_080EDB40
	.4byte 0x00000000
	.4byte gUnk_080EDB50
	.4byte gUnk_080EDB90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCD0
	.4byte nullsub_363

gUnk_080EDBC8:: @ 080EDBC8
	.incbin "baserom.gba", 0x0EDBC8, 0x0000010

gUnk_080EDBD8:: @ 080EDBD8
	.incbin "baserom.gba", 0x0EDBD8, 0x0000050

gUnk_080EDC28:: @ 080EDC28
	.incbin "baserom.gba", 0x0EDC28, 0x0000018

gUnk_080EDC40:: @ 080EDC40
	.4byte gUnk_080EDBC8
	.4byte 0x00000000
	.4byte gUnk_080EDBD8
	.4byte gUnk_080EDC28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCD8
	.4byte nullsub_364

gUnk_080EDC60:: @ 080EDC60
	.incbin "baserom.gba", 0x0EDC60, 0x0000010

gUnk_080EDC70:: @ 080EDC70
	.incbin "baserom.gba", 0x0EDC70, 0x0000030

gUnk_080EDCA0:: @ 080EDCA0
	.incbin "baserom.gba", 0x0EDCA0, 0x0000018

gUnk_080EDCB8:: @ 080EDCB8
	.4byte gUnk_080EDC60
	.4byte 0x00000000
	.4byte gUnk_080EDC70
	.4byte gUnk_080EDCA0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCE0
	.4byte nullsub_365

gUnk_080EDCD8:: @ 080EDCD8
	.incbin "baserom.gba", 0x0EDCD8, 0x0000010

gUnk_080EDCE8:: @ 080EDCE8
	.incbin "baserom.gba", 0x0EDCE8, 0x0000020

gUnk_080EDD08:: @ 080EDD08
	.incbin "baserom.gba", 0x0EDD08, 0x0000050

gUnk_080EDD58:: @ 080EDD58
	.incbin "baserom.gba", 0x0EDD58, 0x0000010

gUnk_080EDD68:: @ 080EDD68
	.4byte gUnk_080EDCD8
	.4byte gUnk_080EDCE8
	.4byte gUnk_080EDD08
	.4byte gUnk_080EDD58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCE8
	.4byte nullsub_366

gUnk_080EDD88:: @ 080EDD88
	.incbin "baserom.gba", 0x0EDD88, 0x0000040

gUnk_080EDDC8:: @ 080EDDC8
	.incbin "baserom.gba", 0x0EDDC8, 0x0000040

gUnk_080EDE08:: @ 080EDE08
	.incbin "baserom.gba", 0x0EDE08, 0x0000040

gUnk_080EDE48:: @ 080EDE48
	.incbin "baserom.gba", 0x0EDE48, 0x0000018

gUnk_080EDE60:: @ 080EDE60
	.4byte gUnk_080EDD88
	.4byte gUnk_080EDDC8
	.4byte gUnk_080EDE08
	.4byte gUnk_080EDE48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCF0
	.4byte nullsub_367

gUnk_080EDE80:: @ 080EDE80
	.incbin "baserom.gba", 0x0EDE80, 0x0000030

gUnk_080EDEB0:: @ 080EDEB0
	.incbin "baserom.gba", 0x0EDEB0, 0x0000040

gUnk_080EDEF0:: @ 080EDEF0
	.incbin "baserom.gba", 0x0EDEF0, 0x0000030

gUnk_080EDF20:: @ 080EDF20
	.incbin "baserom.gba", 0x0EDF20, 0x0000020

gUnk_080EDF40:: @ 080EDF40
	.4byte gUnk_080EDE80
	.4byte gUnk_080EDEB0
	.4byte gUnk_080EDEF0
	.4byte gUnk_080EDF20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DCF8
	.4byte nullsub_368

gUnk_080EDF60:: @ 080EDF60
	.incbin "baserom.gba", 0x0EDF60, 0x0000050

gUnk_080EDFB0:: @ 080EDFB0
	.incbin "baserom.gba", 0x0EDFB0, 0x0000020

gUnk_080EDFD0:: @ 080EDFD0
	.incbin "baserom.gba", 0x0EDFD0, 0x0000090

gUnk_080EE060:: @ 080EE060
	.incbin "baserom.gba", 0x0EE060, 0x0000018

gUnk_080EE078:: @ 080EE078
	.4byte gUnk_080EDF60
	.4byte gUnk_080EDFB0
	.4byte gUnk_080EDFD0
	.4byte gUnk_080EE060
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD00
	.4byte nullsub_369

gUnk_080EE098:: @ 080EE098
	.incbin "baserom.gba", 0x0EE098, 0x00000A0

gUnk_080EE138:: @ 080EE138
	.incbin "baserom.gba", 0x0EE138, 0x0000010

gUnk_080EE148:: @ 080EE148
	.incbin "baserom.gba", 0x0EE148, 0x0000010

gUnk_080EE158:: @ 080EE158
	.4byte gUnk_080EE098
	.4byte 0x00000000
	.4byte gUnk_080EE138
	.4byte gUnk_080EE148
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD08
	.4byte nullsub_370

gUnk_080EE178:: @ 080EE178
	.incbin "baserom.gba", 0x0EE178, 0x00000B0

gUnk_080EE228:: @ 080EE228
	.incbin "baserom.gba", 0x0EE228, 0x0000010

gUnk_080EE238:: @ 080EE238
	.incbin "baserom.gba", 0x0EE238, 0x0000010

gUnk_080EE248:: @ 080EE248
	.incbin "baserom.gba", 0x0EE248, 0x0000018

gUnk_080EE260:: @ 080EE260
	.4byte gUnk_080EE178
	.4byte 0x00000000
	.4byte gUnk_080EE228
	.4byte gUnk_080EE238
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD10
	.4byte nullsub_371
	.4byte gUnk_080EE248

gUnk_080EE284:: @ 080EE284
	.incbin "baserom.gba", 0x0EE284, 0x0000020

gUnk_080EE2A4:: @ 080EE2A4
	.incbin "baserom.gba", 0x0EE2A4, 0x0000030

gUnk_080EE2D4:: @ 080EE2D4
	.incbin "baserom.gba", 0x0EE2D4, 0x0000030

gUnk_080EE304:: @ 080EE304
	.incbin "baserom.gba", 0x0EE304, 0x0000010

gUnk_080EE314:: @ 080EE314
	.incbin "baserom.gba", 0x0EE314, 0x0000029

gUnk_080EE33D:: @ 080EE33D
	.incbin "baserom.gba", 0x0EE33D, 0x0000017

gUnk_080EE354:: @ 080EE354
	.4byte gUnk_080EE284
	.4byte gUnk_080EE2A4
	.4byte gUnk_080EE2D4
	.4byte gUnk_080EE304
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD18
	.4byte sub_0804DD34

gUnk_080EE374:: @ 080EE374
	.incbin "baserom.gba", 0x0EE374, 0x0000010

gUnk_080EE384:: @ 080EE384
	.incbin "baserom.gba", 0x0EE384, 0x0000020

gUnk_080EE3A4:: @ 080EE3A4
	.incbin "baserom.gba", 0x0EE3A4, 0x0000050

gUnk_080EE3F4:: @ 080EE3F4
	.incbin "baserom.gba", 0x0EE3F4, 0x0000010

gUnk_080EE404:: @ 080EE404
	.4byte gUnk_080EE374
	.4byte gUnk_080EE384
	.4byte gUnk_080EE3A4
	.4byte gUnk_080EE3F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD70
	.4byte nullsub_372

gUnk_080EE424:: @ 080EE424
	.incbin "baserom.gba", 0x0EE424, 0x0000080

gUnk_080EE4A4:: @ 080EE4A4
	.incbin "baserom.gba", 0x0EE4A4, 0x0000050

gUnk_080EE4F4:: @ 080EE4F4
	.incbin "baserom.gba", 0x0EE4F4, 0x00000D0

gUnk_080EE5C4:: @ 080EE5C4
	.incbin "baserom.gba", 0x0EE5C4, 0x0000018

gUnk_080EE5DC:: @ 080EE5DC
	.incbin "baserom.gba", 0x0EE5DC, 0x0000040

gUnk_080EE61C:: @ 080EE61C
	.4byte gUnk_080EE424
	.4byte gUnk_080EE4A4
	.4byte gUnk_080EE4F4
	.4byte gUnk_080EE5C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DD78
	.4byte sub_0804DD94

gUnk_080EE63C:: @ 080EE63C
	.incbin "baserom.gba", 0x0EE63C, 0x0000010

gUnk_080EE64C:: @ 080EE64C
	.incbin "baserom.gba", 0x0EE64C, 0x0000010

gUnk_080EE65C:: @ 080EE65C
	.incbin "baserom.gba", 0x0EE65C, 0x0000010

gUnk_080EE66C:: @ 080EE66C
	.4byte gUnk_080EE63C
	.4byte 0x00000000
	.4byte gUnk_080EE64C
	.4byte gUnk_080EE65C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DDD4
	.4byte nullsub_373

gUnk_080EE68C:: @ 080EE68C
	.incbin "baserom.gba", 0x0EE68C, 0x000007C
	.4byte script_0800E350
	.incbin "baserom.gba", 0x0EE70C, 0x0000010

gUnk_080EE71C:: @ 080EE71C
	.incbin "baserom.gba", 0x0EE71C, 0x000000C
	.4byte script_0800E408
	.incbin "baserom.gba", 0x0EE72C, 0x000000C
	.4byte script_0800E434
	.incbin "baserom.gba", 0x0EE73C, 0x000000C
	.4byte script_0800E46C
	.incbin "baserom.gba", 0x0EE74C, 0x0000010

gUnk_080EE75C:: @ 080EE75C
	.incbin "baserom.gba", 0x0EE75C, 0x0000010

gUnk_080EE76C:: @ 080EE76C
	.incbin "baserom.gba", 0x0EE76C, 0x0000020

gUnk_080EE78C:: @ 080EE78C
	.4byte gUnk_080EE68C
	.4byte 0x00000000
	.4byte gUnk_080EE75C
	.4byte gUnk_080EE76C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DDDC
	.4byte sub_0804DDE0

gUnk_080EE7AC:: @ 080EE7AC
	.incbin "baserom.gba", 0x0EE7AC, 0x0000010

gUnk_080EE7BC:: @ 080EE7BC
	.incbin "baserom.gba", 0x0EE7BC, 0x0000020

gUnk_080EE7DC:: @ 080EE7DC
	.incbin "baserom.gba", 0x0EE7DC, 0x0000010

gUnk_080EE7EC:: @ 080EE7EC
	.4byte gUnk_080EE7AC
	.4byte 0x00000000
	.4byte gUnk_080EE7BC
	.4byte gUnk_080EE7DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DDF8
	.4byte nullsub_374

gUnk_080EE80C:: @ 080EE80C
	.incbin "baserom.gba", 0x0EE80C, 0x000006C
	.4byte script_08010AE4
	.incbin "baserom.gba", 0x0EE87C, 0x0000010

gUnk_080EE88C:: @ 080EE88C
	.incbin "baserom.gba", 0x0EE88C, 0x000000C
	.4byte script_0800F090
	.incbin "baserom.gba", 0x0EE89C, 0x0000010

gUnk_080EE8AC:: @ 080EE8AC
	.4byte 0x00534F07
	.4byte 0x00000000
	.4byte 0x03280158
	.4byte script_0800F184
	.4byte 0x06074F07
	.4byte 0x00000000
	.4byte 0x03280148
	.4byte script_0800F39C
	.4byte 0x07074F07
	.4byte 0x00000000
	.4byte 0x03280134
	.4byte script_0800F430
	.4byte 0x08074F07
	.4byte 0x00000000
	.4byte 0x03280120
	.4byte script_0800F4C4
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

gUnk_080EE8FC:: @ 080EE8FC
	.incbin "baserom.gba", 0x0EE8FC, 0x0000020

gUnk_080EE91C:: @ 080EE91C
	.incbin "baserom.gba", 0x0EE91C, 0x0000020

gUnk_080EE93C:: @ 080EE93C
	.incbin "baserom.gba", 0x0EE93C, 0x0000020

gUnk_080EE95C:: @ 080EE95C
	.incbin "baserom.gba", 0x0EE95C, 0x0000020

gUnk_080EE97C:: @ 080EE97C
	.incbin "baserom.gba", 0x0EE97C, 0x0000020

gUnk_080EE99C:: @ 080EE99C
	.incbin "baserom.gba", 0x0EE99C, 0x0000020

gUnk_080EE9BC:: @ 080EE9BC
	.incbin "baserom.gba", 0x0EE9BC, 0x0000020

gUnk_080EE9DC:: @ 080EE9DC
	.incbin "baserom.gba", 0x0EE9DC, 0x0000010

gUnk_080EE9EC:: @ 080EE9EC
	.incbin "baserom.gba", 0x0EE9EC, 0x0000010

gUnk_080EE9FC:: @ 080EE9FC
	.incbin "baserom.gba", 0x0EE9FC, 0x0000020

gUnk_080EEA1C:: @ 080EEA1C
	.incbin "baserom.gba", 0x0EEA1C, 0x0000020

gUnk_080EEA3C:: @ 080EEA3C
	.incbin "baserom.gba", 0x0EEA3C, 0x0000020

gUnk_080EEA5C:: @ 080EEA5C
	.incbin "baserom.gba", 0x0EEA5C, 0x0000020

gUnk_080EEA7C:: @ 080EEA7C
	.incbin "baserom.gba", 0x0EEA7C, 0x0000020

gUnk_080EEA9C:: @ 080EEA9C
	.incbin "baserom.gba", 0x0EEA9C, 0x0000020

gUnk_080EEABC:: @ 080EEABC
	.incbin "baserom.gba", 0x0EEABC, 0x0000020

gUnk_080EEADC:: @ 080EEADC
	.incbin "baserom.gba", 0x0EEADC, 0x0000090

gUnk_080EEB6C:: @ 080EEB6C
	.incbin "baserom.gba", 0x0EEB6C, 0x0000020

gUnk_080EEB8C:: @ 080EEB8C
	.incbin "baserom.gba", 0x0EEB8C, 0x0000020

gUnk_080EEBAC:: @ 080EEBAC
	.incbin "baserom.gba", 0x0EEBAC, 0x000000C
	.4byte script_0800B00C
	.incbin "baserom.gba", 0x0EEBBC, 0x0000010

gUnk_080EEBCC:: @ 080EEBCC
	.incbin "baserom.gba", 0x0EEBCC, 0x000001C
	.4byte script_0800F73C
	.incbin "baserom.gba", 0x0EEBEC, 0x000000C
	.4byte script_0800FB44
	.incbin "baserom.gba", 0x0EEBFC, 0x000000C
	.4byte script_0800FD0C
	.incbin "baserom.gba", 0x0EEC0C, 0x000002C
	.4byte script_0800B00C
	.incbin "baserom.gba", 0x0EEC3C, 0x0000010

gUnk_080EEC4C:: @ 080EEC4C
	.incbin "baserom.gba", 0x0EEC4C, 0x0000070

gUnk_080EECBC:: @ 080EECBC
	.incbin "baserom.gba", 0x0EECBC, 0x0000020

gUnk_080EECDC:: @ 080EECDC
	.incbin "baserom.gba", 0x0EECDC, 0x0000050

gUnk_080EED2C:: @ 080EED2C
	.incbin "baserom.gba", 0x0EED2C, 0x000004E

gUnk_080EED7A:: @ 080EED7A
	.incbin "baserom.gba", 0x0EED7A, 0x0000012

gUnk_080EED8C:: @ 080EED8C
	.incbin "baserom.gba", 0x0EED8C, 0x000000C

gUnk_080EED98:: @ 080EED98
	.incbin "baserom.gba", 0x0EED98, 0x0000053

gUnk_080EEDEB:: @ 080EEDEB
	.incbin "baserom.gba", 0x0EEDEB, 0x000000B

gUnk_080EEDF6:: @ 080EEDF6
	.incbin "baserom.gba", 0x0EEDF6, 0x0000022

gUnk_080EEE18:: @ 080EEE18
	.incbin "baserom.gba", 0x0EEE18, 0x0000014

gUnk_080EEE2C:: @ 080EEE2C
	.incbin "baserom.gba", 0x0EEE2C, 0x0000014

gUnk_080EEE40:: @ 080EEE40
	.incbin "baserom.gba", 0x0EEE40, 0x0000014

gUnk_080EEE54:: @ 080EEE54
	.incbin "baserom.gba", 0x0EEE54, 0x0000014

gUnk_080EEE68:: @ 080EEE68
	.incbin "baserom.gba", 0x0EEE68, 0x0000014

gUnk_080EEE7C:: @ 080EEE7C
	.incbin "baserom.gba", 0x0EEE7C, 0x0000014

gUnk_080EEE90:: @ 080EEE90
	.incbin "baserom.gba", 0x0EEE90, 0x0000014

gUnk_080EEEA4:: @ 080EEEA4
	.incbin "baserom.gba", 0x0EEEA4, 0x0000014

gUnk_080EEEB8:: @ 080EEEB8
	.incbin "baserom.gba", 0x0EEEB8, 0x0000014

gUnk_080EEECC:: @ 080EEECC
	.incbin "baserom.gba", 0x0EEECC, 0x0000014

gUnk_080EEEE0:: @ 080EEEE0
	.incbin "baserom.gba", 0x0EEEE0, 0x0000014

gUnk_080EEEF4:: @ 080EEEF4
	.incbin "baserom.gba", 0x0EEEF4, 0x0000014

gUnk_080EEF08:: @ 080EEF08
	.incbin "baserom.gba", 0x0EEF08, 0x0000014

gUnk_080EEF1C:: @ 080EEF1C
	.incbin "baserom.gba", 0x0EEF1C, 0x0000014

gUnk_080EEF30:: @ 080EEF30
	.incbin "baserom.gba", 0x0EEF30, 0x0000014

gUnk_080EEF44:: @ 080EEF44
	.incbin "baserom.gba", 0x0EEF44, 0x0000014

gUnk_080EEF58:: @ 080EEF58
	.incbin "baserom.gba", 0x0EEF58, 0x0000041

gUnk_080EEF99:: @ 080EEF99
	.incbin "baserom.gba", 0x0EEF99, 0x0000013

gUnk_080EEFAC:: @ 080EEFAC
	.incbin "baserom.gba", 0x0EEFAC, 0x0000014

gUnk_080EEFC0:: @ 080EEFC0
	.incbin "baserom.gba", 0x0EEFC0, 0x0000014

gUnk_080EEFD4:: @ 080EEFD4
	.incbin "baserom.gba", 0x0EEFD4, 0x0000014

gUnk_080EEFE8:: @ 080EEFE8
	.incbin "baserom.gba", 0x0EEFE8, 0x0000014

gUnk_080EEFFC:: @ 080EEFFC
	.incbin "baserom.gba", 0x0EEFFC, 0x0000014

gUnk_080EF010:: @ 080EF010
	.incbin "baserom.gba", 0x0EF010, 0x0000014

gUnk_080EF024:: @ 080EF024
	.incbin "baserom.gba", 0x0EF024, 0x0000014

gUnk_080EF038:: @ 080EF038
	.incbin "baserom.gba", 0x0EF038, 0x0000014

gUnk_080EF04C:: @ 080EF04C
	.incbin "baserom.gba", 0x0EF04C, 0x0000014

gUnk_080EF060:: @ 080EF060
	.incbin "baserom.gba", 0x0EF060, 0x0000014

gUnk_080EF074:: @ 080EF074
	.incbin "baserom.gba", 0x0EF074, 0x0000014

gUnk_080EF088:: @ 080EF088
	.incbin "baserom.gba", 0x0EF088, 0x0000014

gUnk_080EF09C:: @ 080EF09C
	.incbin "baserom.gba", 0x0EF09C, 0x0000014

gUnk_080EF0B0:: @ 080EF0B0
	.incbin "baserom.gba", 0x0EF0B0, 0x0000008
	.4byte script_080100C8
	.incbin "baserom.gba", 0x0EF0BC, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0EF0CC, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0EF0DC, 0x0000008

gUnk_080EF0E4:: @ 080EF0E4
	.incbin "baserom.gba", 0x0EF0E4, 0x0000004
	.4byte script_080100C8
	.incbin "baserom.gba", 0x0EF0EC, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0EF0FC, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0EF10C, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0EF11C, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0EF12C, 0x000000C
	.4byte script_080100C8
	.incbin "baserom.gba", 0x0EF13C, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0EF14C, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0EF15C, 0x000000C
	.4byte script_0800E7F4
	.incbin "baserom.gba", 0x0EF16C, 0x000000C
	.4byte script_08010148
	.incbin "baserom.gba", 0x0EF17C, 0x000003C
	.4byte script_08010294
	.incbin "baserom.gba", 0x0EF1BC, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF1CC, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0EF1DC, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF1EC, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF1FC, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF20C, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0EF21C, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF22C, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF23C, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF24C, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0EF25C, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF26C, 0x000002C
	.4byte script_08010428
	.incbin "baserom.gba", 0x0EF29C, 0x000000C
	.4byte script_080100C8
	.incbin "baserom.gba", 0x0EF2AC, 0x000000C
	.4byte script_08010454
	.incbin "baserom.gba", 0x0EF2BC, 0x000000C
	.4byte script_080104A0
	.incbin "baserom.gba", 0x0EF2CC, 0x000000C
	.4byte script_0801030C
	.incbin "baserom.gba", 0x0EF2DC, 0x000000C
	.4byte script_0801030C
	.incbin "baserom.gba", 0x0EF2EC, 0x000000C
	.4byte script_0801030C
	.incbin "baserom.gba", 0x0EF2FC, 0x000000C
	.4byte script_0801030C
	.incbin "baserom.gba", 0x0EF30C, 0x000000C
	.4byte script_0801030C
	.incbin "baserom.gba", 0x0EF31C, 0x000000C
	.4byte script_0801030C
	.incbin "baserom.gba", 0x0EF32C, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0EF33C, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0EF34C, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF35C, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF36C, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0EF37C, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0EF38C, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF39C, 0x000000C
	.4byte script_080102E0
	.incbin "baserom.gba", 0x0EF3AC, 0x000000C
	.4byte script_0800FF18
	.incbin "baserom.gba", 0x0EF3BC, 0x000000C
	.4byte script_0800FF74
	.incbin "baserom.gba", 0x0EF3CC, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF3DC, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF3EC, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF3FC, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF40C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF41C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF42C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF43C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF44C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF45C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF46C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF47C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF48C, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF49C, 0x000000C
	.4byte script_080103F8
	.incbin "baserom.gba", 0x0EF4AC, 0x000000C
	.4byte script_0800FEBC
	.incbin "baserom.gba", 0x0EF4BC, 0x000000C
	.4byte script_080103D0
	.incbin "baserom.gba", 0x0EF4CC, 0x000000C
	.4byte script_0800ED04
	.incbin "baserom.gba", 0x0EF4DC, 0x000000C
	.4byte script_0800ED04
	.incbin "baserom.gba", 0x0EF4EC, 0x000000C
	.4byte script_080108D0
	.incbin "baserom.gba", 0x0EF4FC, 0x000000C
	.4byte script_080108D0
	.incbin "baserom.gba", 0x0EF50C, 0x000000C
	.4byte script_08010964
	.incbin "baserom.gba", 0x0EF51C, 0x000000C
	.4byte script_080109A0
	.incbin "baserom.gba", 0x0EF52C, 0x000000C
	.4byte script_08010B68
	.incbin "baserom.gba", 0x0EF53C, 0x000000C
	.4byte script_08010B68
	.incbin "baserom.gba", 0x0EF54C, 0x000000C
	.4byte script_08010B68
	.incbin "baserom.gba", 0x0EF55C, 0x000000C
	.4byte script_08010B68
	.incbin "baserom.gba", 0x0EF56C, 0x000000C
	.4byte script_08010B68
	.incbin "baserom.gba", 0x0EF57C, 0x0000054

gUnk_080EF5D0:: @ 080EF5D0
	.incbin "baserom.gba", 0x0EF5D0, 0x0000008
	.4byte script_08010264
	.incbin "baserom.gba", 0x0EF5DC, 0x000000C

gUnk_080EF5E8:: @ 080EF5E8
	.incbin "baserom.gba", 0x0EF5E8, 0x0000008

gUnk_080EF5F0:: @ 080EF5F0
	.incbin "baserom.gba", 0x0EF5F0, 0x0000008
	.4byte script_080107D0
	.incbin "baserom.gba", 0x0EF5FC, 0x0000014

gUnk_080EF610:: @ 080EF610
	.incbin "baserom.gba", 0x0EF610, 0x0000008
	.4byte script_080104EC
	.incbin "baserom.gba", 0x0EF61C, 0x0000024

gUnk_080EF640:: @ 080EF640
	.incbin "baserom.gba", 0x0EF640, 0x0000008
	.4byte script_0800FDA0
	.incbin "baserom.gba", 0x0EF64C, 0x0000014

gUnk_080EF660:: @ 080EF660
	.incbin "baserom.gba", 0x0EF660, 0x0000008
	.4byte script_0800FDCC
	.incbin "baserom.gba", 0x0EF66C, 0x0000014

gUnk_080EF680:: @ 080EF680
	.incbin "baserom.gba", 0x0EF680, 0x0000008
	.4byte script_0800FE44
	.incbin "baserom.gba", 0x0EF68C, 0x0000014

gUnk_080EF6A0:: @ 080EF6A0
	.incbin "baserom.gba", 0x0EF6A0, 0x0000008
	.4byte script_0800FDA0
	.incbin "baserom.gba", 0x0EF6AC, 0x0000014

gUnk_080EF6C0:: @ 080EF6C0
	.incbin "baserom.gba", 0x0EF6C0, 0x0000020

gUnk_080EF6E0:: @ 080EF6E0
	.incbin "baserom.gba", 0x0EF6E0, 0x000001C

gUnk_080EF6FC:: @ 080EF6FC
	.incbin "baserom.gba", 0x0EF6FC, 0x0000004

gUnk_080EF700:: @ 080EF700
	.incbin "baserom.gba", 0x0EF700, 0x0000020

gUnk_080EF720:: @ 080EF720
	.incbin "baserom.gba", 0x0EF720, 0x0000020

gUnk_080EF740:: @ 080EF740
	.incbin "baserom.gba", 0x0EF740, 0x0000008
	.4byte script_08010A98
	.incbin "baserom.gba", 0x0EF74C, 0x0000014

gUnk_080EF760:: @ 080EF760
	.incbin "baserom.gba", 0x0EF760, 0x0000008
	.4byte script_08014F30
	.incbin "baserom.gba", 0x0EF76C, 0x0000034

gUnk_080EF7A0:: @ 080EF7A0
	.incbin "baserom.gba", 0x0EF7A0, 0x0000008
	.4byte script_080100C8
	.incbin "baserom.gba", 0x0EF7AC, 0x0000014

gUnk_080EF7C0:: @ 080EF7C0
	.incbin "baserom.gba", 0x0EF7C0, 0x0000008
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF7CC, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF7DC, 0x000000C
	.4byte script_0800F584
	.incbin "baserom.gba", 0x0EF7EC, 0x000000C
	.4byte script_0800F584
	.incbin "baserom.gba", 0x0EF7FC, 0x000000C
	.4byte script_08010454
	.incbin "baserom.gba", 0x0EF80C, 0x000000C
	.4byte script_0800F5EC
	.incbin "baserom.gba", 0x0EF81C, 0x000000C
	.4byte script_0800F688
	.incbin "baserom.gba", 0x0EF82C, 0x000000C
	.4byte script_0800F6E0
	.incbin "baserom.gba", 0x0EF83C, 0x000000C
	.4byte script_0800F6E0
	.incbin "baserom.gba", 0x0EF84C, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF85C, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF86C, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF87C, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF88C, 0x000000C
	.4byte script_0800F650
	.incbin "baserom.gba", 0x0EF89C, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF8AC, 0x000000C
	.4byte script_0800F628
	.incbin "baserom.gba", 0x0EF8BC, 0x000000C
	.4byte script_0800F628
	.incbin "baserom.gba", 0x0EF8CC, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF8DC, 0x000000C
	.4byte script_0800F5B0
	.incbin "baserom.gba", 0x0EF8EC, 0x0000005

gUnk_080EF8F1:: @ 080EF8F1
	.incbin "baserom.gba", 0x0EF8F1, 0x0000007
	.4byte script_0800F584
	.incbin "baserom.gba", 0x0EF8FC, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF90C, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF91C, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF92C, 0x000000C
	.4byte script_0800F554
	.incbin "baserom.gba", 0x0EF93C, 0x000000C
	.4byte script_0800F724
	.incbin "baserom.gba", 0x0EF94C, 0x000000C
	.4byte script_0800F724
	.incbin "baserom.gba", 0x0EF95C, 0x0000014

gUnk_080EF970:: @ 080EF970
	.incbin "baserom.gba", 0x0EF970, 0x0000028

gUnk_080EF998:: @ 080EF998
	.incbin "baserom.gba", 0x0EF998, 0x0000028

gUnk_080EF9C0:: @ 080EF9C0
	.incbin "baserom.gba", 0x0EF9C0, 0x0000024

gUnk_080EF9E4:: @ 080EF9E4
	.incbin "baserom.gba", 0x0EF9E4, 0x000000B

gUnk_080EF9EF:: @ 080EF9EF
	.incbin "baserom.gba", 0x0EF9EF, 0x0000021
	.4byte script_0800EF40
	.incbin "baserom.gba", 0x0EFA14, 0x0000074
	.4byte script_0801090C
	.incbin "baserom.gba", 0x0EFA8C, 0x0000018

gUnk_080EFAA4:: @ 080EFAA4
	.incbin "baserom.gba", 0x0EFAA4, 0x0000048

Room_HyruleTown_0:: @ 080EFAEC
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804DE00
	.4byte LoadHyruleTown
	.4byte gUnk_080EF5D0
	.4byte gUnk_080EF970
	.4byte gUnk_080EF998
	.4byte gUnk_080EF9C0
	.4byte gUnk_080EF9E4
	.4byte gUnk_080EED98
	.4byte gUnk_080EEF58
	.4byte gUnk_080EF0B0
	.4byte gUnk_080EEE18
	.4byte gUnk_080EEE2C
	.4byte gUnk_080EEE40
	.4byte gUnk_080EEE54
	.4byte gUnk_080EEE68
	.4byte gUnk_080EEE7C
	.4byte gUnk_080EEE90
	.4byte gUnk_080EEEA4
	.4byte gUnk_080EEEB8
	.4byte gUnk_080EEECC
	.4byte gUnk_080EEEE0
	.4byte gUnk_080EEEF4
	.4byte gUnk_080EEF08
	.4byte gUnk_080EEF1C
	.4byte gUnk_080EEF30
	.4byte gUnk_080EEF44
	.4byte gUnk_080EEFAC
	.4byte gUnk_080EEFC0
	.4byte gUnk_080EEFD4
	.4byte gUnk_080EEFE8
	.4byte gUnk_080EEFFC
	.4byte gUnk_080EF010
	.4byte gUnk_080EF024
	.4byte gUnk_080EF038
	.4byte gUnk_080EF04C
	.4byte gUnk_080EF060
	.4byte gUnk_080EF074
	.4byte gUnk_080EF088
	.4byte gUnk_080EF09C
	.4byte gUnk_080EF5F0
	.4byte gUnk_080EF610
	.4byte gUnk_080EF640
	.4byte gUnk_080EF660
	.4byte gUnk_080EF680
	.4byte gUnk_080EF6A0
	.4byte 0x00000000
	.4byte gUnk_080EF6C0
	.4byte gUnk_080EF6E0
	.4byte gUnk_080EF700
	.4byte gUnk_080EF720
	.4byte gUnk_080EF740
	.4byte gUnk_080EF760
	.4byte gUnk_080EF7A0

Room_HyruleTown_1:: @ 080EFBD8
	.4byte gUnk_080EEBCC
	.4byte gUnk_080EEC4C
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

gUnk_080EFBF8:: @ 080EFBF8
	.4byte gUnk_080EFAA4
	.4byte gUnk_080EF7C0

Room_HyruleTown_2:: @ 080EFC00
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.incbin "baserom.gba", 0x0EFC08, 0x0000004
	.4byte gUnk_080EECDC
	.incbin "baserom.gba", 0x0EFC10, 0x0000001

gUnk_080EFC11:: @ 080EFC11
	.incbin "baserom.gba", 0x0EFC11, 0x000000B
	.4byte LoadHyruleTown

Room_HyruleTown_3:: @ 080EFC20
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_4:: @ 080EFC40
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_5:: @ 080EFC60
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_6:: @ 080EFC80
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_7:: @ 080EFCA0
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

Room_HyruleTown_8:: @ 080EFCC0
	.4byte gUnk_080EE80C
	.4byte gUnk_080EEADC
	.4byte 0x00000000
	.4byte gUnk_080EECDC
	.4byte sub_0804E130
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte LoadHyruleTown

gUnk_080EFCE0:: @ 080EFCE0
	.incbin "baserom.gba", 0x0EFCE0, 0x00000B0

gUnk_080EFD90:: @ 080EFD90
	.incbin "baserom.gba", 0x0EFD90, 0x0000060

gUnk_080EFDF0:: @ 080EFDF0
	.incbin "baserom.gba", 0x0EFDF0, 0x0000008

Room_HyruleTownMinishCaves_Entrance:: @ 080EFDF8
	.4byte gUnk_080EFCE0
	.4byte 0x00000000
	.4byte gUnk_080EFD90
	.4byte gUnk_080EFDF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E1F4
	.4byte nullsub_76

gUnk_080EFE18:: @ 080EFE18
	.incbin "baserom.gba", 0x0EFE18, 0x0000020

gUnk_080EFE38:: @ 080EFE38
	.incbin "baserom.gba", 0x0EFE38, 0x0000020

gUnk_080EFE58:: @ 080EFE58
	.incbin "baserom.gba", 0x0EFE58, 0x0000010

gUnk_080EFE68:: @ 080EFE68
	.incbin "baserom.gba", 0x0EFE68, 0x0000010

Room_HyruleTownMinishCaves_NorthRoom:: @ 080EFE78
	.4byte gUnk_080EFE18
	.4byte gUnk_080EFE38
	.4byte gUnk_080EFE58
	.4byte gUnk_080EFE68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E1FC
	.4byte nullsub_77

gUnk_080EFE98:: @ 080EFE98
	.incbin "baserom.gba", 0x0EFE98, 0x0000061

gUnk_080EFEF9:: @ 080EFEF9
	.incbin "baserom.gba", 0x0EFEF9, 0x000000F

gUnk_080EFF08:: @ 080EFF08
	.incbin "baserom.gba", 0x0EFF08, 0x0000020

gUnk_080EFF28:: @ 080EFF28
	.incbin "baserom.gba", 0x0EFF28, 0x0000050

gUnk_080EFF78:: @ 080EFF78
	.incbin "baserom.gba", 0x0EFF78, 0x0000008

Room_HyruleTownMinishCaves_PacciJump:: @ 080EFF80
	.4byte gUnk_080EFE98
	.4byte gUnk_080EFF08
	.4byte gUnk_080EFF28
	.4byte gUnk_080EFF78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E204
	.4byte nullsub_78

gUnk_080EFFA0:: @ 080EFFA0
	.incbin "baserom.gba", 0x0EFFA0, 0x0000050

gUnk_080EFFF0:: @ 080EFFF0
	.incbin "baserom.gba", 0x0EFFF0, 0x0000010

gUnk_080F0000:: @ 080F0000
	.incbin "baserom.gba", 0x0F0000, 0x0000008

gUnk_080F0008:: @ 080F0008
	.incbin "baserom.gba", 0x0F0008, 0x0000006

gUnk_080F000E:: @ 080F000E
	.incbin "baserom.gba", 0x0F000E, 0x0000006

gUnk_080F0014:: @ 080F0014
	.incbin "baserom.gba", 0x0F0014, 0x0000006

gUnk_080F001A:: @ 080F001A
	.incbin "baserom.gba", 0x0F001A, 0x0000008

gUnk_080F0022:: @ 080F0022
	.incbin "baserom.gba", 0x0F0022, 0x0000006

gUnk_080F0028:: @ 080F0028
	.incbin "baserom.gba", 0x0F0028, 0x0000008

gUnk_080F0030:: @ 080F0030
	.incbin "baserom.gba", 0x0F0030, 0x0000002

gUnk_080F0032:: @ 080F0032
	.incbin "baserom.gba", 0x0F0032, 0x0000001

gUnk_080F0033:: @ 080F0033
	.incbin "baserom.gba", 0x0F0033, 0x0000007

gUnk_080F003A:: @ 080F003A
	.incbin "baserom.gba", 0x0F003A, 0x0000006

gUnk_080F0040:: @ 080F0040
	.incbin "baserom.gba", 0x0F0040, 0x0000010

gUnk_080F0050:: @ 080F0050
	.incbin "baserom.gba", 0x0F0050, 0x0000038

gUnk_080F0088:: @ 080F0088
	.incbin "baserom.gba", 0x0F0088, 0x0000008

gUnk_080F0090:: @ 080F0090
	.incbin "baserom.gba", 0x0F0090, 0x0000008

gUnk_080F0098:: @ 080F0098
	.incbin "baserom.gba", 0x0F0098, 0x0000006

gUnk_080F009E:: @ 080F009E
	.incbin "baserom.gba", 0x0F009E, 0x0000002

Room_HyruleTownMinishCaves_MulldozerFight:: @ 080F00A0
	.4byte gUnk_080EFFA0
	.4byte gUnk_080F0000
	.4byte gUnk_080F0030
	.4byte gUnk_080F0040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E20C
	.4byte nullsub_79
	.4byte gUnk_080F0050

gUnk_080F00C4:: @ 080F00C4
	.incbin "baserom.gba", 0x0F00C4, 0x0000010

gUnk_080F00D4:: @ 080F00D4
	.incbin "baserom.gba", 0x0F00D4, 0x0000010

gUnk_080F00E4:: @ 080F00E4
	.incbin "baserom.gba", 0x0F00E4, 0x0000010

Room_HyruleTownMinishCaves_WestChest:: @ 080F00F4
	.4byte gUnk_080F00C4
	.incbin "baserom.gba", 0x0F00F8, 0x0000004
	.4byte gUnk_080F00D4
	.4byte gUnk_080F00E4
	.incbin "baserom.gba", 0x0F0104, 0x0000003

gUnk_080F0107:: @ 080F0107
	.incbin "baserom.gba", 0x0F0107, 0x0000005
	.4byte sub_0804E214
	.4byte nullsub_080

gUnk_080F0114:: @ 080F0114
	.incbin "baserom.gba", 0x0F0114, 0x0000038

gUnk_080F014C:: @ 080F014C
	.incbin "baserom.gba", 0x0F014C, 0x0000038

gUnk_080F0184:: @ 080F0184
	.incbin "baserom.gba", 0x0F0184, 0x0000010

gUnk_080F0194:: @ 080F0194
	.incbin "baserom.gba", 0x0F0194, 0x0000010

gUnk_080F01A4:: @ 080F01A4
	.incbin "baserom.gba", 0x0F01A4, 0x0000030

Room_HyruleTownMinishCaves_Flippers:: @ 080F01D4
	.4byte gUnk_080F0114
	.4byte 0x00000000
	.4byte gUnk_080F0184
	.4byte gUnk_080F0194
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E21C
	.4byte nullsub_081
	.4byte gUnk_080F01A4

gUnk_080F01F8:: @ 080F01F8
	.incbin "baserom.gba", 0x0F01F8, 0x0000010

gUnk_080F0208:: @ 080F0208
	.incbin "baserom.gba", 0x0F0208, 0x0000020

gUnk_080F0228:: @ 080F0228
	.incbin "baserom.gba", 0x0F0228, 0x0000008

Room_HyruleTownMinishCaves_Librari:: @ 080F0230
	.4byte gUnk_080F01F8
	.4byte 0x00000000
	.4byte gUnk_080F0208
	.4byte gUnk_080F0228
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E224
	.4byte nullsub_082

gUnk_080F0250:: @ 080F0250
	.incbin "baserom.gba", 0x0F0250, 0x0000020

gUnk_080F0270:: @ 080F0270
	.incbin "baserom.gba", 0x0F0270, 0x0000010

gUnk_080F0280:: @ 080F0280
	.incbin "baserom.gba", 0x0F0280, 0x0000010

Room_HyruleTownMinishCaves_WestFrozenChest:: @ 080F0290
	.4byte gUnk_080F0250
	.4byte 0x00000000
	.4byte gUnk_080F0270
	.4byte gUnk_080F0280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E22C
	.4byte nullsub_083

gUnk_080F02B0:: @ 080F02B0
	.incbin "baserom.gba", 0x0F02B0, 0x0000027

gUnk_080F02D7:: @ 080F02D7
	.incbin "baserom.gba", 0x0F02D7, 0x000001B

gUnk_080F02F2:: @ 080F02F2
	.incbin "baserom.gba", 0x0F02F2, 0x0000009

gUnk_080F02FB:: @ 080F02FB
	.incbin "baserom.gba", 0x0F02FB, 0x0000025

gUnk_080F0320:: @ 080F0320
	.incbin "baserom.gba", 0x0F0320, 0x0000040

gUnk_080F0360:: @ 080F0360
	.incbin "baserom.gba", 0x0F0360, 0x0000008

Room_HyruleTownMinishCaves_CrossIntersection:: @ 080F0368
	.4byte gUnk_080F02B0
	.4byte 0x00000000
	.4byte gUnk_080F0320
	.4byte gUnk_080F0360
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E234
	.4byte nullsub_084

gUnk_080F0388:: @ 080F0388
	.incbin "baserom.gba", 0x0F0388, 0x0000020

gUnk_080F03A8:: @ 080F03A8
	.incbin "baserom.gba", 0x0F03A8, 0x000004C

gUnk_080F03F4:: @ 080F03F4
	.incbin "baserom.gba", 0x0F03F4, 0x0000001

gUnk_080F03F5:: @ 080F03F5
	.incbin "baserom.gba", 0x0F03F5, 0x000000C

gUnk_080F0401:: @ 080F0401
	.incbin "baserom.gba", 0x0F0401, 0x0000001

gUnk_080F0402:: @ 080F0402
	.incbin "baserom.gba", 0x0F0402, 0x0000006

gUnk_080F0408:: @ 080F0408
	.incbin "baserom.gba", 0x0F0408, 0x0000008

Room_HyruleTownMinishCaves_SoutheastCorner:: @ 080F0410
	.4byte gUnk_080F0388
	.4byte 0x00000000
	.4byte gUnk_080F03A8
	.4byte gUnk_080F0408
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E23C
	.4byte nullsub_085

gUnk_080F0430:: @ 080F0430
	.incbin "baserom.gba", 0x0F0430, 0x0000010

gUnk_080F0440:: @ 080F0440
	.incbin "baserom.gba", 0x0F0440, 0x0000003

gUnk_080F0443:: @ 080F0443
	.incbin "baserom.gba", 0x0F0443, 0x000000D

gUnk_080F0450:: @ 080F0450
	.incbin "baserom.gba", 0x0F0450, 0x0000008

Room_HyruleTownMinishCaves_Entrance2:: @ 080F0458
	.4byte gUnk_080F0430
	.4byte 0x00000000
	.4byte gUnk_080F0440
	.4byte gUnk_080F0450
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E244
	.4byte nullsub_086

gUnk_080F0478:: @ 080F0478
	.incbin "baserom.gba", 0x0F0478, 0x0000080

gUnk_080F04F8:: @ 080F04F8
	.incbin "baserom.gba", 0x0F04F8, 0x0000004

gUnk_080F04FC:: @ 080F04FC
	.incbin "baserom.gba", 0x0F04FC, 0x0000007

gUnk_080F0503:: @ 080F0503
	.incbin "baserom.gba", 0x0F0503, 0x0000085

gUnk_080F0588:: @ 080F0588
	.incbin "baserom.gba", 0x0F0588, 0x0000030

Room_HyruleTownUnderground_Main:: @ 080F05B8
	.4byte gUnk_080F0478
	.4byte 0x00000000
	.4byte gUnk_080F04F8
	.4byte gUnk_080F0588
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E24C
	.4byte nullsub_087

gUnk_080F05D8:: @ 080F05D8
	.incbin "baserom.gba", 0x0F05D8, 0x0000020

gUnk_080F05F8:: @ 080F05F8
	.incbin "baserom.gba", 0x0F05F8, 0x0000008

gUnk_080F0600:: @ 080F0600
	.incbin "baserom.gba", 0x0F0600, 0x0000008

gUnk_080F0608:: @ 080F0608
	.incbin "baserom.gba", 0x0F0608, 0x0000001

gUnk_080F0609:: @ 080F0609
	.incbin "baserom.gba", 0x0F0609, 0x0000007

Room_HyruleTownUnderground_Well:: @ 080F0610
	.4byte gUnk_080F05D8
	.4byte 0x00000000
	.4byte gUnk_080F05F8
	.4byte gUnk_080F0608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E254
	.4byte nullsub_088

gUnk_080F0630:: @ 080F0630
	.incbin "baserom.gba", 0x0F0630, 0x0000020

gUnk_080F0650:: @ 080F0650
	.incbin "baserom.gba", 0x0F0650, 0x000000C
	.4byte script_08011128
	.incbin "baserom.gba", 0x0F0660, 0x000000C
	.4byte script_080119B0
	.incbin "baserom.gba", 0x0F0670, 0x000000C
	.4byte script_080119B0
	.incbin "baserom.gba", 0x0F0680, 0x000000C
	.4byte script_080119D8
	.incbin "baserom.gba", 0x0F0690, 0x000000C
	.4byte script_080119F0
	.incbin "baserom.gba", 0x0F06A0, 0x0000010

gUnk_080F06B0:: @ 080F06B0
	.incbin "baserom.gba", 0x0F06B0, 0x000000C
	.4byte script_08010BEC
	.incbin "baserom.gba", 0x0F06C0, 0x000000C
	.4byte script_080111CC
	.incbin "baserom.gba", 0x0F06D0, 0x0000010

gUnk_080F06E0:: @ 080F06E0
	.incbin "baserom.gba", 0x0F06E0, 0x000000C
	.4byte script_08011640
	.incbin "baserom.gba", 0x0F06F0, 0x000000C
	.4byte script_080112C4
	.incbin "baserom.gba", 0x0F0700, 0x0000005

gUnk_080F0705:: @ 080F0705
	.incbin "baserom.gba", 0x0F0705, 0x0000007
	.4byte script_080112C4
	.incbin "baserom.gba", 0x0F0710, 0x000000C
	.4byte script_080112C4
	.incbin "baserom.gba", 0x0F0720, 0x000000C
	.4byte script_080112C4
	.incbin "baserom.gba", 0x0F0730, 0x000000C
	.4byte script_080115D0
	.incbin "baserom.gba", 0x0F0740, 0x000000C
	.4byte script_08011608
	.incbin "baserom.gba", 0x0F0750, 0x000000C
	.4byte script_080116A8
	.incbin "baserom.gba", 0x0F0760, 0x0000010

gUnk_080F0770:: @ 080F0770
	.incbin "baserom.gba", 0x0F0770, 0x000000C
	.4byte script_08011930
	.incbin "baserom.gba", 0x0F0780, 0x000000C
	.4byte script_08011930
	.incbin "baserom.gba", 0x0F0790, 0x000000C
	.4byte script_08011930
	.incbin "baserom.gba", 0x0F07A0, 0x000000C
	.4byte script_08011930
	.incbin "baserom.gba", 0x0F07B0, 0x000000C
	.4byte script_08011930
	.incbin "baserom.gba", 0x0F07C0, 0x000000C
	.4byte script_08011930
	.incbin "baserom.gba", 0x0F07D0, 0x000000C
	.4byte script_08011930
	.incbin "baserom.gba", 0x0F07E0, 0x000000C
	.4byte script_08011930
	.incbin "baserom.gba", 0x0F07F0, 0x0000010

gUnk_080F0800:: @ 080F0800
	.incbin "baserom.gba", 0x0F0800, 0x0000006

gUnk_080F0806:: @ 080F0806
	.incbin "baserom.gba", 0x0F0806, 0x0000006
	.4byte script_0801194C
	.incbin "baserom.gba", 0x0F0810, 0x0000006

gUnk_080F0816:: @ 080F0816
	.incbin "baserom.gba", 0x0F0816, 0x0000006
	.4byte script_08011964
	.incbin "baserom.gba", 0x0F0820, 0x000000C
	.4byte script_08011958
	.incbin "baserom.gba", 0x0F0830, 0x000000C
	.4byte script_08011964
	.incbin "baserom.gba", 0x0F0840, 0x0000010

gUnk_080F0850:: @ 080F0850
	.incbin "baserom.gba", 0x0F0850, 0x000000C
	.4byte script_08011A64
	.incbin "baserom.gba", 0x0F0860, 0x0000010

gUnk_080F0870:: @ 080F0870
	.incbin "baserom.gba", 0x0F0870, 0x000000C
	.4byte script_080119E4
	.incbin "baserom.gba", 0x0F0880, 0x0000010

gUnk_080F0890:: @ 080F0890
	.incbin "baserom.gba", 0x0F0890, 0x000004C
	.4byte script_08011AE4
	.incbin "baserom.gba", 0x0F08E0, 0x0000010

gUnk_080F08F0:: @ 080F08F0
	.incbin "baserom.gba", 0x0F08F0, 0x000000C
	.4byte script_08011A2C
	.incbin "baserom.gba", 0x0F0900, 0x000000C
	.4byte script_08011A2C
	.incbin "baserom.gba", 0x0F0910, 0x0000010

gUnk_080F0920:: @ 080F0920
	.incbin "baserom.gba", 0x0F0920, 0x000000C
	.4byte script_08011B20
	.incbin "baserom.gba", 0x0F0930, 0x0000010

gUnk_080F0940:: @ 080F0940
	.incbin "baserom.gba", 0x0F0940, 0x0000060

gUnk_080F09A0:: @ 080F09A0
	.incbin "baserom.gba", 0x0F09A0, 0x0000060

gUnk_080F0A00:: @ 080F0A00
	.incbin "baserom.gba", 0x0F0A00, 0x0000002

gUnk_080F0A02:: @ 080F0A02
	.incbin "baserom.gba", 0x0F0A02, 0x0000007

gUnk_080F0A09:: @ 080F0A09
	.incbin "baserom.gba", 0x0F0A09, 0x0000007

gUnk_080F0A10:: @ 080F0A10
	.incbin "baserom.gba", 0x0F0A10, 0x0000001

gUnk_080F0A11:: @ 080F0A11
	.incbin "baserom.gba", 0x0F0A11, 0x000001F

gUnk_080F0A30:: @ 080F0A30
	.incbin "baserom.gba", 0x0F0A30, 0x0000020

gUnk_080F0A50:: @ 080F0A50
	.incbin "baserom.gba", 0x0F0A50, 0x0000011

gUnk_080F0A61:: @ 080F0A61
	.incbin "baserom.gba", 0x0F0A61, 0x0000003

gUnk_080F0A64:: @ 080F0A64
	.incbin "baserom.gba", 0x0F0A64, 0x000000F

gUnk_080F0A73:: @ 080F0A73
	.incbin "baserom.gba", 0x0F0A73, 0x0000005

gUnk_080F0A78:: @ 080F0A78
	.incbin "baserom.gba", 0x0F0A78, 0x0000014

gUnk_080F0A8C:: @ 080F0A8C
	.incbin "baserom.gba", 0x0F0A8C, 0x0000020

gUnk_080F0AAC:: @ 080F0AAC
	.incbin "baserom.gba", 0x0F0AAC, 0x0000014

gUnk_080F0AC0:: @ 080F0AC0
	.incbin "baserom.gba", 0x0F0AC0, 0x0000014

gUnk_080F0AD4:: @ 080F0AD4
	.incbin "baserom.gba", 0x0F0AD4, 0x0000014

Room_CastleGarden_Main:: @ 080F0AE8
	.4byte gUnk_080F0630
	.4byte gUnk_080F0940
	.4byte gUnk_080F0A00
	.4byte gUnk_080F0A10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E25C
	.4byte sub_0804E27C
	.4byte gUnk_080F0A30
	.4byte gUnk_080F0A50

gUnk_080F0B10:: @ 080F0B10
	.4byte gUnk_080F0A64
	.4byte gUnk_080F0A78
	.4byte gUnk_080F0A8C
	.4byte gUnk_080F0AAC
	.4byte gUnk_080F0AC0
	.4byte gUnk_080F0AD4

gUnk_080F0B28:: @ 080F0B28
	.incbin "baserom.gba", 0x0F0B28, 0x000000C
	.4byte script_08011BE4
	.incbin "baserom.gba", 0x0F0B38, 0x0000010

gUnk_080F0B48:: @ 080F0B48
	.incbin "baserom.gba", 0x0F0B48, 0x0000020

gUnk_080F0B68:: @ 080F0B68
	.incbin "baserom.gba", 0x0F0B68, 0x0000020

gUnk_080F0B88:: @ 080F0B88
	.incbin "baserom.gba", 0x0F0B88, 0x0000030

gUnk_080F0BB8:: @ 080F0BB8
	.incbin "baserom.gba", 0x0F0BB8, 0x0000030

gUnk_080F0BE8:: @ 080F0BE8
	.incbin "baserom.gba", 0x0F0BE8, 0x0000019

gUnk_080F0C01:: @ 080F0C01
	.incbin "baserom.gba", 0x0F0C01, 0x0000004

gUnk_080F0C05:: @ 080F0C05
	.incbin "baserom.gba", 0x0F0C05, 0x0000001

gUnk_080F0C06:: @ 080F0C06
	.incbin "baserom.gba", 0x0F0C06, 0x0000005

gUnk_080F0C0B:: @ 080F0C0B
	.incbin "baserom.gba", 0x0F0C0B, 0x0000001

gUnk_080F0C0C:: @ 080F0C0C
	.incbin "baserom.gba", 0x0F0C0C, 0x0000009

gUnk_080F0C15:: @ 080F0C15
	.incbin "baserom.gba", 0x0F0C15, 0x0000003

gUnk_080F0C18:: @ 080F0C18
	.incbin "baserom.gba", 0x0F0C18, 0x0000030

gUnk_080F0C48:: @ 080F0C48
	.incbin "baserom.gba", 0x0F0C48, 0x0000030

gUnk_080F0C78:: @ 080F0C78
	.incbin "baserom.gba", 0x0F0C78, 0x0000040

gUnk_080F0CB8:: @ 080F0CB8
	.4byte gUnk_080F0B48
	.4byte gUnk_080F0B68
	.4byte gUnk_080F0B88
	.4byte gUnk_080F0BB8
	.4byte gUnk_080F0BE8
	.4byte gUnk_080F0C18
	.4byte gUnk_080F0C48
	.4byte gUnk_080F0C78

gUnk_080F0CD8:: @ 080F0CD8
	.incbin "baserom.gba", 0x0F0CD8, 0x0000020

gUnk_080F0CF8:: @ 080F0CF8
	.incbin "baserom.gba", 0x0F0CF8, 0x0000002

gUnk_080F0CFA:: @ 080F0CFA
	.incbin "baserom.gba", 0x0F0CFA, 0x0000004

gUnk_080F0CFE:: @ 080F0CFE
	.incbin "baserom.gba", 0x0F0CFE, 0x0000004

gUnk_080F0D02:: @ 080F0D02
	.incbin "baserom.gba", 0x0F0D02, 0x0000003

gUnk_080F0D05:: @ 080F0D05
	.incbin "baserom.gba", 0x0F0D05, 0x0000003

gUnk_080F0D08:: @ 080F0D08
	.incbin "baserom.gba", 0x0F0D08, 0x0000007

gUnk_080F0D0F:: @ 080F0D0F
	.incbin "baserom.gba", 0x0F0D0F, 0x0000009

gUnk_080F0D18:: @ 080F0D18
	.incbin "baserom.gba", 0x0F0D18, 0x0000020

gUnk_080F0D38:: @ 080F0D38
	.incbin "baserom.gba", 0x0F0D38, 0x0000020

gUnk_080F0D58:: @ 080F0D58
	.4byte gUnk_080F0CD8
	.4byte gUnk_080F0CF8
	.4byte gUnk_080F0D18
	.4byte gUnk_080F0D38

gUnk_080F0D68:: @ 080F0D68
	.incbin "baserom.gba", 0x0F0D68, 0x0000020

gUnk_080F0D88:: @ 080F0D88
	.incbin "baserom.gba", 0x0F0D88, 0x0000020

gUnk_080F0DA8:: @ 080F0DA8
	.incbin "baserom.gba", 0x0F0DA8, 0x0000020

gUnk_080F0DC8:: @ 080F0DC8
	.incbin "baserom.gba", 0x0F0DC8, 0x0000020

gUnk_080F0DE8:: @ 080F0DE8
	.incbin "baserom.gba", 0x0F0DE8, 0x000001A

gUnk_080F0E02:: @ 080F0E02
	.incbin "baserom.gba", 0x0F0E02, 0x0000002

gUnk_080F0E04:: @ 080F0E04
	.incbin "baserom.gba", 0x0F0E04, 0x0000004

gUnk_080F0E08:: @ 080F0E08
	.4byte gUnk_080F0D68
	.4byte gUnk_080F0D88
	.4byte gUnk_080F0DA8
	.4byte gUnk_080F0DC8
	.4byte gUnk_080F0DE8

gUnk_080F0E1C:: @ 080F0E1C
	.incbin "baserom.gba", 0x0F0E1C, 0x0000080

gUnk_080F0E9C:: @ 080F0E9C
	.incbin "baserom.gba", 0x0F0E9C, 0x0000046

gUnk_080F0EE2:: @ 080F0EE2
	.incbin "baserom.gba", 0x0F0EE2, 0x0000009

gUnk_080F0EEB:: @ 080F0EEB
	.incbin "baserom.gba", 0x0F0EEB, 0x0000005

gUnk_080F0EF0:: @ 080F0EF0
	.incbin "baserom.gba", 0x0F0EF0, 0x0000010

gUnk_080F0F00:: @ 080F0F00
	.incbin "baserom.gba", 0x0F0F00, 0x0000003

gUnk_080F0F03:: @ 080F0F03
	.incbin "baserom.gba", 0x0F0F03, 0x0000004

gUnk_080F0F07:: @ 080F0F07
	.incbin "baserom.gba", 0x0F0F07, 0x0000005

gUnk_080F0F0C:: @ 080F0F0C
	.incbin "baserom.gba", 0x0F0F0C, 0x0000001

gUnk_080F0F0D:: @ 080F0F0D
	.incbin "baserom.gba", 0x0F0F0D, 0x0000004

gUnk_080F0F11:: @ 080F0F11
	.incbin "baserom.gba", 0x0F0F11, 0x0000001

gUnk_080F0F12:: @ 080F0F12
	.incbin "baserom.gba", 0x0F0F12, 0x00000AA

gUnk_080F0FBC:: @ 080F0FBC
	.incbin "baserom.gba", 0x0F0FBC, 0x0000044

gUnk_080F1000:: @ 080F1000
	.incbin "baserom.gba", 0x0F1000, 0x000000C

gUnk_080F100C:: @ 080F100C
	.incbin "baserom.gba", 0x0F100C, 0x0000001

gUnk_080F100D:: @ 080F100D
	.incbin "baserom.gba", 0x0F100D, 0x0000009

gUnk_080F1016:: @ 080F1016
	.incbin "baserom.gba", 0x0F1016, 0x000004B

gUnk_080F1061:: @ 080F1061
	.incbin "baserom.gba", 0x0F1061, 0x0000002

gUnk_080F1063:: @ 080F1063
	.incbin "baserom.gba", 0x0F1063, 0x0000039

gUnk_080F109C:: @ 080F109C
	.incbin "baserom.gba", 0x0F109C, 0x000006B

gUnk_080F1107:: @ 080F1107
	.incbin "baserom.gba", 0x0F1107, 0x0000002

gUnk_080F1109:: @ 080F1109
	.incbin "baserom.gba", 0x0F1109, 0x0000002

gUnk_080F110B:: @ 080F110B
	.incbin "baserom.gba", 0x0F110B, 0x0000003

gUnk_080F110E:: @ 080F110E
	.incbin "baserom.gba", 0x0F110E, 0x0000001

gUnk_080F110F:: @ 080F110F
	.incbin "baserom.gba", 0x0F110F, 0x0000002

gUnk_080F1111:: @ 080F1111
	.incbin "baserom.gba", 0x0F1111, 0x0000002

gUnk_080F1113:: @ 080F1113
	.incbin "baserom.gba", 0x0F1113, 0x0000001

gUnk_080F1114:: @ 080F1114
	.incbin "baserom.gba", 0x0F1114, 0x0000002

gUnk_080F1116:: @ 080F1116
	.incbin "baserom.gba", 0x0F1116, 0x00000D6

gUnk_080F11EC:: @ 080F11EC
	.incbin "baserom.gba", 0x0F11EC, 0x0000019

gUnk_080F1205:: @ 080F1205
	.incbin "baserom.gba", 0x0F1205, 0x0000007

gUnk_080F120C:: @ 080F120C
	.incbin "baserom.gba", 0x0F120C, 0x0000002

gUnk_080F120E:: @ 080F120E
	.incbin "baserom.gba", 0x0F120E, 0x0000001

gUnk_080F120F:: @ 080F120F
	.incbin "baserom.gba", 0x0F120F, 0x0000002

gUnk_080F1211:: @ 080F1211
	.incbin "baserom.gba", 0x0F1211, 0x0000002

gUnk_080F1213:: @ 080F1213
	.incbin "baserom.gba", 0x0F1213, 0x0000003

gUnk_080F1216:: @ 080F1216
	.incbin "baserom.gba", 0x0F1216, 0x00000E6

gUnk_080F12FC:: @ 080F12FC
	.incbin "baserom.gba", 0x0F12FC, 0x0000015

gUnk_080F1311:: @ 080F1311
	.incbin "baserom.gba", 0x0F1311, 0x0000002

gUnk_080F1313:: @ 080F1313
	.incbin "baserom.gba", 0x0F1313, 0x0000002

gUnk_080F1315:: @ 080F1315
	.incbin "baserom.gba", 0x0F1315, 0x0000002

gUnk_080F1317:: @ 080F1317
	.incbin "baserom.gba", 0x0F1317, 0x0000003

gUnk_080F131A:: @ 080F131A
	.incbin "baserom.gba", 0x0F131A, 0x00000EE

gUnk_080F1408:: @ 080F1408
	.incbin "baserom.gba", 0x0F1408, 0x0000002

gUnk_080F140A:: @ 080F140A
	.incbin "baserom.gba", 0x0F140A, 0x0000002

gUnk_080F140C:: @ 080F140C
	.incbin "baserom.gba", 0x0F140C, 0x0000008

gUnk_080F1414:: @ 080F1414
	.incbin "baserom.gba", 0x0F1414, 0x0000002

gUnk_080F1416:: @ 080F1416
	.incbin "baserom.gba", 0x0F1416, 0x0000001

gUnk_080F1417:: @ 080F1417
	.incbin "baserom.gba", 0x0F1417, 0x0000002

gUnk_080F1419:: @ 080F1419
	.incbin "baserom.gba", 0x0F1419, 0x00000C3

gUnk_080F14DC:: @ 080F14DC
	.incbin "baserom.gba", 0x0F14DC, 0x0000031

gUnk_080F150D:: @ 080F150D
	.incbin "baserom.gba", 0x0F150D, 0x0000001

gUnk_080F150E:: @ 080F150E
	.incbin "baserom.gba", 0x0F150E, 0x0000007

gUnk_080F1515:: @ 080F1515
	.incbin "baserom.gba", 0x0F1515, 0x0000003

gUnk_080F1518:: @ 080F1518
	.incbin "baserom.gba", 0x0F1518, 0x0000002

gUnk_080F151A:: @ 080F151A
	.incbin "baserom.gba", 0x0F151A, 0x0000001

gUnk_080F151B:: @ 080F151B
	.incbin "baserom.gba", 0x0F151B, 0x00000E1

gUnk_080F15FC:: @ 080F15FC
	.incbin "baserom.gba", 0x0F15FC, 0x0000019

gUnk_080F1615:: @ 080F1615
	.incbin "baserom.gba", 0x0F1615, 0x0000001

gUnk_080F1616:: @ 080F1616
	.incbin "baserom.gba", 0x0F1616, 0x0000001

gUnk_080F1617:: @ 080F1617
	.incbin "baserom.gba", 0x0F1617, 0x0000002

gUnk_080F1619:: @ 080F1619
	.incbin "baserom.gba", 0x0F1619, 0x0000001

gUnk_080F161A:: @ 080F161A
	.incbin "baserom.gba", 0x0F161A, 0x0000001

gUnk_080F161B:: @ 080F161B
	.incbin "baserom.gba", 0x0F161B, 0x0000001

gUnk_080F161C:: @ 080F161C
	.incbin "baserom.gba", 0x0F161C, 0x0000001

gUnk_080F161D:: @ 080F161D
	.incbin "baserom.gba", 0x0F161D, 0x0000001

gUnk_080F161E:: @ 080F161E
	.incbin "baserom.gba", 0x0F161E, 0x00000EE

gUnk_080F170C:: @ 080F170C
	.incbin "baserom.gba", 0x0F170C, 0x000000A

gUnk_080F1716:: @ 080F1716
	.incbin "baserom.gba", 0x0F1716, 0x0000004

gUnk_080F171A:: @ 080F171A
	.incbin "baserom.gba", 0x0F171A, 0x0000002

gUnk_080F171C:: @ 080F171C
	.incbin "baserom.gba", 0x0F171C, 0x0000003

gUnk_080F171F:: @ 080F171F
	.incbin "baserom.gba", 0x0F171F, 0x0000001

gUnk_080F1720:: @ 080F1720
	.incbin "baserom.gba", 0x0F1720, 0x0000002

gUnk_080F1722:: @ 080F1722
	.incbin "baserom.gba", 0x0F1722, 0x00000BA

gUnk_080F17DC:: @ 080F17DC
	.incbin "baserom.gba", 0x0F17DC, 0x000003D

gUnk_080F1819:: @ 080F1819
	.incbin "baserom.gba", 0x0F1819, 0x0000004

gUnk_080F181D:: @ 080F181D
	.incbin "baserom.gba", 0x0F181D, 0x0000001

gUnk_080F181E:: @ 080F181E
	.incbin "baserom.gba", 0x0F181E, 0x0000002

gUnk_080F1820:: @ 080F1820
	.incbin "baserom.gba", 0x0F1820, 0x0000002

gUnk_080F1822:: @ 080F1822
	.incbin "baserom.gba", 0x0F1822, 0x0000002

gUnk_080F1824:: @ 080F1824
	.incbin "baserom.gba", 0x0F1824, 0x0000068

gUnk_080F188C:: @ 080F188C
	.incbin "baserom.gba", 0x0F188C, 0x0000093

gUnk_080F191F:: @ 080F191F
	.incbin "baserom.gba", 0x0F191F, 0x0000002

gUnk_080F1921:: @ 080F1921
	.incbin "baserom.gba", 0x0F1921, 0x0000002

gUnk_080F1923:: @ 080F1923
	.incbin "baserom.gba", 0x0F1923, 0x0000002

gUnk_080F1925:: @ 080F1925
	.incbin "baserom.gba", 0x0F1925, 0x0000001

gUnk_080F1926:: @ 080F1926
	.incbin "baserom.gba", 0x0F1926, 0x0000036

gUnk_080F195C:: @ 080F195C
	.incbin "baserom.gba", 0x0F195C, 0x00000B3

gUnk_080F1A0F:: @ 080F1A0F
	.incbin "baserom.gba", 0x0F1A0F, 0x0000011

gUnk_080F1A20:: @ 080F1A20
	.incbin "baserom.gba", 0x0F1A20, 0x0000005

gUnk_080F1A25:: @ 080F1A25
	.incbin "baserom.gba", 0x0F1A25, 0x0000001

gUnk_080F1A26:: @ 080F1A26
	.incbin "baserom.gba", 0x0F1A26, 0x0000006

gUnk_080F1A2C:: @ 080F1A2C
	.incbin "baserom.gba", 0x0F1A2C, 0x00000B0

gUnk_080F1ADC:: @ 080F1ADC
	.incbin "baserom.gba", 0x0F1ADC, 0x0000044

gUnk_080F1B20:: @ 080F1B20
	.incbin "baserom.gba", 0x0F1B20, 0x000000C

gUnk_080F1B2C:: @ 080F1B2C
	.incbin "baserom.gba", 0x0F1B2C, 0x0000060

gUnk_080F1B8C:: @ 080F1B8C
	.incbin "baserom.gba", 0x0F1B8C, 0x0000060

Area_SimonsSimulation_Main:: @ 080F1BEC
	.4byte gUnk_080F0B28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E3B8
	.4byte sub_0804E3C4
	.4byte gUnk_080F0E9C
	.4byte gUnk_080F0FBC
	.4byte gUnk_080F109C
	.4byte gUnk_080F11EC
	.4byte gUnk_080F12FC
	.4byte gUnk_080F140C
	.4byte gUnk_080F14DC
	.4byte gUnk_080F15FC
	.4byte gUnk_080F170C
	.4byte gUnk_080F17DC
	.4byte gUnk_080F188C
	.4byte gUnk_080F195C
	.4byte gUnk_080F1A2C
	.4byte gUnk_080F1ADC
	.4byte gUnk_080F1B8C

gUnk_080F1C48:: @ 080F1C48
	.incbin "baserom.gba", 0x0F1C48, 0x000000C
	.4byte script_0800EAF8
	.incbin "baserom.gba", 0x0F1C58, 0x0000010

gUnk_080F1C68:: @ 080F1C68
	.incbin "baserom.gba", 0x0F1C68, 0x000000C
	.4byte script_08010B68
	.incbin "baserom.gba", 0x0F1C78, 0x0000010

gUnk_080F1C88:: @ 080F1C88
	.incbin "baserom.gba", 0x0F1C88, 0x000000C
	.4byte script_08010B68
	.incbin "baserom.gba", 0x0F1C98, 0x0000010

gUnk_080F1CA8:: @ 080F1CA8
	.incbin "baserom.gba", 0x0F1CA8, 0x0000060

gUnk_080F1D08:: @ 080F1D08
	.incbin "baserom.gba", 0x0F1D08, 0x0000010

gUnk_080F1D18:: @ 080F1D18
	.incbin "baserom.gba", 0x0F1D18, 0x0000008

gUnk_080F1D20:: @ 080F1D20
	.incbin "baserom.gba", 0x0F1D20, 0x0000011

gUnk_080F1D31:: @ 080F1D31
	.incbin "baserom.gba", 0x0F1D31, 0x0000003

gUnk_080F1D34:: @ 080F1D34
	.incbin "baserom.gba", 0x0F1D34, 0x0000014

Room_HouseInteriors2_Stranger:: @ 080F1D48
	.4byte gUnk_080F1C48
	.4byte gUnk_080F1CA8
	.4byte gUnk_080F1D08
	.4byte gUnk_080F1D18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E45C
	.4byte sub_0804E460
	.4byte gUnk_080F1D20
	.4byte gUnk_080F1D34

gUnk_080F1D70:: @ 080F1D70
	.incbin "baserom.gba", 0x0F1D70, 0x0000020

gUnk_080F1D90:: @ 080F1D90
	.incbin "baserom.gba", 0x0F1D90, 0x000000C
	.4byte script_08012024
	.incbin "baserom.gba", 0x0F1DA0, 0x0000010

gUnk_080F1DB0:: @ 080F1DB0
	.incbin "baserom.gba", 0x0F1DB0, 0x000000C
	.4byte script_080120B0
	.incbin "baserom.gba", 0x0F1DC0, 0x0000010

gUnk_080F1DD0:: @ 080F1DD0
	.incbin "baserom.gba", 0x0F1DD0, 0x000000C
	.4byte script_0801213C
	.incbin "baserom.gba", 0x0F1DE0, 0x0000010

gUnk_080F1DF0:: @ 080F1DF0
	.incbin "baserom.gba", 0x0F1DF0, 0x000002D

gUnk_080F1E1D:: @ 080F1E1D
	.incbin "baserom.gba", 0x0F1E1D, 0x0000043

gUnk_080F1E60:: @ 080F1E60
	.incbin "baserom.gba", 0x0F1E60, 0x0000010

gUnk_080F1E70:: @ 080F1E70
	.incbin "baserom.gba", 0x0F1E70, 0x0000008

gUnk_080F1E78:: @ 080F1E78
	.incbin "baserom.gba", 0x0F1E78, 0x0000014

gUnk_080F1E8C:: @ 080F1E8C
	.incbin "baserom.gba", 0x0F1E8C, 0x0000014

gUnk_080F1EA0:: @ 080F1EA0
	.incbin "baserom.gba", 0x0F1EA0, 0x0000020

Room_HouseInteriors2_WestOracle:: @ 080F1EC0
	.4byte gUnk_080F1D70
	.4byte gUnk_080F1DF0
	.4byte gUnk_080F1E60
	.4byte gUnk_080F1E70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E484
	.4byte sub_0804E488
	.4byte gUnk_080F1E78
	.4byte gUnk_080F1EA0
	.4byte gUnk_080F1E8C

gUnk_080F1EEC:: @ 080F1EEC
	.incbin "baserom.gba", 0x0F1EEC, 0x0000020

gUnk_080F1F0C:: @ 080F1F0C
	.incbin "baserom.gba", 0x0F1F0C, 0x0000090

gUnk_080F1F9C:: @ 080F1F9C
	.incbin "baserom.gba", 0x0F1F9C, 0x0000010

gUnk_080F1FAC:: @ 080F1FAC
	.incbin "baserom.gba", 0x0F1FAC, 0x0000008

gUnk_080F1FB4:: @ 080F1FB4
	.incbin "baserom.gba", 0x0F1FB4, 0x0000014

gUnk_080F1FC8:: @ 080F1FC8
	.incbin "baserom.gba", 0x0F1FC8, 0x0000014

gUnk_080F1FDC:: @ 080F1FDC
	.incbin "baserom.gba", 0x0F1FDC, 0x0000010

Room_HouseInteriors2_2:: @ 080F1FEC
	.4byte gUnk_080F1EEC
	.4byte gUnk_080F1F0C
	.4byte gUnk_080F1F9C
	.4byte gUnk_080F1FAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E4D0
	.4byte nullsub_375
	.4byte gUnk_080F1FB4
	.4byte gUnk_080F1FC8
	.4byte gUnk_080F1FDC

gUnk_080F2018:: @ 080F2018
	.incbin "baserom.gba", 0x0F2018, 0x0000018

gUnk_080F2030:: @ 080F2030
	.incbin "baserom.gba", 0x0F2030, 0x0000008

gUnk_080F2038:: @ 080F2038
	.incbin "baserom.gba", 0x0F2038, 0x0000080

gUnk_080F20B8:: @ 080F20B8
	.incbin "baserom.gba", 0x0F20B8, 0x0000010

gUnk_080F20C8:: @ 080F20C8
	.incbin "baserom.gba", 0x0F20C8, 0x0000008

gUnk_080F20D0:: @ 080F20D0
	.incbin "baserom.gba", 0x0F20D0, 0x0000014

gUnk_080F20E4:: @ 080F20E4
	.incbin "baserom.gba", 0x0F20E4, 0x0000014

gUnk_080F20F8:: @ 080F20F8
	.incbin "baserom.gba", 0x0F20F8, 0x0000007

gUnk_080F20FF:: @ 080F20FF
	.incbin "baserom.gba", 0x0F20FF, 0x0000009

Room_HouseInteriors2_3:: @ 080F2108
	.4byte gUnk_080F2018
	.4byte gUnk_080F2038
	.4byte gUnk_080F20B8
	.4byte gUnk_080F20C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E4D8
	.4byte nullsub_376
	.4byte gUnk_080F20D0
	.4byte gUnk_080F20E4
	.4byte gUnk_080F20F8

gUnk_080F2134:: @ 080F2134
	.incbin "baserom.gba", 0x0F2134, 0x000000C
	.4byte script_0800EAA4
	.incbin "baserom.gba", 0x0F2144, 0x0000030

gUnk_080F2174:: @ 080F2174
	.incbin "baserom.gba", 0x0F2174, 0x0000020

gUnk_080F2194:: @ 080F2194
	.incbin "baserom.gba", 0x0F2194, 0x0000020

gUnk_080F21B4:: @ 080F21B4
	.incbin "baserom.gba", 0x0F21B4, 0x000000B

gUnk_080F21BF:: @ 080F21BF
	.incbin "baserom.gba", 0x0F21BF, 0x0000015

gUnk_080F21D4:: @ 080F21D4
	.incbin "baserom.gba", 0x0F21D4, 0x000005E

gUnk_080F2232:: @ 080F2232
	.incbin "baserom.gba", 0x0F2232, 0x0000032

gUnk_080F2264:: @ 080F2264
	.incbin "baserom.gba", 0x0F2264, 0x0000010

gUnk_080F2274:: @ 080F2274
	.incbin "baserom.gba", 0x0F2274, 0x0000008

gUnk_080F227C:: @ 080F227C
	.incbin "baserom.gba", 0x0F227C, 0x0000014

gUnk_080F2290:: @ 080F2290
	.incbin "baserom.gba", 0x0F2290, 0x0000014

gUnk_080F22A4:: @ 080F22A4
	.incbin "baserom.gba", 0x0F22A4, 0x0000014

gUnk_080F22B8:: @ 080F22B8
	.incbin "baserom.gba", 0x0F22B8, 0x0000018

gUnk_080F22D0:: @ 080F22D0
	.incbin "baserom.gba", 0x0F22D0, 0x0000010

gUnk_080F22E0:: @ 080F22E0
	.incbin "baserom.gba", 0x0F22E0, 0x0000014

Room_HouseInteriors2_DrLeft:: @ 080F22F4
	.4byte gUnk_080F2134
	.4byte gUnk_080F21D4
	.4byte gUnk_080F2264
	.4byte gUnk_080F2274
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E4E0
	.4byte sub_0804E4E4
	.4byte gUnk_080F227C
	.4byte gUnk_080F2290
	.4byte gUnk_080F22A4
	.4byte gUnk_080F22D0
	.4byte gUnk_080F22E0
	.4byte gUnk_080F22B8

gUnk_080F232C:: @ 080F232C
	.incbin "baserom.gba", 0x0F232C, 0x0000010

gUnk_080F233C:: @ 080F233C
	.incbin "baserom.gba", 0x0F233C, 0x0000030

gUnk_080F236C:: @ 080F236C
	.incbin "baserom.gba", 0x0F236C, 0x000000C
	.4byte script_0800EB2C
	.incbin "baserom.gba", 0x0F237C, 0x0000010

gUnk_080F238C:: @ 080F238C
	.incbin "baserom.gba", 0x0F238C, 0x000000C
	.4byte script_0800EB64
	.incbin "baserom.gba", 0x0F239C, 0x000000C
	.4byte script_0800EC14
	.incbin "baserom.gba", 0x0F23AC, 0x0000010

gUnk_080F23BC:: @ 080F23BC
	.incbin "baserom.gba", 0x0F23BC, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0F23CC, 0x0000010

gUnk_080F23DC:: @ 080F23DC
	.incbin "baserom.gba", 0x0F23DC, 0x0000080

gUnk_080F245C:: @ 080F245C
	.incbin "baserom.gba", 0x0F245C, 0x0000010

gUnk_080F246C:: @ 080F246C
	.incbin "baserom.gba", 0x0F246C, 0x0000008

gUnk_080F2474:: @ 080F2474
	.incbin "baserom.gba", 0x0F2474, 0x0000014

gUnk_080F2488:: @ 080F2488
	.incbin "baserom.gba", 0x0F2488, 0x0000010

gUnk_080F2498:: @ 080F2498
	.incbin "baserom.gba", 0x0F2498, 0x0000018

gUnk_080F24B0:: @ 080F24B0
	.incbin "baserom.gba", 0x0F24B0, 0x0000014

gUnk_080F24C4:: @ 080F24C4
	.incbin "baserom.gba", 0x0F24C4, 0x0000014

Room_HouseInteriors2_Romio:: @ 080F24D8
	.4byte gUnk_080F232C
	.4byte gUnk_080F23DC
	.4byte gUnk_080F245C
	.4byte gUnk_080F246C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E528
	.4byte sub_0804E52C
	.4byte gUnk_080F2488
	.4byte gUnk_080F2498
	.4byte gUnk_080F24B0
	.4byte gUnk_080F24C4
	.4byte gUnk_080F236C
	.4byte gUnk_080F2474

gUnk_080F2510:: @ 080F2510
	.incbin "baserom.gba", 0x0F2510, 0x0000018

gUnk_080F2528:: @ 080F2528
	.incbin "baserom.gba", 0x0F2528, 0x0000009

gUnk_080F2531:: @ 080F2531
	.incbin "baserom.gba", 0x0F2531, 0x000003F

gUnk_080F2570:: @ 080F2570
	.incbin "baserom.gba", 0x0F2570, 0x000000C
	.4byte script_0800EC54
	.incbin "baserom.gba", 0x0F2580, 0x0000010

gUnk_080F2590:: @ 080F2590
	.incbin "baserom.gba", 0x0F2590, 0x000000C
	.4byte script_0800EBC0
	.incbin "baserom.gba", 0x0F25A0, 0x000000C
	.4byte script_0800EC54
	.incbin "baserom.gba", 0x0F25B0, 0x0000010

gUnk_080F25C0:: @ 080F25C0
	.incbin "baserom.gba", 0x0F25C0, 0x0000040

gUnk_080F2600:: @ 080F2600
	.incbin "baserom.gba", 0x0F2600, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0F2610, 0x0000010

gUnk_080F2620:: @ 080F2620
	.incbin "baserom.gba", 0x0F2620, 0x0000050

gUnk_080F2670:: @ 080F2670
	.incbin "baserom.gba", 0x0F2670, 0x0000010

gUnk_080F2680:: @ 080F2680
	.incbin "baserom.gba", 0x0F2680, 0x0000018

gUnk_080F2698:: @ 080F2698
	.incbin "baserom.gba", 0x0F2698, 0x0000010

gUnk_080F26A8:: @ 080F26A8
	.incbin "baserom.gba", 0x0F26A8, 0x0000014

gUnk_080F26BC:: @ 080F26BC
	.incbin "baserom.gba", 0x0F26BC, 0x0000010

Room_HouseInteriors2_Julietta:: @ 080F26CC
	.4byte gUnk_080F2510
	.4byte gUnk_080F2620
	.4byte gUnk_080F2670
	.4byte gUnk_080F2680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E570
	.4byte sub_0804E574
	.4byte gUnk_080F2698
	.4byte gUnk_080F26A8
	.4byte gUnk_080F26BC

gUnk_080F26F8:: @ 080F26F8
	.incbin "baserom.gba", 0x0F26F8, 0x0000020

gUnk_080F2718:: @ 080F2718
	.incbin "baserom.gba", 0x0F2718, 0x000000C
	.4byte script_08012270
	.incbin "baserom.gba", 0x0F2728, 0x0000011

gUnk_080F2739:: @ 080F2739
	.incbin "baserom.gba", 0x0F2739, 0x000001F

gUnk_080F2758:: @ 080F2758
	.incbin "baserom.gba", 0x0F2758, 0x000000C
	.4byte script_0801232C
	.incbin "baserom.gba", 0x0F2768, 0x0000030

gUnk_080F2798:: @ 080F2798
	.incbin "baserom.gba", 0x0F2798, 0x000000C
	.4byte script_08012E88
	.incbin "baserom.gba", 0x0F27A8, 0x0000030

gUnk_080F27D8:: @ 080F27D8
	.incbin "baserom.gba", 0x0F27D8, 0x000000C
	.4byte script_08012E88
	.incbin "baserom.gba", 0x0F27E8, 0x0000030

gUnk_080F2818:: @ 080F2818
	.incbin "baserom.gba", 0x0F2818, 0x0000030

gUnk_080F2848:: @ 080F2848
	.incbin "baserom.gba", 0x0F2848, 0x0000010

gUnk_080F2858:: @ 080F2858
	.incbin "baserom.gba", 0x0F2858, 0x0000008

gUnk_080F2860:: @ 080F2860
	.incbin "baserom.gba", 0x0F2860, 0x0000010

gUnk_080F2870:: @ 080F2870
	.incbin "baserom.gba", 0x0F2870, 0x0000018

Room_HouseInteriors2_Percy:: @ 080F2888
	.4byte gUnk_080F26F8
	.4byte gUnk_080F2818
	.4byte gUnk_080F2848
	.4byte gUnk_080F2858
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E614
	.4byte sub_0804E618
	.4byte gUnk_080F2870
	.4byte gUnk_080F2718
	.4byte gUnk_080F2758

gUnk_080F28B4:: @ 080F28B4
	.incbin "baserom.gba", 0x0F28B4, 0x0000020

gUnk_080F28D4:: @ 080F28D4
	.incbin "baserom.gba", 0x0F28D4, 0x000000C
	.4byte script_08012024
	.incbin "baserom.gba", 0x0F28E4, 0x0000010

gUnk_080F28F4:: @ 080F28F4
	.incbin "baserom.gba", 0x0F28F4, 0x000000C
	.4byte script_080120B0
	.incbin "baserom.gba", 0x0F2904, 0x0000010

gUnk_080F2914:: @ 080F2914
	.incbin "baserom.gba", 0x0F2914, 0x000000C
	.4byte script_0801213C
	.incbin "baserom.gba", 0x0F2924, 0x0000010

gUnk_080F2934:: @ 080F2934
	.incbin "baserom.gba", 0x0F2934, 0x0000080

gUnk_080F29B4:: @ 080F29B4
	.incbin "baserom.gba", 0x0F29B4, 0x0000010

gUnk_080F29C4:: @ 080F29C4
	.incbin "baserom.gba", 0x0F29C4, 0x0000008

Room_HouseInteriors2_EastOracle:: @ 080F29CC
	.4byte gUnk_080F28B4
	.4byte gUnk_080F2934
	.4byte gUnk_080F29B4
	.4byte gUnk_080F29C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E680
	.4byte sub_0804E684

gUnk_080F29EC:: @ 080F29EC
	.incbin "baserom.gba", 0x0F29EC, 0x0000030

gUnk_080F2A1C:: @ 080F2A1C
	.incbin "baserom.gba", 0x0F2A1C, 0x0000024

gUnk_080F2A40:: @ 080F2A40
	.incbin "baserom.gba", 0x0F2A40, 0x000002C

gUnk_080F2A6C:: @ 080F2A6C
	.incbin "baserom.gba", 0x0F2A6C, 0x0000010

gUnk_080F2A7C:: @ 080F2A7C
	.incbin "baserom.gba", 0x0F2A7C, 0x0000008

gUnk_080F2A84:: @ 080F2A84
	.incbin "baserom.gba", 0x0F2A84, 0x0000018

Room_HouseInteriors2_A:: @ 080F2A9C
	.4byte gUnk_080F29EC
	.4byte gUnk_080F2A1C
	.4byte gUnk_080F2A6C
	.4byte gUnk_080F2A7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E6CC9
	.4byte nullsub_377
	.4byte gUnk_080F2A84

gUnk_080F2AC0:: @ 080F2AC0
	.incbin "baserom.gba", 0x0F2AC0, 0x0000030

gUnk_080F2AF0:: @ 080F2AF0
	.incbin "baserom.gba", 0x0F2AF0, 0x0000050

gUnk_080F2B40:: @ 080F2B40
	.incbin "baserom.gba", 0x0F2B40, 0x0000010

gUnk_080F2B50:: @ 080F2B50
	.incbin "baserom.gba", 0x0F2B50, 0x0000008

gUnk_080F2B58:: @ 080F2B58
	.incbin "baserom.gba", 0x0F2B58, 0x0000020

Room_HouseInteriors2_B:: @ 080F2B78
	.4byte gUnk_080F2AC0
	.4byte gUnk_080F2AF0
	.4byte gUnk_080F2B40
	.4byte gUnk_080F2B50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E6D4
	.4byte nullsub_378
	.4byte gUnk_080F2B58

gUnk_080F2B9C:: @ 080F2B9C
	.incbin "baserom.gba", 0x0F2B9C, 0x00000CC
	.4byte script_08010120
	.incbin "baserom.gba", 0x0F2C6C, 0x0000010

gUnk_080F2C7C:: @ 080F2C7C
	.incbin "baserom.gba", 0x0F2C7C, 0x00000A0

gUnk_080F2D1C:: @ 080F2D1C
	.incbin "baserom.gba", 0x0F2D1C, 0x0000010

gUnk_080F2D2C:: @ 080F2D2C
	.incbin "baserom.gba", 0x0F2D2C, 0x0000008

gUnk_080F2D34:: @ 080F2D34
	.incbin "baserom.gba", 0x0F2D34, 0x0000014

gUnk_080F2D48:: @ 080F2D48
	.incbin "baserom.gba", 0x0F2D48, 0x0000010

gUnk_080F2D58:: @ 080F2D58
	.incbin "baserom.gba", 0x0F2D58, 0x0000010

gUnk_080F2D68:: @ 080F2D68
	.incbin "baserom.gba", 0x0F2D68, 0x0000014

Room_HouseInteriors2_Cucco:: @ 080F2D7C
	.4byte gUnk_080F2B9C
	.4byte gUnk_080F2C7C
	.4byte gUnk_080F2D1C
	.4byte gUnk_080F2D2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E6DC
	.4byte nullsub_379
	.4byte gUnk_080F2D48
	.4byte gUnk_080F2D58
	.4byte gUnk_080F2D68
	.4byte gUnk_080F2D34

gUnk_080F2DAC:: @ 080F2DAC
	.incbin "baserom.gba", 0x0F2DAC, 0x0000020

gUnk_080F2DCC:: @ 080F2DCC
	.incbin "baserom.gba", 0x0F2DCC, 0x0000060

gUnk_080F2E2C:: @ 080F2E2C
	.incbin "baserom.gba", 0x0F2E2C, 0x0000020

gUnk_080F2E4C:: @ 080F2E4C
	.incbin "baserom.gba", 0x0F2E4C, 0x0000010

gUnk_080F2E5C:: @ 080F2E5C
	.incbin "baserom.gba", 0x0F2E5C, 0x0000008

Room_HouseInteriors2_LinksHouseEntrance:: @ 080F2E64
	.4byte gUnk_080F2DAC
	.4byte gUnk_080F2DCC
	.4byte gUnk_080F2E4C
	.4byte gUnk_080F2E5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E6E4
	.4byte sub_0804E6E8

gUnk_080F2E84:: @ 080F2E84
	.incbin "baserom.gba", 0x0F2E84, 0x0000010

gUnk_080F2E94:: @ 080F2E94
	.incbin "baserom.gba", 0x0F2E94, 0x000000C
	.4byte script_08009B78
	.incbin "baserom.gba", 0x0F2EA4, 0x000000C
	.4byte script_08009C68
	.incbin "baserom.gba", 0x0F2EB4, 0x0000010

gUnk_080F2EC4:: @ 080F2EC4
	.incbin "baserom.gba", 0x0F2EC4, 0x000000C
	.4byte script_08009DB0
	.incbin "baserom.gba", 0x0F2ED4, 0x0000010

gUnk_080F2EE4:: @ 080F2EE4
	.incbin "baserom.gba", 0x0F2EE4, 0x0000090

gUnk_080F2F74:: @ 080F2F74
	.incbin "baserom.gba", 0x0F2F74, 0x0000010

gUnk_080F2F84:: @ 080F2F84
	.incbin "baserom.gba", 0x0F2F84, 0x0000010

Room_HouseInteriors2_LinksHouseSmith:: @ 080F2F94
	.4byte gUnk_080F2E84
	.4byte gUnk_080F2EE4
	.4byte gUnk_080F2F74
	.4byte gUnk_080F2F84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E728
	.4byte sub_0804E72C

gUnk_080F2FB4:: @ 080F2FB4
	.incbin "baserom.gba", 0x0F2FB4, 0x0000020

gUnk_080F2FD4:: @ 080F2FD4
	.incbin "baserom.gba", 0x0F2FD4, 0x000000C
	.4byte script_080095CC
	.incbin "baserom.gba", 0x0F2FE4, 0x0000010

gUnk_080F2FF4:: @ 080F2FF4
	.incbin "baserom.gba", 0x0F2FF4, 0x0000070

gUnk_080F3064:: @ 080F3064
	.incbin "baserom.gba", 0x0F3064, 0x0000010

gUnk_080F3074:: @ 080F3074
	.incbin "baserom.gba", 0x0F3074, 0x0000008

Room_HouseInteriors2_Dampe:: @ 080F307C
	.4byte gUnk_080F2FB4
	.4byte gUnk_080F2FF4
	.4byte gUnk_080F3064
	.4byte gUnk_080F3074
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E778
	.4byte sub_0804E77C

gUnk_080F309C:: @ 080F309C
	.incbin "baserom.gba", 0x0F309C, 0x000001C

gUnk_080F30B8:: @ 080F30B8
	.4byte script_0800B5C4
	.incbin "baserom.gba", 0x0F30BC, 0x0000010

gUnk_080F30CC:: @ 080F30CC
	.incbin "baserom.gba", 0x0F30CC, 0x0000020

gUnk_080F30EC:: @ 080F30EC
	.incbin "baserom.gba", 0x0F30EC, 0x000000E

gUnk_080F30FA:: @ 080F30FA
	.incbin "baserom.gba", 0x0F30FA, 0x0000052

gUnk_080F314C:: @ 080F314C
	.incbin "baserom.gba", 0x0F314C, 0x0000010

gUnk_080F315C:: @ 080F315C
	.incbin "baserom.gba", 0x0F315C, 0x0000008

gUnk_080F3164:: @ 080F3164
	.incbin "baserom.gba", 0x0F3164, 0x0000010

Room_HouseInteriors2_Stockwell:: @ 080F3174
	.4byte gUnk_080F309C
	.4byte gUnk_080F30EC
	.4byte gUnk_080F314C
	.4byte gUnk_080F315C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E7A0
	.4byte sub_0804E7A4
	.4byte gUnk_080F3164

gUnk_080F3198:: @ 080F3198
	.incbin "baserom.gba", 0x0F3198, 0x0000040

gUnk_080F31D8:: @ 080F31D8
	.incbin "baserom.gba", 0x0F31D8, 0x000000C
	.4byte script_08009DEC
	.incbin "baserom.gba", 0x0F31E8, 0x0000010

gUnk_080F31F8:: @ 080F31F8
	.incbin "baserom.gba", 0x0F31F8, 0x0000020

gUnk_080F3218:: @ 080F3218
	.incbin "baserom.gba", 0x0F3218, 0x0000010

gUnk_080F3228:: @ 080F3228
	.incbin "baserom.gba", 0x0F3228, 0x0000008

Room_HouseInteriors2_LinksHouseBedroom:: @ 080F3230
	.4byte gUnk_080F3198
	.4byte gUnk_080F31F8
	.4byte gUnk_080F3218
	.4byte gUnk_080F3228
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E7D8
	.4byte sub_0804E7DC

gUnk_080F3250:: @ 080F3250
	.incbin "baserom.gba", 0x0F3250, 0x0000010

gUnk_080F3260:: @ 080F3260
	.incbin "baserom.gba", 0x0F3260, 0x000000C
	.4byte script_08009538
	.incbin "baserom.gba", 0x0F3270, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F3280, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F3290, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F32A0, 0x000001C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F32C0, 0x0000010

gUnk_080F32D0:: @ 080F32D0
	.incbin "baserom.gba", 0x0F32D0, 0x0000090

gUnk_080F3360:: @ 080F3360
	.incbin "baserom.gba", 0x0F3360, 0x0000010

gUnk_080F3370:: @ 080F3370
	.incbin "baserom.gba", 0x0F3370, 0x0000008

gUnk_080F3378:: @ 080F3378
	.incbin "baserom.gba", 0x0F3378, 0x0000014

gUnk_080F338C:: @ 080F338C
	.incbin "baserom.gba", 0x0F338C, 0x0000014

gUnk_080F33A0:: @ 080F33A0
	.incbin "baserom.gba", 0x0F33A0, 0x0000028

Room_HouseInteriors4_Carpenter:: @ 080F33C8
	.4byte gUnk_080F3250
	.4byte gUnk_080F32D0
	.4byte gUnk_080F3360
	.4byte gUnk_080F3370
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E894
	.4byte sub_0804E898
	.4byte gUnk_080F3378
	.4byte gUnk_080F338C
	.4byte gUnk_080F33A0

gUnk_080F33F4:: @ 080F33F4
	.incbin "baserom.gba", 0x0F33F4, 0x000000C
	.4byte script_080161E8
	.incbin "baserom.gba", 0x0F3404, 0x0000010

gUnk_080F3414:: @ 080F3414
	.incbin "baserom.gba", 0x0F3414, 0x0000080

gUnk_080F3494:: @ 080F3494
	.incbin "baserom.gba", 0x0F3494, 0x0000110

gUnk_080F35A4:: @ 080F35A4
	.incbin "baserom.gba", 0x0F35A4, 0x0000010

gUnk_080F35B4:: @ 080F35B4
	.incbin "baserom.gba", 0x0F35B4, 0x0000010

Room_HouseInteriors4_Swiftblade:: @ 080F35C4
	.4byte gUnk_080F33F4
	.4byte gUnk_080F3414
	.4byte gUnk_080F35A4
	.4byte gUnk_080F35B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E8EC
	.4byte sub_0804E8F0

gUnk_080F35E4:: @ 080F35E4
	.incbin "baserom.gba", 0x0F35E4, 0x0000020

gUnk_080F3604:: @ 080F3604
	.incbin "baserom.gba", 0x0F3604, 0x000000C
	.4byte script_08014EF8
	.incbin "baserom.gba", 0x0F3614, 0x0000010

gUnk_080F3624:: @ 080F3624
	.incbin "baserom.gba", 0x0F3624, 0x00000C0

gUnk_080F36E4:: @ 080F36E4
	.incbin "baserom.gba", 0x0F36E4, 0x0000010

gUnk_080F36F4:: @ 080F36F4
	.incbin "baserom.gba", 0x0F36F4, 0x0000008

gUnk_080F36FC:: @ 080F36FC
	.incbin "baserom.gba", 0x0F36FC, 0x0000030

gUnk_080F372C:: @ 080F372C
	.incbin "baserom.gba", 0x0F372C, 0x0000014

gUnk_080F3740:: @ 080F3740
	.incbin "baserom.gba", 0x0F3740, 0x0000018

Room_HouseInteriors4_RanchHouseWest:: @ 080F3758
	.4byte gUnk_080F35E4
	.4byte gUnk_080F3624
	.4byte gUnk_080F36E4
	.4byte gUnk_080F36F4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E8F8
	.4byte sub_0804E8FC
	.4byte gUnk_080F372C
	.4byte gUnk_080F3740

gUnk_080F3780:: @ 080F3780
	.incbin "baserom.gba", 0x0F3780, 0x000003C
	.4byte script_08014E50
	.incbin "baserom.gba", 0x0F37C0, 0x0000010

gUnk_080F37D0:: @ 080F37D0
	.incbin "baserom.gba", 0x0F37D0, 0x000000C
	.4byte script_08014ECC
	.incbin "baserom.gba", 0x0F37E0, 0x0000010

gUnk_080F37F0:: @ 080F37F0
	.incbin "baserom.gba", 0x0F37F0, 0x00000B4

gUnk_080F38A4:: @ 080F38A4
	.incbin "baserom.gba", 0x0F38A4, 0x000001C

gUnk_080F38C0:: @ 080F38C0
	.incbin "baserom.gba", 0x0F38C0, 0x0000010

gUnk_080F38D0:: @ 080F38D0
	.incbin "baserom.gba", 0x0F38D0, 0x0000008

gUnk_080F38D8:: @ 080F38D8
	.incbin "baserom.gba", 0x0F38D8, 0x0000014

gUnk_080F38EC:: @ 080F38EC
	.incbin "baserom.gba", 0x0F38EC, 0x0000008

Room_HouseInteriors4_RanchHouseEast:: @ 080F38F4
	.4byte gUnk_080F3780
	.4byte gUnk_080F37F0
	.4byte gUnk_080F38C0
	.4byte gUnk_080F38D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E92C
	.4byte sub_0804E930
	.4byte gUnk_080F38D8
	.4byte gUnk_080F38EC

gUnk_080F391C:: @ 080F391C
	.incbin "baserom.gba", 0x0F391C, 0x0000020

gUnk_080F393C:: @ 080F393C
	.incbin "baserom.gba", 0x0F393C, 0x0000090

gUnk_080F39CC:: @ 080F39CC
	.incbin "baserom.gba", 0x0F39CC, 0x0000010

gUnk_080F39DC:: @ 080F39DC
	.incbin "baserom.gba", 0x0F39DC, 0x0000008

gUnk_080F39E4:: @ 080F39E4
	.incbin "baserom.gba", 0x0F39E4, 0x0000010

Room_HouseInteriors4_FarmHouse:: @ 080F39F4
	.4byte gUnk_080F391C
	.4byte gUnk_080F393C
	.4byte gUnk_080F39CC
	.4byte gUnk_080F39DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E948
	.4byte nullsub_380
	.4byte gUnk_080F39E4

gUnk_080F3A18:: @ 080F3A18
	.incbin "baserom.gba", 0x0F3A18, 0x0000030

gUnk_080F3A48:: @ 080F3A48
	.incbin "baserom.gba", 0x0F3A48, 0x0000020

gUnk_080F3A68:: @ 080F3A68
	.incbin "baserom.gba", 0x0F3A68, 0x00000B0

gUnk_080F3B18:: @ 080F3B18
	.incbin "baserom.gba", 0x0F3B18, 0x0000010

gUnk_080F3B28:: @ 080F3B28
	.incbin "baserom.gba", 0x0F3B28, 0x0000018

gUnk_080F3B40:: @ 080F3B40
	.incbin "baserom.gba", 0x0F3B40, 0x0000010

gUnk_080F3B50:: @ 080F3B50
	.incbin "baserom.gba", 0x0F3B50, 0x0000014

gUnk_080F3B64:: @ 080F3B64
	.incbin "baserom.gba", 0x0F3B64, 0x0000010

gUnk_080F3B74:: @ 080F3B74
	.incbin "baserom.gba", 0x0F3B74, 0x0000050

Room_HouseInteriors4_Mayor:: @ 080F3BC4
	.4byte gUnk_080F3A18
	.4byte gUnk_080F3A68
	.4byte gUnk_080F3B18
	.4byte gUnk_080F3B28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E950
	.4byte sub_0804E954
	.4byte gUnk_080F3B40
	.4byte gUnk_080F3B50
	.4byte gUnk_080F3B64
	.4byte gUnk_080F3B74

gUnk_080F3BF4:: @ 080F3BF4
	.incbin "baserom.gba", 0x0F3BF4, 0x0000050

gUnk_080F3C44:: @ 080F3C44
	.incbin "baserom.gba", 0x0F3C44, 0x000000C
	.4byte script_080168F4
	.incbin "baserom.gba", 0x0F3C54, 0x0000010

gUnk_080F3C64:: @ 080F3C64
	.incbin "baserom.gba", 0x0F3C64, 0x000000C
	.4byte script_0800AFB0
	.incbin "baserom.gba", 0x0F3C74, 0x000000C
	.4byte script_08012360
	.incbin "baserom.gba", 0x0F3C84, 0x0000010

gUnk_080F3C94:: @ 080F3C94
	.incbin "baserom.gba", 0x0F3C94, 0x0000020

gUnk_080F3CB4:: @ 080F3CB4
	.incbin "baserom.gba", 0x0F3CB4, 0x0000090

gUnk_080F3D44:: @ 080F3D44
	.incbin "baserom.gba", 0x0F3D44, 0x0000160

gUnk_080F3EA4:: @ 080F3EA4
	.incbin "baserom.gba", 0x0F3EA4, 0x0000140

gUnk_080F3FE4:: @ 080F3FE4
	.incbin "baserom.gba", 0x0F3FE4, 0x0000010

gUnk_080F3FF4:: @ 080F3FF4
	.incbin "baserom.gba", 0x0F3FF4, 0x0000020

gUnk_080F4014:: @ 080F4014
	.incbin "baserom.gba", 0x0F4014, 0x0000014

gUnk_080F4028:: @ 080F4028
	.incbin "baserom.gba", 0x0F4028, 0x0000014

gUnk_080F403C:: @ 080F403C
	.incbin "baserom.gba", 0x0F403C, 0x0000014

gUnk_080F4050:: @ 080F4050
	.incbin "baserom.gba", 0x0F4050, 0x0000010

gUnk_080F4060:: @ 080F4060
	.incbin "baserom.gba", 0x0F4060, 0x0000014

Room_LakeHylia_Main:: @ 080F4074
	.4byte gUnk_080F3BF4
	.4byte gUnk_080F3CB4
	.4byte gUnk_080F3D44
	.4byte gUnk_080F3FE4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804E998
	.4byte sub_0804E9D0
	.4byte gUnk_080F3FF4
	.4byte gUnk_080F4014
	.4byte gUnk_080F4028
	.4byte gUnk_080F403C
	.4byte gUnk_080F4050
	.4byte gUnk_080F4060

gUnk_080F40AC:: @ 080F40AC
	.incbin "baserom.gba", 0x0F40AC, 0x0000010

gUnk_080F40BC:: @ 080F40BC
	.incbin "baserom.gba", 0x0F40BC, 0x0000030

gUnk_080F40EC:: @ 080F40EC
	.incbin "baserom.gba", 0x0F40EC, 0x00000A0

gUnk_080F418C:: @ 080F418C
	.incbin "baserom.gba", 0x0F418C, 0x0000008

gUnk_080F4194:: @ 080F4194
	.incbin "baserom.gba", 0x0F4194, 0x0000010

gUnk_080F41A4:: @ 080F41A4
	.incbin "baserom.gba", 0x0F41A4, 0x0000014

Room_LakeHylia_Beanstalk:: @ 080F41B8
	.4byte gUnk_080F40AC
	.4byte gUnk_080F40BC
	.4byte gUnk_080F40EC
	.4byte gUnk_080F418C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB04
	.4byte nullsub_381
	.4byte gUnk_080F4194
	.4byte gUnk_080F41A4

gUnk_080F41E0:: @ 080F41E0
	.incbin "baserom.gba", 0x0F41E0, 0x000000C
	.4byte script_0800B964
	.incbin "baserom.gba", 0x0F41F0, 0x0000030

gUnk_080F4220:: @ 080F4220
	.incbin "baserom.gba", 0x0F4220, 0x0000060

gUnk_080F4280:: @ 080F4280
	.incbin "baserom.gba", 0x0F4280, 0x0000020

Room_LakeWoodsCave_Main:: @ 080F42A0
	.4byte gUnk_080F41E0
	.4byte 0x00000000
	.4byte gUnk_080F4220
	.4byte gUnk_080F4280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB0C
	.4byte nullsub_382

gUnk_080F42C0:: @ 080F42C0
	.incbin "baserom.gba", 0x0F42C0, 0x0000020

gUnk_080F42E0:: @ 080F42E0
	.incbin "baserom.gba", 0x0F42E0, 0x0000010

gUnk_080F42F0:: @ 080F42F0
	.incbin "baserom.gba", 0x0F42F0, 0x0000010

Room_HyliaDigCaves_Middle:: @ 080F4300
	.4byte gUnk_080F42C0
	.4byte 0x00000000
	.4byte gUnk_080F42E0
	.4byte gUnk_080F42F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB14
	.4byte nullsub_383

gUnk_080F4320:: @ 080F4320
	.incbin "baserom.gba", 0x0F4320, 0x000000C
	.4byte script_0800B964
	.incbin "baserom.gba", 0x0F4330, 0x0000050

gUnk_080F4380:: @ 080F4380
	.incbin "baserom.gba", 0x0F4380, 0x0000060

gUnk_080F43E0:: @ 080F43E0
	.incbin "baserom.gba", 0x0F43E0, 0x0000048

Room_HyliaDigCaves_North:: @ 080F4428
	.4byte gUnk_080F4320
	.4byte 0x00000000
	.4byte gUnk_080F4380
	.4byte gUnk_080F43E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB1
	.4byte nullsub_384

gUnk_080F4448:: @ 080F4448
	.incbin "baserom.gba", 0x0F4448, 0x0000020

gUnk_080F4468:: @ 080F4468
	.incbin "baserom.gba", 0x0F4468, 0x0000020

gUnk_080F4488:: @ 080F4488
	.incbin "baserom.gba", 0x0F4488, 0x0000018

Room_CastorWildsDigCave_Main:: @ 080F44A0
	.4byte gUnk_080F4448
	.4byte 0x00000000
	.4byte gUnk_080F4468
	.4byte gUnk_080F4488
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB24
	.4byte nullsub_385

gUnk_080F44C0:: @ 080F44C0
	.incbin "baserom.gba", 0x0F44C0, 0x0000020

gUnk_080F44E0:: @ 080F44E0
	.incbin "baserom.gba", 0x0F44E0, 0x0000040

gUnk_080F4520:: @ 080F4520
	.incbin "baserom.gba", 0x0F4520, 0x0000020

Room_HyruleDigCaves_Main:: @ 080F4540
	.4byte gUnk_080F44C0
	.4byte 0x00000000
	.4byte gUnk_080F44E0
	.4byte gUnk_080F4520
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB2C
	.4byte nullsub_386

gUnk_080F4560:: @ 080F4560
	.incbin "baserom.gba", 0x0F4560, 0x000000C
	.4byte script_0800B964
	.incbin "baserom.gba", 0x0F4570, 0x0000030

gUnk_080F45A0:: @ 080F45A0
	.incbin "baserom.gba", 0x0F45A0, 0x0000090

gUnk_080F4630:: @ 080F4630
	.incbin "baserom.gba", 0x0F4630, 0x0000008

Room_CrenelDigCave_Main:: @ 080F4638
	.4byte gUnk_080F4560
	.4byte 0x00000000
	.4byte gUnk_080F45A0
	.4byte gUnk_080F4630
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB34
	.4byte nullsub_387

gUnk_080F4658:: @ 080F4658
	.incbin "baserom.gba", 0x0F4658, 0x000000C
	.4byte script_0800B964
	.incbin "baserom.gba", 0x0F4668, 0x0000030

gUnk_080F4698:: @ 080F4698
	.incbin "baserom.gba", 0x0F4698, 0x0000030

gUnk_080F46C8:: @ 080F46C8
	.incbin "baserom.gba", 0x0F46C8, 0x0000008

Room_DigCaves1_HyruleFieldFarm:: @ 080F46D0
	.4byte gUnk_080F4658
	.4byte 0x00000000
	.4byte gUnk_080F4698
	.4byte gUnk_080F46C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB3C
	.4byte nullsub_388

gUnk_080F46F0:: @ 080F46F0
	.incbin "baserom.gba", 0x0F46F0, 0x000000C
	.4byte script_0800B964
	.incbin "baserom.gba", 0x0F4700, 0x0000030

gUnk_080F4730:: @ 080F4730
	.incbin "baserom.gba", 0x0F4730, 0x0000030

gUnk_080F4760:: @ 080F4760
	.incbin "baserom.gba", 0x0F4760, 0x0000020

Room_DigCaves1_TrilbyHighlands:: @ 080F4780
	.4byte gUnk_080F46F0
	.4byte 0x00000000
	.4byte gUnk_080F4730
	.4byte gUnk_080F4760
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB44
	.4byte nullsub_389

gUnk_080F47A0:: @ 080F47A0
	.incbin "baserom.gba", 0x0F47A0, 0x0000030

gUnk_080F47D0:: @ 080F47D0
	.incbin "baserom.gba", 0x0F47D0, 0x0000030

gUnk_080F4800:: @ 080F4800
	.incbin "baserom.gba", 0x0F4800, 0x0000020

Room_VeilFallsDigCave_Main:: @ 080F4820
	.4byte gUnk_080F47A0
	.4byte 0x00000000
	.4byte gUnk_080F47D0
	.4byte gUnk_080F4800
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB4C
	.4byte nullsub_390

gUnk_080F4840:: @ 080F4840
	.incbin "baserom.gba", 0x0F4840, 0x0000020

gUnk_080F4860:: @ 080F4860
	.incbin "baserom.gba", 0x0F4860, 0x0000010

gUnk_080F4870:: @ 080F4870
	.incbin "baserom.gba", 0x0F4870, 0x0000010

Room_OuterFortressOfWinds_EntranceHall:: @ 080F4880
	.4byte gUnk_080F4840
	.4byte 0x00000000
	.4byte gUnk_080F4860
	.4byte gUnk_080F4870
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB54
	.4byte nullsub_391

gUnk_080F48A0:: @ 080F48A0
	.incbin "baserom.gba", 0x0F48A0, 0x0000130

gUnk_080F49D0:: @ 080F49D0
	.incbin "baserom.gba", 0x0F49D0, 0x0000090

gUnk_080F4A60:: @ 080F4A60
	.incbin "baserom.gba", 0x0F4A60, 0x0000020

Room_OuterFortressOfWinds_2F:: @ 080F4A80
	.4byte gUnk_080F48A0
	.4byte 0x00000000
	.4byte gUnk_080F49D0
	.4byte gUnk_080F4A60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB6C
	.4byte nullsub_392

gUnk_080F4AA0:: @ 080F4AA0
	.incbin "baserom.gba", 0x0F4AA0, 0x0000030

gUnk_080F4AD0:: @ 080F4AD0
	.incbin "baserom.gba", 0x0F4AD0, 0x0000050

gUnk_080F4B20:: @ 080F4B20
	.incbin "baserom.gba", 0x0F4B20, 0x0000018

Room_OuterFortressOfWinds_3F:: @ 080F4B38
	.4byte gUnk_080F4AA0
	.4byte 0x00000000
	.4byte gUnk_080F4AD0
	.4byte gUnk_080F4B20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB84
	.4byte nullsub_393

gUnk_080F4B58:: @ 080F4B58
	.incbin "baserom.gba", 0x0F4B58, 0x0000030

gUnk_080F4B88:: @ 080F4B88
	.incbin "baserom.gba", 0x0F4B88, 0x0000020

gUnk_080F4BA8:: @ 080F4BA8
	.incbin "baserom.gba", 0x0F4BA8, 0x0000010

gUnk_080F4BB8:: @ 080F4BB8
	.incbin "baserom.gba", 0x0F4BB8, 0x0000020

Room_OuterFortressOfWinds_MoleMitts:: @ 080F4BD8
	.4byte gUnk_080F4B58
	.4byte 0x00000000
	.4byte gUnk_080F4BA8
	.4byte gUnk_080F4BB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EB9C
	.4byte nullsub_394

gUnk_080F4BF8:: @ 080F4BF8
	.incbin "baserom.gba", 0x0F4BF8, 0x0000080

gUnk_080F4C78:: @ 080F4C78
	.incbin "baserom.gba", 0x0F4C78, 0x0000040

gUnk_080F4CB8:: @ 080F4CB8
	.incbin "baserom.gba", 0x0F4CB8, 0x0000010

gUnk_080F4CC8:: @ 080F4CC8
	.incbin "baserom.gba", 0x0F4CC8, 0x0000014

Room_OuterFortressOfWinds_SmallKey:: @ 080F4CDC
	.4byte gUnk_080F4BF8
	.4byte 0x00000000
	.4byte gUnk_080F4C78
	.4byte gUnk_080F4CB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EBBC
	.4byte nullsub_395
	.4byte gUnk_080F4CC8

gEntities_MinishWoods_0:: @ 080F4D00
	object_minish_lilypad x=0x1F8, y=0x3D8, room_property=0x12
	object_minish_lilypad x=0x1A8, y=0x3B8, room_property=0x13
	object_item x=0xC8, y=0x134, item=0x63, flag=0x3C, collision=1
	object_item x=0x198, y=0x2B4, item=0x63, flag=0x3D, collision=1
	entity_list_end

gUnk_080F4D50:: @ 080F4D50
	.incbin "baserom.gba", 0x0F4D50, 0x000000C
	.4byte script_08012480
	.incbin "baserom.gba", 0x0F4D60, 0x0000010

gUnk_080F4D70:: @080F4D70
	.incbin "baserom.gba", 0x0F4D70, 0x000000C
	.4byte script_080126FC
	.incbin "baserom.gba", 0x0F4D80, 0x000000C
	.4byte script_08012BA8
	.incbin "baserom.gba", 0x0F4D90, 0x000000C
	.4byte script_08012BF8
	.incbin "baserom.gba", 0x0F4DA0, 0x0000010

gUnk_080F4DB0:: @ 080F4DB0
	.incbin "baserom.gba", 0x0F4DB0, 0x000000C
	.4byte script_08012C98
	.incbin "baserom.gba", 0x0F4DC0, 0x0000010

gUnk_080F4DD0:: @ 080F4DD0
	.incbin "baserom.gba", 0x0F4DD0, 0x000000C
	.4byte script_08012CD8
	.incbin "baserom.gba", 0x0F4DE0, 0x0000010

gUnk_080F4DF0:: @ 080F4DF0
	.incbin "baserom.gba", 0x0F4DF0, 0x000000C
	.4byte script_08012D18
	.incbin "baserom.gba", 0x0F4E00, 0x0000010

gUnk_080F4E10:: @ 080F4E10
	.incbin "baserom.gba", 0x0F4E10, 0x000000C
	.4byte script_0800B00C
	.incbin "baserom.gba", 0x0F4E20, 0x0000010

gManagers_MinishWoods_0:: @ 080F4E30
	.byte 0x09, 0x18, 0x01, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x0F, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x03, 0x00, 0x03, 0x01, 0x00, 0x00, 0x28, 0x01, 0x70, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x03, 0x00, 0x03, 0x01, 0x00, 0x00, 0x98, 0x03, 0xB0, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x09, 0x0F, 0x06, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x0F, 0x3E, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD8, 0x01, 0x5A, 0x03, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x0F, 0x19, 0x08, 0x02, 0x00, 0x00, 0x00, 0xC0, 0x02, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

gUnk_080F4EB0:: @ 080F4EB0
	.incbin "baserom.gba", 0x0F4EB0, 0x000000C
	.4byte script_0800A910
	.incbin "baserom.gba", 0x0F4EC0, 0x000000C
	.4byte script_0800A964
	.incbin "baserom.gba", 0x0F4ED0, 0x000000C
	.4byte script_0800A988
	.incbin "baserom.gba", 0x0F4EE0, 0x000000C
	.4byte script_0800A9AC
	.incbin "baserom.gba", 0x0F4EF0, 0x000000C
	.4byte script_0800A9D0
	.incbin "baserom.gba", 0x0F4F00, 0x0000010

gUnk_080F4F10:: @ 080F4F10
	.incbin "baserom.gba", 0x0F4F10, 0x0000020

gRoomEnemies_MinishWoods_0:: @ 080F4F30
	enemy_octorok x=0x148, y=0x38, bound_x=0xA0, bound_y=0x20, bound_tile_width=0x1A, bound_tile_height=0x16
	enemy_octorok x=0x118, y=0x98, bound_x=0xA0, bound_y=0x20, bound_tile_width=0x1A, bound_tile_height=0x16
	enemy_octorok x=0x1B8, y=0x1A8, bound_x=0x160, bound_y=0x160, bound_tile_width=0x1C, bound_tile_height=0x14
	enemy_octorok x=0x208, y=0x1F8, bound_x=0x1C0, bound_y=0x1B0, bound_tile_width=0x12, bound_tile_height=0xA
	enemy_octorok x=0x288, y=0x188, bound_x=0x250, bound_y=0x140, bound_tile_width=0xC, bound_tile_height=0x1A
	enemy_octorok x=0x148, y=0x1E8, bound_x=0x120, bound_y=0x180, bound_tile_width=0x10, bound_tile_height=0x12
	enemy_octorok x=0xA8, y=0x198, bound_x=0x30, bound_y=0x180, bound_tile_width=0x1A, bound_tile_height=0xC
	enemy_chuchu x=0x3A0, y=0x1D0, bound_x=0x320, bound_y=0x1D0, bound_tile_width=0x14, bound_tile_height=0xC
	enemy_chuchu x=0x3A0, y=0x250, bound_x=0x330, bound_y=0x200, bound_tile_width=0x12, bound_tile_height=0xE
	enemy_chuchu x=0x340, y=0x270, bound_x=0x320, bound_y=0x240, bound_tile_width=0x20, bound_tile_height=0x12
	enemy_chuchu x=0x380, y=0x2E0, bound_x=0x350, bound_y=0x2B0, bound_tile_width=0xC, bound_tile_height=0xA
	enemy_chuchu x=0x1A8, y=0x2C8, bound_x=0x190, bound_y=0x2B0, bound_tile_width=0xE, bound_tile_height=0x6
	enemy_chuchu x=0x280, y=0x2F0, bound_x=0x240, bound_y=0x2C0, bound_tile_width=0xC, bound_tile_height=0xE
	enemy_chuchu x=0x3B0, y=0x100, bound_x=0x390, bound_y=0xE0, bound_tile_width=0x6, bound_tile_height=0x14
	enemy_chuchu x=0x248, y=0x2D8, bound_x=0x0, bound_y=0x0, bound_tile_width=0x0, bound_tile_height=0x0
	enemy_tree_item x=0x120, y=0x60, unknown=0x5
	enemy_tree_item x=0xE0, y=0xB0, unknown=0x6
	enemy_tree_item x=0x190, y=0x1A0, unknown=0x7
	enemy_tree_item x=0x1B0, y=0x1E0, unknown=0x8
	enemy_tree_item x=0x250, y=0x180, unknown=0x9
	enemy_tree_item x=0x280, y=0x1C0, unknown=0xA
	enemy_tree_item x=0x380, y=0x210, unknown=0xB
	enemy_tree_item x=0x370, y=0x290, unknown=0xC
	entity_list_end

gUnk_080F50B0:: @ 080F50B0
	.incbin "baserom.gba", 0x0F50B0, 0x0000048

gUnk_080F50F8:: @ 080F50F8
	.incbin "baserom.gba", 0x0F50F8, 0x0000028

gUnk_080F5120:: @ 080F5120
	.incbin "baserom.gba", 0x0F5120, 0x0000014

gUnk_080F5134:: @ 080F5134
	.incbin "baserom.gba", 0x0F5134, 0x0000014

gUnk_080F5148:: @ 080F5148
	.incbin "baserom.gba", 0x0F5148, 0x0000014

gUnk_080F515C:: @ 080F515C
	.incbin "baserom.gba", 0x0F515C, 0x0000014

gUnk_080F5170:: @ 080F5170
	.incbin "baserom.gba", 0x0F5170, 0x0000010

gUnk_080F5180:: @ 080F5180
	.incbin "baserom.gba", 0x0F5180, 0x0000014

gUnk_080F5194:: @ 080F5194
	.incbin "baserom.gba", 0x0F5194, 0x000001E

gUnk_080F51B2:: @ 080F51B2
	.incbin "baserom.gba", 0x0F51B2, 0x000001E

gUnk_080F51D0:: @ 080F51D0
	.incbin "baserom.gba", 0x0F51D0, 0x0000020

gUnk_080F51F0:: @ 080F51F0
	.incbin "baserom.gba", 0x0F51F0, 0x0000030

gRoomTiles_MinishWoods_0:: @ 080F5220
	.byte 0x0A, 0x01, 0x36, 0x00, 0x0A, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x37, 0x00, 0x0B, 0x08, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x38, 0x00, 0x83, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x39, 0x00, 0x84, 0x0D, 0x1D, 0x00
	.byte 0x0A, 0x01, 0x3A, 0x00, 0x85, 0x0D, 0x1D, 0x00
	.byte 0x05, 0x00, 0x00, 0x05, 0x6A, 0x01, 0x05, 0x06
	.byte 0x05, 0x00, 0x00, 0x1F, 0xDB, 0x03, 0x1F, 0x06
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

Room_MinishWoods_Main:: @ 080F5260
	.4byte gEntities_MinishWoods_0
	.4byte gManagers_MinishWoods_0
	.4byte gRoomEnemies_MinishWoods_0
	.4byte gRoomTiles_MinishWoods_0
	.4byte sub_0804EC98
	.4byte 0x00000000
	.4byte sub_0804EBDC
	.4byte sub_0804EC00
	.4byte gUnk_080F50F8
	.4byte gUnk_080F5120
	.4byte gUnk_080F5134
	.4byte gUnk_080F5148
	.4byte gUnk_080F515C
	.4byte gUnk_080F5170
	.4byte gUnk_080F5180
	.4byte 0x00000000
	.4byte gUnk_080F51F0
	.4byte gUnk_080F50B0
	.4byte gUnk_080F5194
	.4byte gUnk_080F51B2

gUnk_080F52B0:: @ 080F52B0
	.incbin "baserom.gba", 0x0F52B0, 0x0000010

gUnk_080F52C0:: @ 080F52C0
	.incbin "baserom.gba", 0x0F52C0, 0x0000010

gUnk_080F52D0:: @ 080F52D0
	.incbin "baserom.gba", 0x0F52D0, 0x0000008

Room_Empty_Main:: @ 080F52D8
	.4byte gUnk_080F52B0
	.4byte 0x00000000
	.4byte gUnk_080F52C0
	.4byte gUnk_080F52D0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804ECB4
	.4byte nullsub_396

gUnk_080F52F8:: @ 080F52F8
	.incbin "baserom.gba", 0x0F52F8, 0x0000010

gUnk_080F5308:: @ 080F5308
	.incbin "baserom.gba", 0x0F5308, 0x000000C
	.4byte script_08012D70
	.incbin "baserom.gba", 0x0F5318, 0x0000010

gUnk_080F5328:: @ 080F5328
	.incbin "baserom.gba", 0x0F5328, 0x0000020

gUnk_080F5348:: @ 080F5348
	.incbin "baserom.gba", 0x0F5348, 0x000000C
	.4byte script_0800AB08
	.incbin "baserom.gba", 0x0F5358, 0x000000C
	.4byte script_0800AD74
	.incbin "baserom.gba", 0x0F5368, 0x000000C
	.4byte script_0800AEA4
	.incbin "baserom.gba", 0x0F5378, 0x0000020

gUnk_080F5398:: @ 080F5398
	.incbin "baserom.gba", 0x0F5398, 0x0000010

gUnk_080F53A8:: @ 080F53A8
	.incbin "baserom.gba", 0x0F53A8, 0x0000010

gUnk_080F53B8:: @ 080F53B8
	.incbin "baserom.gba", 0x0F53B8, 0x0000008

Room_SanctuaryEntrance_Main:: @ 080F53C0
	.4byte gUnk_080F52F8
	.4byte gUnk_080F5398
	.4byte gUnk_080F53A8
	.4byte gUnk_080F53B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804ECBC
	.4byte sub_0804ECEC

gUnk_080F53E0:: @ 080F53E0
	.incbin "baserom.gba", 0x0F53E0, 0x0000030

gUnk_080F5410:: @ 080F5410
	.incbin "baserom.gba", 0x0F5410, 0x0000010

gUnk_080F5420:: @ 080F5420
	.incbin "baserom.gba", 0x0F5420, 0x0000008

Room_Sanctuary_Hall:: @ 080F5428
	.4byte gUnk_080F53E0
	.4byte 0x00000000
	.4byte gUnk_080F5410
	.4byte gUnk_080F5420
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804ED30
	.4byte sub_0804ED34

gUnk_080F5448:: @ 080F5448
	.incbin "baserom.gba", 0x0F5448, 0x000000C
	.4byte script_08013BE8
	.incbin "baserom.gba", 0x0F5458, 0x000000C
	.4byte script_08013F94
	.incbin "baserom.gba", 0x0F5468, 0x000000C
	.4byte script_08013FE8
	.incbin "baserom.gba", 0x0F5478, 0x000000C
	.4byte script_08013B18
	.incbin "baserom.gba", 0x0F5488, 0x0000060

gUnk_080F54E8:: @ 080F54E8
	.incbin "baserom.gba", 0x0F54E8, 0x000000C
	.4byte script_08013CA4
	.incbin "baserom.gba", 0x0F54F8, 0x0000010

gUnk_080F5508:: @ 080F5508
	.incbin "baserom.gba", 0x0F5508, 0x000000C
	.4byte script_080134DC
	.incbin "baserom.gba", 0x0F5518, 0x0000010

gUnk_080F5528:: @ 080F5528
	.incbin "baserom.gba", 0x0F5528, 0x000000C
	.4byte script_08013E94
	.incbin "baserom.gba", 0x0F5538, 0x000000C
	.4byte script_08013EB0
	.incbin "baserom.gba", 0x0F5548, 0x0000010

gUnk_080F5558:: @ 080F5558
	.incbin "baserom.gba", 0x0F5558, 0x000000C
	.4byte script_08013720
	.incbin "baserom.gba", 0x0F5568, 0x0000010

gUnk_080F5578:: @ 080F5578
	.incbin "baserom.gba", 0x0F5578, 0x000000C
	.4byte script_08013ECC
	.incbin "baserom.gba", 0x0F5588, 0x0000010

gUnk_080F5598:: @ 080F5598
	.incbin "baserom.gba", 0x0F5598, 0x000000C
	.4byte script_080138B4
	.incbin "baserom.gba", 0x0F55A8, 0x0000010

gUnk_080F55B8:: @ 080F55B8
	.incbin "baserom.gba", 0x0F55B8, 0x000000C
	.4byte script_08013EE8
	.incbin "baserom.gba", 0x0F55C8, 0x0000010

gUnk_080F55D8:: @ 080F55D8
	.incbin "baserom.gba", 0x0F55D8, 0x0000020

gUnk_080F55F8:: @ 080F55F8
	.incbin "baserom.gba", 0x0F55F8, 0x0000010

gUnk_080F5608:: @ 080F5608
	.incbin "baserom.gba", 0x0F5608, 0x0000008

Room_Sanctuary_Main:: @ 080F5610
	.4byte gUnk_080F5448
	.4byte 0x00000000
	.4byte gUnk_080F55F8
	.4byte gUnk_080F5608
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804ED58
	.4byte sub_0804ED5C

gUnk_080F5630:: @ 080F5630
	.incbin "baserom.gba", 0x0F5630, 0x000000C
	.4byte script_08014274
	.incbin "baserom.gba", 0x0F5640, 0x0000020

gUnk_080F5660:: @ 080F5660
	.incbin "baserom.gba", 0x0F5660, 0x000000C
	.4byte script_080131AC
	.incbin "baserom.gba", 0x0F5670, 0x0000010

gUnk_080F5680:: @ 080F5680
	.incbin "baserom.gba", 0x0F5680, 0x000000C
	.4byte script_080133C4
	.incbin "baserom.gba", 0x0F5690, 0x000000C
	.4byte script_080133F8
	.incbin "baserom.gba", 0x0F56A0, 0x0000010

gUnk_080F56B0:: @ 080F56B0
	.incbin "baserom.gba", 0x0F56B0, 0x0000050

gUnk_080F5700:: @ 080F5700
	.incbin "baserom.gba", 0x0F5700, 0x0000010

gUnk_080F5710:: @ 080F5710
	.incbin "baserom.gba", 0x0F5710, 0x0000008

Room_Sanctuary_StainedGlass:: @ 080F5718
	.4byte gUnk_080F5630
	.4byte gUnk_080F56B0
	.4byte gUnk_080F5700
	.4byte gUnk_080F5710
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EE74
	.4byte sub_0804EE78

gUnk_080F5738:: @ 080F5738
	.incbin "baserom.gba", 0x0F5738, 0x0000020

gUnk_080F5758:: @ 080F5758
	.incbin "baserom.gba", 0x0F5758, 0x0000030

gUnk_080F5788:: @ 080F5788
	.incbin "baserom.gba", 0x0F5788, 0x0000020

gUnk_080F57A8:: @ 080F57A8
	.incbin "baserom.gba", 0x0F57A8, 0x0000020

gUnk_080F57C8:: @ 080F57C8
	.incbin "baserom.gba", 0x0F57C8, 0x0000020

gUnk_080F57E8:: @ 080F57E8
	.incbin "baserom.gba", 0x0F57E8, 0x0000040

gUnk_080F5828:: @ 080F5828
	.incbin "baserom.gba", 0x0F5828, 0x0000020

gUnk_080F5848:: @ 080F5848
	.incbin "baserom.gba", 0x0F5848, 0x0000020

gUnk_080F5868:: @ 080F5868
	.incbin "baserom.gba", 0x0F5868, 0x0000020

gUnk_080F5888:: @ 080F5888
	.incbin "baserom.gba", 0x0F5888, 0x0000020

gUnk_080F58A8:: @ 080F58A8
	.incbin "baserom.gba", 0x0F58A8, 0x0000020

gUnk_080F58C8:: @ 080F58C8
	.incbin "baserom.gba", 0x0F58C8, 0x0000040

gUnk_080F5908:: @ 080F5908
	.incbin "baserom.gba", 0x0F5908, 0x0000010

gUnk_080F5918:: @ 080F5918
	.incbin "baserom.gba", 0x0F5918, 0x0000008

gUnk_080F5920:: @ 080F5920
	.incbin "baserom.gba", 0x0F5920, 0x0000014

Room_HouseInteriors3_StockwellShop:: @ 080F5934
	.4byte gUnk_080F5738
	.4byte gUnk_080F58C8
	.4byte gUnk_080F5908
	.4byte gUnk_080F5918
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EEB8
	.4byte sub_0804EEBC
	.4byte gUnk_080F5920

gUnk_080F5958:: @ 080F5958
	.incbin "baserom.gba", 0x0F5958, 0x000000C
	.4byte script_0800E920
	.incbin "baserom.gba", 0x0F5968, 0x000000C
	.4byte script_0800ED04
	.incbin "baserom.gba", 0x0F5978, 0x000000C
	.4byte script_0800ED04
	.incbin "baserom.gba", 0x0F5988, 0x000000C
	.4byte script_080100FC
	.incbin "baserom.gba", 0x0F5998, 0x000000C
	.4byte script_0800EC8C
	.incbin "baserom.gba", 0x0F59A8, 0x000000C
	.4byte script_08010BB4
	.incbin "baserom.gba", 0x0F59B8, 0x0000030

gUnk_080F59E8:: @ 080F59E8
	.incbin "baserom.gba", 0x0F59E8, 0x0000090

gUnk_080F5A78:: @ 080F5A78
	.incbin "baserom.gba", 0x0F5A78, 0x0000010

gUnk_080F5A88:: @ 080F5A88
	.incbin "baserom.gba", 0x0F5A88, 0x0000008

gUnk_080F5A90:: @ 080F5A90
	.incbin "baserom.gba", 0x0F5A90, 0x0000014

gUnk_080F5AA4:: @ 080F5AA4
	.incbin "baserom.gba", 0x0F5AA4, 0x0000014

gUnk_080F5AB8:: @ 080F5AB8
	.incbin "baserom.gba", 0x0F5AB8, 0x0000014

gUnk_080F5ACC:: @ 080F5ACC
	.incbin "baserom.gba", 0x0F5ACC, 0x0000010

Room_HouseInteriors3_Cafe:: @ 080F5ADC
	.4byte gUnk_080F5958
	.4byte gUnk_080F59E8
	.4byte gUnk_080F5A78
	.4byte gUnk_080F5A88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EFB0
	.4byte nullsub_397
	.4byte gUnk_080F5A90
	.4byte gUnk_080F5AA4
	.4byte gUnk_080F5AB8
	.4byte gUnk_080F5ACC

gUnk_080F5B0C:: @ 080F5B0C
	.incbin "baserom.gba", 0x0F5B0C, 0x0000030

gUnk_080F5B3C:: @ 080F5B3C
	.incbin "baserom.gba", 0x0F5B3C, 0x0000020

gUnk_080F5B5C:: @ 080F5B5C
	.incbin "baserom.gba", 0x0F5B5C, 0x0000050

gUnk_080F5BAC:: @ 080F5BAC
	.incbin "baserom.gba", 0x0F5BAC, 0x0000010

gUnk_080F5BBC:: @ 080F5BBC
	.incbin "baserom.gba", 0x0F5BBC, 0x0000008

gUnk_080F5BC4:: @ 080F5BC4
	.incbin "baserom.gba", 0x0F5BC4, 0x0000010

gUnk_080F5BD4:: @ 080F5BD4
	.incbin "baserom.gba", 0x0F5BD4, 0x0000014

Room_HouseInteriors3_RemShoeShop:: @ 080F5BE8
	.4byte gUnk_080F5B0C
	.4byte gUnk_080F5B5C
	.4byte gUnk_080F5BAC
	.4byte gUnk_080F5BBC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EFB8
	.4byte sub_0804EFBC
	.4byte gUnk_080F5BC4
	.4byte gUnk_080F5BD4

gUnk_080F5C10:: @ 080F5C10
	.incbin "baserom.gba", 0x0F5C10, 0x000000C
	.4byte script_08010674
	.incbin "baserom.gba", 0x0F5C20, 0x000000C
	.4byte script_080106AC
	.incbin "baserom.gba", 0x0F5C30, 0x000002C
	.4byte script_0800EBDC
	.incbin "baserom.gba", 0x0F5C60, 0x0000010

gUnk_080F5C70:: @ 080F5C70
	.incbin "baserom.gba", 0x0F5C70, 0x00000C0

gUnk_080F5D30:: @ 080F5D30
	.incbin "baserom.gba", 0x0F5D30, 0x0000010

gUnk_080F5D40:: @ 080F5D40
	.incbin "baserom.gba", 0x0F5D40, 0x0000008

gUnk_080F5D48:: @ 080F5D48
	.incbin "baserom.gba", 0x0F5D48, 0x0000014

gUnk_080F5D5C:: @ 080F5D5C
	.incbin "baserom.gba", 0x0F5D5C, 0x0000014

gUnk_080F5D70:: @ 080F5D70
	.incbin "baserom.gba", 0x0F5D70, 0x0000014

Room_HouseInteriors3_Bakery:: @ 080F5D84
	.4byte gUnk_080F5C10
	.4byte gUnk_080F5C70
	.4byte gUnk_080F5D30
	.4byte gUnk_080F5D40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EFD4
	.4byte nullsub_398
	.4byte gUnk_080F5D48
	.4byte gUnk_080F5D5C
	.4byte gUnk_080F5D70

gUnk_080F5DB0:: @ 080F5DB0
	.incbin "baserom.gba", 0x0F5DB0, 0x000000C
	.4byte script_08011B40
	.incbin "baserom.gba", 0x0F5DC0, 0x0000010

gUnk_080F5DD0:: @ 080F5DD0
	.incbin "baserom.gba", 0x0F5DD0, 0x000000C
	.4byte script_080103B0
	.incbin "baserom.gba", 0x0F5DE0, 0x0000010

gUnk_080F5DF0:: @ 080F5DF0
	.incbin "baserom.gba", 0x0F5DF0, 0x0000020

gUnk_080F5E10:: @ 080F5E10
	.incbin "baserom.gba", 0x0F5E10, 0x0000010

gUnk_080F5E20:: @ 080F5E20
	.incbin "baserom.gba", 0x0F5E20, 0x0000008

Room_HouseInteriors3_Simon:: @ 080F5E28
	.4byte gUnk_080F5DB0
	.4byte gUnk_080F5DF0
	.4byte gUnk_080F5E10
	.4byte gUnk_080F5E20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804EFDC
	.4byte sub_0804EFF8

gUnk_080F5E48:: @ 080F5E48
	.incbin "baserom.gba", 0x0F5E48, 0x0000020

gUnk_080F5E68:: @ 080F5E68
	.incbin "baserom.gba", 0x0F5E68, 0x0000020

gUnk_080F5E88:: @ 080F5E88
	.incbin "baserom.gba", 0x0F5E88, 0x000002C
	.4byte script_0800BA3C
	.incbin "baserom.gba", 0x0F5EB8, 0x0000010

gUnk_080F5EC8:: @ 080F5EC8
	.incbin "baserom.gba", 0x0F5EC8, 0x0000010

gUnk_080F5ED8:: @ 080F5ED8
	.incbin "baserom.gba", 0x0F5ED8, 0x0000020

Room_HouseInteriors3_FigurineHouse:: @ 080F5EF8
	.4byte gUnk_080F5E48
	.4byte gUnk_080F5E88
	.4byte gUnk_080F5EC8
	.4byte gUnk_080F5ED8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F02C
	.4byte sub_0804F030

gUnk_080F5F18:: @ 080F5F18
	.incbin "baserom.gba", 0x0F5F18, 0x000000C
	.4byte script_08014548
	.incbin "baserom.gba", 0x0F5F28, 0x0000010

gUnk_080F5F38:: @ 080F5F38
	.incbin "baserom.gba", 0x0F5F38, 0x000000C
	.4byte script_080100C8
	.incbin "baserom.gba", 0x0F5F48, 0x0000010

gUnk_080F5F58:: @ 080F5F58
	.incbin "baserom.gba", 0x0F5F58, 0x000000C
	.4byte script_08014450
	.incbin "baserom.gba", 0x0F5F68, 0x0000010

gUnk_080F5F78:: @ 080F5F78
	.incbin "baserom.gba", 0x0F5F78, 0x000000C
	.4byte script_0801450C
	.incbin "baserom.gba", 0x0F5F88, 0x0000010

gUnk_080F5F98:: @ 080F5F98
	.incbin "baserom.gba", 0x0F5F98, 0x0000040

gUnk_080F5FD8:: @ 080F5FD8
	.incbin "baserom.gba", 0x0F5FD8, 0x0000010

gUnk_080F5FE8:: @ 080F5FE8
	.incbin "baserom.gba", 0x0F5FE8, 0x0000008

Room_HouseInteriors3_BorlovEntrance:: @ 080F5FF0
	.4byte gUnk_080F5F18
	.4byte gUnk_080F5F98
	.4byte gUnk_080F5FD8
	.4byte gUnk_080F5FE8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F04C
	.4byte sub_0804F050
	.4byte gUnk_080F5F38
	.4byte gUnk_080F5F58
	.4byte gUnk_080F5F78

gUnk_080F601C:: @ 080F601C
	.incbin "baserom.gba", 0x0F601C, 0x000000C
	.4byte script_08014628
	.incbin "baserom.gba", 0x0F602C, 0x000000C
	.4byte script_080145B0
	.incbin "baserom.gba", 0x0F603C, 0x000000C
	.4byte script_080145E8
	.incbin "baserom.gba", 0x0F604C, 0x0000020

gUnk_080F606C:: @ 080F606C
	.incbin "baserom.gba", 0x0F606C, 0x0000040

gUnk_080F60AC:: @ 080F60AC
	.incbin "baserom.gba", 0x0F60AC, 0x0000010

gUnk_080F60BC:: @ 080F60BC
	.incbin "baserom.gba", 0x0F60BC, 0x0000008

Room_HouseInteriors3_Carlov:: @ 080F60C4
	.4byte gUnk_080F601C
	.4byte gUnk_080F606C
	.4byte gUnk_080F60AC
	.4byte gUnk_080F60BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F08C
	.4byte nullsub_399

gUnk_080F60E4:: @ 080F60E4
	.incbin "baserom.gba", 0x0F60E4, 0x000000C
	.4byte script_08014804
	.incbin "baserom.gba", 0x0F60F4, 0x000000C
	.4byte script_080148F0
	.incbin "baserom.gba", 0x0F6104, 0x0000010

gUnk_080F6114:: @ 080F6114
	.incbin "baserom.gba", 0x0F6114, 0x0000030

gUnk_080F6144:: @ 080F6144
	.incbin "baserom.gba", 0x0F6144, 0x0000010

gUnk_080F6154:: @ 080F6154
	.incbin "baserom.gba", 0x0F6154, 0x0000008

Room_HouseInteriors3_Borlov:: @ 080F615C
	.4byte gUnk_080F60E4
	.4byte gUnk_080F6114
	.4byte gUnk_080F6144
	.4byte gUnk_080F6154
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F094
	.4byte nullsub_400

gUnk_080F617C:: @ 080F617C
	.incbin "baserom.gba", 0x0F617C, 0x000000C
	.4byte script_08014958
	.incbin "baserom.gba", 0x0F618C, 0x000000C
	.4byte script_08014994
	.incbin "baserom.gba", 0x0F619C, 0x0000020

gUnk_080F61BC:: @ 080F61BC
	.incbin "baserom.gba", 0x0F61BC, 0x0000020

gUnk_080F61DC:: @ 080F61DC
	.incbin "baserom.gba", 0x0F61DC, 0x0000080

gUnk_080F625C:: @ 080F625C
	.incbin "baserom.gba", 0x0F625C, 0x0000010

gUnk_080F626C:: @ 080F626C
	.incbin "baserom.gba", 0x0F626C, 0x0000018

Room_WindTribeTower_Entrance:: @ 080F6284
	.4byte gUnk_080F617C
	.4byte gUnk_080F61DC
	.4byte gUnk_080F625C
	.4byte gUnk_080F626C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F09C
	.4byte sub_0804F0C0

gUnk_080F62A4:: @ 080F62A4
	.incbin "baserom.gba", 0x0F62A4, 0x000000C
	.4byte script_08014A54
	.incbin "baserom.gba", 0x0F62B4, 0x0000030

gUnk_080F62E4:: @ 080F62E4
	.incbin "baserom.gba", 0x0F62E4, 0x000001C
	.4byte script_08014B34
	.incbin "baserom.gba", 0x0F6304, 0x000000C
	.4byte script_08014A28
	.incbin "baserom.gba", 0x0F6314, 0x0000010

gUnk_080F6324:: @ 080F6324
	.incbin "baserom.gba", 0x0F6324, 0x000000C
	.4byte script_08014C2C
	.incbin "baserom.gba", 0x0F6334, 0x0000010

gUnk_080F6344:: @ 080F6344
	.incbin "baserom.gba", 0x0F6344, 0x0000060

gUnk_080F63A4:: @ 080F63A4
	.incbin "baserom.gba", 0x0F63A4, 0x0000010

gUnk_080F63B4:: @ 080F63B4
	.incbin "baserom.gba", 0x0F63B4, 0x0000010

Room_WindTribeTower_Floor2:: @ 080F63C4
	.4byte gUnk_080F62A4
	.4byte gUnk_080F6344
	.4byte gUnk_080F63A4
	.4byte gUnk_080F63B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F128
	.4byte sub_0804F12C

gUnk_080F63E4:: @ 080F63E4
	.incbin "baserom.gba", 0x0F63E4, 0x000000C
	.4byte script_08014A28
	.incbin "baserom.gba", 0x0F63F4, 0x0000060

gUnk_080F6454:: @ 080F6454
	.incbin "baserom.gba", 0x0F6454, 0x0000060

gUnk_080F64B4:: @ 080F64B4
	.incbin "baserom.gba", 0x0F64B4, 0x0000010

gUnk_080F64C4:: @ 080F64C4
	.incbin "baserom.gba", 0x0F64C4, 0x0000020

Room_WindTribeTower_Floor3:: @ 080F64E4
	.4byte gUnk_080F63E4
	.4byte gUnk_080F6454
	.4byte gUnk_080F64B4
	.4byte gUnk_080F64C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F15C
	.4byte nullsub_401

gUnk_080F6504:: @ 080F6504
	.incbin "baserom.gba", 0x0F6504, 0x000000C
	.4byte script_08014AC4
	.incbin "baserom.gba", 0x0F6514, 0x0000050

gUnk_080F6564:: @ 080F6564
	.incbin "baserom.gba", 0x0F6564, 0x000000C
	.4byte script_080149CC
	.incbin "baserom.gba", 0x0F6574, 0x0000010

gUnk_080F6584:: @ 080F6584
	.incbin "baserom.gba", 0x0F6584, 0x000000C
	.4byte script_080149CC
	.incbin "baserom.gba", 0x0F6594, 0x0000010

gUnk_080F65A4:: @ 080F65A4
	.incbin "baserom.gba", 0x0F65A4, 0x0000060

gUnk_080F6604:: @ 080F6604
	.incbin "baserom.gba", 0x0F6604, 0x0000010

gUnk_080F6614:: @ 080F6614
	.incbin "baserom.gba", 0x0F6614, 0x0000018

Room_WindTribeTower_Floor4:: @ 080F662C
	.4byte gUnk_080F6504
	.4byte gUnk_080F65A4
	.4byte gUnk_080F6604
	.4byte gUnk_080F6614
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F164
	.4byte sub_0804F168

gUnk_080F664C:: @ 080F664C
	.incbin "baserom.gba", 0x0F664C, 0x0000060

gUnk_080F66AC:: @ 080F66AC
	.incbin "baserom.gba", 0x0F66AC, 0x000000C
	.4byte script_0800AFE8
	.incbin "baserom.gba", 0x0F66BC, 0x0000010

gUnk_080F66CC:: @ 080F66CC
	.incbin "baserom.gba", 0x0F66CC, 0x00000D0

gUnk_080F679C:: @ 080F679C
	.incbin "baserom.gba", 0x0F679C, 0x0000010

gUnk_080F67AC:: @ 080F67AC
	.incbin "baserom.gba", 0x0F67AC, 0x0000010

Area_WindTribeTowerRoof_Main:: @ 080F67BC
	.4byte gUnk_080F664C
	.4byte gUnk_080F66CC
	.4byte gUnk_080F679C
	.4byte gUnk_080F67AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F18C
	.4byte sub_0804F190

gUnk_080F67DC:: @ 080F67DC
	.incbin "baserom.gba", 0x0F67DC, 0x00000A0

gUnk_080F687C:: @ 080F687C
	.incbin "baserom.gba", 0x0F687C, 0x0000060

gUnk_080F68DC:: @ 080F68DC
	.incbin "baserom.gba", 0x0F68DC, 0x0000010

gUnk_080F68EC:: @ 080F68EC
	.incbin "baserom.gba", 0x0F68EC, 0x0000010

Room_Beanstalks_MountCrenel:: @ 080F68FC
	.4byte gUnk_080F67DC
	.4byte gUnk_080F687C
	.4byte gUnk_080F68DC
	.4byte gUnk_080F68EC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1DC
	.4byte nullsub_402

gUnk_080F691C:: @ 080F691C
	.incbin "baserom.gba", 0x0F691C, 0x0000020

gUnk_080F693C:: @ 080F693C
	.incbin "baserom.gba", 0x0F693C, 0x0000060

gUnk_080F699C:: @ 080F699C
	.incbin "baserom.gba", 0x0F699C, 0x0000010

gUnk_080F69AC:: @ 080F69AC
	.incbin "baserom.gba", 0x0F69AC, 0x0000020

Room_Beanstalks_LakeHylia:: @ 080F69CC
	.4byte gUnk_080F691C
	.4byte gUnk_080F693C
	.4byte gUnk_080F699C
	.4byte gUnk_080F69AC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1E4
	.4byte nullsub_403

gUnk_080F69EC:: @ 080F69EC
	.incbin "baserom.gba", 0x0F69EC, 0x0000020

gUnk_080F6A0C:: @ 080F6A0C
	.incbin "baserom.gba", 0x0F6A0C, 0x0000060

gUnk_080F6A6C:: @ 080F6A6C
	.incbin "baserom.gba", 0x0F6A6C, 0x0000010

gUnk_080F6A7C:: @ 080F6A7C
	.incbin "baserom.gba", 0x0F6A7C, 0x0000018

Room_Beanstalks_Ruins:: @ 080F6A94
	.4byte gUnk_080F69EC
	.4byte gUnk_080F6A0C
	.4byte gUnk_080F6A6C
	.4byte gUnk_080F6A7C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1EC
	.4byte nullsub_404

gUnk_080F6AB4:: @ 080F6AB4
	.incbin "baserom.gba", 0x0F6AB4, 0x0000020

gUnk_080F6AD4:: @ 080F6AD4
	.incbin "baserom.gba", 0x0F6AD4, 0x0000060

gUnk_080F6B34:: @ 080F6B34
	.incbin "baserom.gba", 0x0F6B34, 0x0000010

gUnk_080F6B44:: @ 080F6B44
	.incbin "baserom.gba", 0x0F6B44, 0x0000020

Room_Beanstalks_EasternHills:: @ 080F6B64
	.4byte gUnk_080F6AB4
	.4byte gUnk_080F6AD4
	.4byte gUnk_080F6B34
	.4byte gUnk_080F6B44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1F4
	.4byte nullsub_405

gUnk_080F6B84:: @ 080F6B84
	.incbin "baserom.gba", 0x0F6B84, 0x0000110

gUnk_080F6C94:: @ 080F6C94
	.incbin "baserom.gba", 0x0F6C94, 0x0000060

gUnk_080F6CF4:: @ 080F6CF4
	.incbin "baserom.gba", 0x0F6CF4, 0x0000010

gUnk_080F6D04:: @ 080F6D04
	.incbin "baserom.gba", 0x0F6D04, 0x0000018

Room_Beanstalks_WesternWoods:: @ 080F6D1C
	.4byte gUnk_080F6B84
	.4byte gUnk_080F6C94
	.4byte gUnk_080F6CF4
	.4byte gUnk_080F6D04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F1FC
	.4byte nullsub_406

gUnk_080F6D3C:: @ 080F6D3C
	.incbin "baserom.gba", 0x0F6D3C, 0x0000010

gUnk_080F6D4C:: @ 080F6D4C
	.incbin "baserom.gba", 0x0F6D4C, 0x0000010

gUnk_080F6D5C:: @ 080F6D5C
	.incbin "baserom.gba", 0x0F6D5C, 0x0000010

gUnk_080F6D6C:: @ 080F6D6C
	.incbin "baserom.gba", 0x0F6D6C, 0x0000010

Room_Beanstalks_MountCrenelClimb:: @ 080F6D7C
	.4byte gUnk_080F6D3C
	.4byte gUnk_080F6D4C
	.4byte gUnk_080F6D5C
	.4byte gUnk_080F6D6C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F204
	.4byte nullsub_407

gUnk_080F6D9C:: @ 080F6D9C
	.incbin "baserom.gba", 0x0F6D9C, 0x0000010

gUnk_080F6DAC:: @ 080F6DAC
	.incbin "baserom.gba", 0x0F6DAC, 0x0000010

gUnk_080F6DBC:: @ 080F6DBC
	.incbin "baserom.gba", 0x0F6DBC, 0x0000010

gUnk_080F6DCC:: @ 080F6DCC
	.incbin "baserom.gba", 0x0F6DCC, 0x0000010

Room_Beanstalks_LakeHyliaClimb:: @ 080F6DDC
	.4byte gUnk_080F6D9C
	.4byte gUnk_080F6DAC
	.4byte gUnk_080F6DBC
	.4byte gUnk_080F6DCC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F20C
	.4byte nullsub_408

gUnk_080F6DFC:: @ 080F6DFC
	.incbin "baserom.gba", 0x0F6DFC, 0x0000010

gUnk_080F6E0C:: @ 080F6E0C
	.incbin "baserom.gba", 0x0F6E0C, 0x0000010

gUnk_080F6E1C:: @ 080F6E1C
	.incbin "baserom.gba", 0x0F6E1C, 0x0000010

gUnk_080F6E2C:: @ 080F6E2C
	.incbin "baserom.gba", 0x0F6E2C, 0x0000010

Room_Beanstalks_RuinsClimb:: @ 080F6E3C
	.4byte gUnk_080F6DFC
	.4byte gUnk_080F6E0C
	.4byte gUnk_080F6E1C
	.4byte gUnk_080F6E2C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F214
	.4byte nullsub_409

gUnk_080F6E5C:: @ 080F6E5C
	.incbin "baserom.gba", 0x0F6E5C, 0x0000010

gUnk_080F6E6C:: @ 080F6E6C
	.incbin "baserom.gba", 0x0F6E6C, 0x0000010

gUnk_080F6E7C:: @ 080F6E7C
	.incbin "baserom.gba", 0x0F6E7C, 0x0000010

gUnk_080F6E8C:: @ 080F6E8C
	.incbin "baserom.gba", 0x0F6E8C, 0x0000010

Room_Beanstalks_EasternHillsClimb:: @ 080F6E9C
	.4byte gUnk_080F6E5C
	.4byte gUnk_080F6E6C
	.4byte gUnk_080F6E7C
	.4byte gUnk_080F6E8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F21C
	.4byte nullsub_410

gUnk_080F6EBC:: @ 080F6EBC
	.incbin "baserom.gba", 0x0F6EBC, 0x0000010

gUnk_080F6ECC:: @ 080F6ECC
	.incbin "baserom.gba", 0x0F6ECC, 0x0000010

gUnk_080F6EDC:: @ 080F6EDC
	.incbin "baserom.gba", 0x0F6EDC, 0x0000010

gUnk_080F6EEC:: @ 080F6EEC
	.incbin "baserom.gba", 0x0F6EEC, 0x0000010

Room_Beanstalks_WesternWoodsClimb:: @ 080F6EFC
	.4byte gUnk_080F6EBC
	.4byte gUnk_080F6ECC
	.4byte gUnk_080F6EDC
	.4byte gUnk_080F6EEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F224
	.4byte nullsub_411

gUnk_080F6F1C:: @ 080F6F1C
	.incbin "baserom.gba", 0x0F6F1C, 0x0000010

gUnk_080F6F2C:: @ 080F6F2C
	.incbin "baserom.gba", 0x0F6F2C, 0x0000050

gUnk_080F6F7C:: @ 080F6F7C
	.incbin "baserom.gba", 0x0F6F7C, 0x0000040

gUnk_080F6FBC:: @ 080F6FBC
	.incbin "baserom.gba", 0x0F6FBC, 0x0000010

gUnk_080F6FCC:: @ 080F6FCC
	.incbin "baserom.gba", 0x0F6FCC, 0x0000010

gUnk_080F6FDC:: @ 080F6FDC
	.incbin "baserom.gba", 0x0F6FDC, 0x0000014

Room_HyruleField_WesternWoodSouth:: @ 080F6FF0
	.4byte gUnk_080F6F1C
	.4byte gUnk_080F6F2C
	.4byte gUnk_080F6F7C
	.4byte gUnk_080F6FBC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F22C
	.4byte sub_0804F230
	.4byte gUnk_080F6FCC
	.4byte gUnk_080F6FDC

gUnk_080F7018:: @ 080F7018
	.incbin "baserom.gba", 0x0F7018, 0x0000070

gUnk_080F7088:: @ 080F7088
	.incbin "baserom.gba", 0x0F7088, 0x000000C
	.4byte script_080168F4
	.incbin "baserom.gba", 0x0F7098, 0x0000010

gUnk_080F70A8:: @ 080F70A8
	.incbin "baserom.gba", 0x0F70A8, 0x000000C
	.4byte script_08014CDC
	.incbin "baserom.gba", 0x0F70B8, 0x000000C
	.4byte script_08014DCC
	.incbin "baserom.gba", 0x0F70C8, 0x0000010

gUnk_080F70D8:: @ 080F70D8
	.incbin "baserom.gba", 0x0F70D8, 0x000000C
	.4byte script_0800B00C
	.incbin "baserom.gba", 0x0F70E8, 0x0000010

gUnk_080F70F8:: @ 080F70F8
	.incbin "baserom.gba", 0x0F70F8, 0x0000060

gUnk_080F7158:: @ 080F7158
	.incbin "baserom.gba", 0x0F7158, 0x00000C0

gUnk_080F7218:: @ 080F7218
	.incbin "baserom.gba", 0x0F7218, 0x0000088

gUnk_080F72A0:: @ 080F72A0
	.incbin "baserom.gba", 0x0F72A0, 0x0000010

gUnk_080F72B0:: @ 080F72B0
	.incbin "baserom.gba", 0x0F72B0, 0x0000014

Room_HyruleField_LinksHouseExterior:: @ 080F72C4
	.4byte gUnk_080F7018
	.4byte gUnk_080F70F8
	.4byte gUnk_080F7158
	.4byte gUnk_080F7218
	.4byte sub_0804F2C8
	.4byte 0x00000000
	.4byte sub_0804F23C
	.4byte sub_0804F25C
	.4byte gUnk_080F72A0
	.4byte gUnk_080F72B0

gUnk_080F72EC:: @ 080F72EC
	.incbin "baserom.gba", 0x0F72EC, 0x0000030

gUnk_080F731C:: @ 080F731C
	.incbin "baserom.gba", 0x0F731C, 0x0000030

gUnk_080F734C:: @ 080F734C
	.incbin "baserom.gba", 0x0F734C, 0x0000040

gUnk_080F738C:: @ 080F738C
	.incbin "baserom.gba", 0x0F738C, 0x0000020

Room_HyruleField_FromMinishWoods:: @ 080F73AC
	.4byte gUnk_080F72EC
	.4byte gUnk_080F731C
	.4byte gUnk_080F734C
	.4byte gUnk_080F738C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F2E8
	.4byte sub_0804F2EC

gUnk_080F73CC:: @ 080F73CC
	.incbin "baserom.gba", 0x0F73CC, 0x0000010

gUnk_080F73DC:: @ 080F73DC
	.incbin "baserom.gba", 0x0F73DC, 0x0000040

gUnk_080F741C:: @ 080F741C
	.incbin "baserom.gba", 0x0F741C, 0x0000070

gUnk_080F748C:: @ 080F748C
	.incbin "baserom.gba", 0x0F748C, 0x0000018

gUnk_080F74A4:: @ 080F74A4
	.incbin "baserom.gba", 0x0F74A4, 0x0000010

gUnk_080F74B4:: @ 080F74B4
	.incbin "baserom.gba", 0x0F74B4, 0x0000014

Room_HyruleField_FromMinishWoodsNorth:: @ 080F74C8
	.4byte gUnk_080F73CC
	.4byte gUnk_080F73DC
	.4byte gUnk_080F741C
	.4byte gUnk_080F748C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F2F8
	.4byte sub_0804F2FC
	.4byte gUnk_080F74A4
	.4byte gUnk_080F74B4

gUnk_080F74F0:: @ 080F74F0
	.incbin "baserom.gba", 0x0F74F0, 0x0000010

gUnk_080F7500:: @ 080F7500
	.incbin "baserom.gba", 0x0F7500, 0x0000020

gUnk_080F7520:: @ 080F7520
	.incbin "baserom.gba", 0x0F7520, 0x0000008
	.4byte script_0800B0D0
	.incbin "baserom.gba", 0x0F752C, 0x000000C
	.4byte script_0800B0D0
	.incbin "baserom.gba", 0x0F753C, 0x0000014

gUnk_080F7550:: @ 080F7550
	.incbin "baserom.gba", 0x0F7550, 0x0000020

gUnk_080F7570:: @ 080F7570
	.incbin "baserom.gba", 0x0F7570, 0x0000008
	.4byte script_080094FC
	.incbin "baserom.gba", 0x0F757C, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F758C, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F759C, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F75AC, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F75BC, 0x0000014

gUnk_080F75D0:: @ 080F75D0
	.incbin "baserom.gba", 0x0F75D0, 0x0000040

gUnk_080F7610:: @ 080F7610
	.incbin "baserom.gba", 0x0F7610, 0x0000070

gUnk_080F7680:: @ 080F7680
	.incbin "baserom.gba", 0x0F7680, 0x0000040

gUnk_080F76C0:: @ 080F76C0
	.incbin "baserom.gba", 0x0F76C0, 0x0000038

Room_HyruleField_Farmers:: @ 080F76F8
	.4byte gUnk_080F74F0
	.4byte gUnk_080F75D0
	.4byte gUnk_080F7610
	.4byte gUnk_080F76C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804f308
	.4byte sub_0804F330
	.4byte gUnk_080F7520
	.4byte gUnk_080F7570

gUnk_080F7720:: @ 080F7720
	.incbin "baserom.gba", 0x0F7720, 0x0000050

gUnk_080F7770:: @ 080F7770
	.incbin "baserom.gba", 0x0F7770, 0x0000050

gUnk_080F77C0:: @ 080F77C0
	.incbin "baserom.gba", 0x0F77C0, 0x000000C
	.4byte script_0800B3A4
	.incbin "baserom.gba", 0x0F77D0, 0x000000C
	.4byte script_0800B4AC
	.incbin "baserom.gba", 0x0F77E0, 0x0000010

gUnk_080F77F0:: @ 080F77F0
	.incbin "baserom.gba", 0x0F77F0, 0x000000C
	.4byte script_0800B5EC
	.incbin "baserom.gba", 0x0F7800, 0x0000010

gUnk_080F7810:: @ 080F7810
	.incbin "baserom.gba", 0x0F7810, 0x0000020

gUnk_080F7830:: @ 080F7830
	.incbin "baserom.gba", 0x0F7830, 0x0000008
	.4byte script_08014E14
	.incbin "baserom.gba", 0x0F783C, 0x000000C
	.4byte script_08014E14
	.incbin "baserom.gba", 0x0F784C, 0x0000014

gUnk_080F7860:: @ 080F7860
	.incbin "baserom.gba", 0x0F7860, 0x0000020

gUnk_080F7880:: @ 080F7880
	.incbin "baserom.gba", 0x0F7880, 0x0000008
	.4byte script_0800B9B4
	.incbin "baserom.gba", 0x0F788C, 0x0000014

gUnk_080F78A0:: @ 080F78A0
	.incbin "baserom.gba", 0x0F78A0, 0x0000020

gUnk_080F78C0:: @ 080F78C0
	.incbin "baserom.gba", 0x0F78C0, 0x0000008
	.4byte script_080168F4
	.incbin "baserom.gba", 0x0F78CC, 0x0000014

gUnk_080F78E0:: @ 080F78E0
	.incbin "baserom.gba", 0x0F78E0, 0x00000F0

gUnk_080F79D0:: @ 080F79D0
	.incbin "baserom.gba", 0x0F79D0, 0x0000050

gUnk_080F7A20:: @ 080F7A20
	.incbin "baserom.gba", 0x0F7A20, 0x0000008
	.4byte script_0800B574
	.incbin "baserom.gba", 0x0F7A2C, 0x0000018

gUnk_080F7A44:: @ 080F7A44
	.incbin "baserom.gba", 0x0F7A44, 0x00000B0

gUnk_080F7AF4:: @ 080F7AF4
	.incbin "baserom.gba", 0x0F7AF4, 0x0000048

gUnk_080F7B3C:: @ 080F7B3C
	.incbin "baserom.gba", 0x0F7B3C, 0x0000018

gUnk_080F7B54:: @ 080F7B54
	.incbin "baserom.gba", 0x0F7B54, 0x0000014

gUnk_080F7B68:: @ 080F7B68
	.incbin "baserom.gba", 0x0F7B68, 0x0000014

gUnk_080F7B7C:: @ 080F7B7C
	.incbin "baserom.gba", 0x0F7B7C, 0x0000014

gUnk_080F7B90:: @ 080F7B90
	.incbin "baserom.gba", 0x0F7B90, 0x0000014

Room_HyruleField_LonLonRanch:: @ 080F7BA4
	.4byte gUnk_080F7720
	.4byte gUnk_080F78E0
	.4byte gUnk_080F7A44
	.4byte gUnk_080F7AF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804F3AC
	.4byte sub_0804F3B0
	.4byte gUnk_080F7B3C
	.4byte gUnk_080F7B54
	.4byte gUnk_080F7B68
	.4byte gUnk_080F7770
	.4byte gUnk_080F7830
	.4byte gUnk_080F7880
	.4byte gUnk_080F79D0
	.4byte gUnk_080F7B7C
	.4byte gUnk_080F7B90
	.4byte gUnk_080F7A20
	.4byte gUnk_080F78C0

EntityData_HyruleField_OutsideCastle:: @ 080F7BF0
	.incbin "baserom.gba", 0x0F7BF0, 0x0000010

ManagerData_HyruleField_OutsideCastle:: @ 080F7C00
	.incbin "baserom.gba", 0x0F7C00, 0x0000080

gUnk_080F7C80:: @ 080F7C80
	.incbin "baserom.gba", 0x0F7C80, 0x000000C
	.4byte script_08014FBC
	.incbin "baserom.gba", 0x0F7C90, 0x000000C
	.4byte script_08015234
	.incbin "baserom.gba", 0x0F7CA0, 0x0000010

gUnk_080F7CB0:: @ 080F7CB0
	.incbin "baserom.gba", 0x0F7CB0, 0x000000C
	.4byte script_08015390
	.incbin "baserom.gba", 0x0F7CC0, 0x0000010

gUnk_080F7CD0:: @ 080F7CD0
	.incbin "baserom.gba", 0x0F7CD0, 0x0000020

gUnk_080F7CF0:: @ 080F7CF0
	.incbin "baserom.gba", 0x0F7CF0, 0x0000008
	.4byte script_080094FC
	.incbin "baserom.gba", 0x0F7CFC, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F7D0C, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F7D1C, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F7D2C, 0x000000C
	.4byte script_08009574
	.incbin "baserom.gba", 0x0F7D3C, 0x000000C
	.4byte script_08014E14
	.incbin "baserom.gba", 0x0F7D4C, 0x000000C
	.4byte script_08014E14
	.incbin "baserom.gba", 0x0F7D5C, 0x0000014

gUnk_080F7D70:: @ 080F7D70
	.incbin "baserom.gba", 0x0F7D70, 0x000000C
	.4byte script_080157AC
	.incbin "baserom.gba", 0x0F7D80, 0x000000C
	.4byte script_08015B34
	.incbin "baserom.gba", 0x0F7D90, 0x000000C
	.4byte script_08015958
	.incbin "baserom.gba", 0x0F7DA0, 0x0000020

gUnk_080F7DC0:: @ 080F7DC0
	.incbin "baserom.gba", 0x0F7DC0, 0x0000020

gUnk_080F7DE0:: @ 080F7DE0
	.incbin "baserom.gba", 0x0F7DE0, 0x000000C
	.4byte script_08015BA8
	.incbin "baserom.gba", 0x0F7DF0, 0x0000030

EnemyData_HyruleField_OutsideCastle:: @ 080F7E20
	.incbin "baserom.gba", 0x0F7E20, 0x00000F0

TileData_HyruleField_OutsideCastle:: @ 080F7F10
	.incbin "baserom.gba", 0x0F7F10, 0x0000070

gUnk_080F7F80:: @ 080F7F80
	.incbin "baserom.gba", 0x0F7F80, 0x0000018

gUnk_080F7F98:: @ 080F7F98
	.incbin "baserom.gba", 0x0F7F98, 0x0000014

gUnk_080F7FAC:: @ 080F7FAC
	.incbin "baserom.gba", 0x0F7FAC, 0x0000014

gUnk_080F7FC0:: @ 080F7FC0
	.incbin "baserom.gba", 0x0F7FC0, 0x0000030

gUnk_080F7FF0:: @ 080F7FF0
	.incbin "baserom.gba", 0x0F7FF0, 0x0000030

Room_HyruleField_OutsideCastle:: @ 080F8020
	.4byte EntityData_HyruleField_OutsideCastle
	.4byte ManagerData_HyruleField_OutsideCastle
	.4byte EnemyData_HyruleField_OutsideCastle
	.4byte TileData_HyruleField_OutsideCastle
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte Vars_HyruleField_OutsideCastle
	.4byte Load_HyruleField_OutsideCastle
	.4byte gUnk_080F7F80
	.4byte gUnk_080F7F98
	.4byte gUnk_080F7FAC
	.4byte 0x00000000
	.4byte gUnk_080F7FF0
	.4byte gUnk_080F7DE0
	.4byte gUnk_080F7CF0

EntityData_HyruleField_OutsideCastleWest:: @ 080F805C
	.incbin "baserom.gba", 0x0F805C, 0x0000010

gUnk_080F806C:: @ 080F806C
	.incbin "baserom.gba", 0x0F806C, 0x000000C
	.4byte script_080168F4
	.incbin "baserom.gba", 0x0F807C, 0x0000010

ManagerData_HyruleField_OutsideCastleWest:: @ 080F808C
	.incbin "baserom.gba", 0x0F808C, 0x0000060

EnemyData_HyruleField_OutsideCastleWest:: @ 080F80EC
	.incbin "baserom.gba", 0x0F80EC, 0x00000B0

TileData_HyruleField_OutsideCastleWest:: @ 080F819C
	.incbin "baserom.gba", 0x0F819C, 0x0000028

gUnk_080F81C4:: @ 080F81C4
	.incbin "baserom.gba", 0x0F81C4, 0x0000010

gUnk_080F81D4:: @ 080F81D4
	.incbin "baserom.gba", 0x0F81D4, 0x0000014

Room_HyruleField_OutsideCastleWest:: @ 080F81E8
	.4byte EntityData_HyruleField_OutsideCastleWest
	.4byte ManagerData_HyruleField_OutsideCastleWest
	.4byte EnemyData_HyruleField_OutsideCastleWest
	.4byte TileData_HyruleField_OutsideCastleWest
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte Vars_HyruleField_OutsideCastleWest
	.4byte Load_HyruleField_OutsideCastleWest
	.4byte gUnk_080F81C4
	.4byte gUnk_080F81D4

EntityData_HyruleField_TrilbyHighlands:: @ 080F8210
	.incbin "baserom.gba", 0x0F8210, 0x00000D0

gUnk_080F82E0:: @ 080F82E0
	.incbin "baserom.gba", 0x0F82E0, 0x000000C
	.4byte script_08015BE8
	.incbin "baserom.gba", 0x0F82F0, 0x0000010

ManagerData_HyruleField_TrilbyHighlands:: @ 080F8300
	.incbin "baserom.gba", 0x0F8300, 0x0000020

EnemyData_HyruleField_TrilbyHighlands:: @ 080F8320
	.incbin "baserom.gba", 0x0F8320, 0x00000C0

TileData_HyruleField_TrilbyHighlands:: @ 080F83E0
	.incbin "baserom.gba", 0x0F83E0, 0x0000020

Room_HyruleField_TrilbyHighlands:: @ 080F8400
	.4byte EntityData_HyruleField_TrilbyHighlands
	.4byte ManagerData_HyruleField_TrilbyHighlands
	.4byte EnemyData_HyruleField_TrilbyHighlands
	.4byte TileData_HyruleField_TrilbyHighlands
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte Vars_HyruleField_TrilbyHighlands
	.4byte Load_HyruleField_TrilbyHighlands

gUnk_080F8420:: @ 080F8420
	.incbin "baserom.gba", 0x0F8420, 0x0000010

gUnk_080F8430:: @ 080F8430
	.incbin "baserom.gba", 0x0F8430, 0x000000C
	.4byte script_08012EC0
	.incbin "baserom.gba", 0x0F8440, 0x0000010

gUnk_080F8450:: @ 080F8450
	.incbin "baserom.gba", 0x0F8450, 0x0000030

gUnk_080F8480:: @ 080F8480
	.incbin "baserom.gba", 0x0F8480, 0x0000030

gUnk_080F84B0:: @ 080F84B0
	.incbin "baserom.gba", 0x0F84B0, 0x0000018

Room_HyruleField_PercysHouse:: @ 080F84C8
	.4byte gUnk_080F8420
	.4byte gUnk_080F8450
	.4byte gUnk_080F8480
	.4byte gUnk_080F84B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FA64
	.4byte sub_0804FA68

gUnk_080F84E8:: @ 080F84E8
	.incbin "baserom.gba", 0x0F84E8, 0x00000F0

gUnk_080F85D8:: @ 080F85D8
	.incbin "baserom.gba", 0x0F85D8, 0x0000020

gUnk_080F85F8:: @ 080F85F8
	.incbin "baserom.gba", 0x0F85F8, 0x0000030

gUnk_080F8628:: @ 080F8628
	.incbin "baserom.gba", 0x0F8628, 0x0000020

gUnk_080F8648:: @ 080F8648
	.incbin "baserom.gba", 0x0F8648, 0x0000010

gUnk_080F8658:: @ 080F8658
	.incbin "baserom.gba", 0x0F8658, 0x0000030

Room_Caves_Boomerang:: @ 080F8688
	.4byte gUnk_080F84E8
	.4byte 0x00000000
	.4byte gUnk_080F8648
	.4byte gUnk_080F8658
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FA94
	.4byte sub_0804FA98
	.4byte gUnk_080F8628

gUnk_080F86AC:: @ 080F86AC
	.incbin "baserom.gba", 0x0F86AC, 0x0000050

gUnk_080F86FC:: @ 080F86FC
	.incbin "baserom.gba", 0x0F86FC, 0x0000010

gUnk_080F870C:: @ 080F870C
	.incbin "baserom.gba", 0x0F870C, 0x0000008

Room_Caves_ToGraveyard:: @ 080F8714
	.4byte gUnk_080F86AC
	.4byte 0x00000000
	.4byte gUnk_080F86FC
	.4byte gUnk_080F870C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FACC
	.4byte nullsub_412

gUnk_080F8734:: @ 080F8734
	.incbin "baserom.gba", 0x0F8734, 0x0000020

gUnk_080F8754:: @ 080F8754
	.incbin "baserom.gba", 0x0F8754, 0x0000010

gUnk_080F8764:: @ 080F8764
	.incbin "baserom.gba", 0x0F8764, 0x0000008

Room_Caves_2:: @ 080F876C
	.4byte gUnk_080F8734
	.4byte 0x00000000
	.4byte gUnk_080F8754
	.4byte gUnk_080F8764
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAD4
	.4byte nullsub_413

gUnk_080F878C:: @ 080F878C
	.incbin "baserom.gba", 0x0F878C, 0x0000020

gUnk_080F87AC:: @ 080F87AC
	.incbin "baserom.gba", 0x0F87AC, 0x0000010

gUnk_080F87BC:: @ 080F87BC
	.incbin "baserom.gba", 0x0F87BC, 0x0000008

Room_Caves_3:: @ 080F87C4
	.4byte gUnk_080F878C
	.4byte 0x00000000
	.4byte gUnk_080F87AC
	.4byte gUnk_080F87BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FADC
	.4byte nullsub_414

gUnk_080F87E4:: @ 080F87E4
	.incbin "baserom.gba", 0x0F87E4, 0x0000020

gUnk_080F8804:: @ 080F8804
	.incbin "baserom.gba", 0x0F8804, 0x0000010

gUnk_080F8814:: @ 080F8814
	.incbin "baserom.gba", 0x0F8814, 0x0000008

Room_Caves_4:: @ 080F881C
	.4byte gUnk_080F87E4
	.4byte 0x00000000
	.4byte gUnk_080F8804
	.4byte gUnk_080F8814
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAE4
	.4byte nullsub_415

gUnk_080F883C:: @ 080F883C
	.incbin "baserom.gba", 0x0F883C, 0x0000020

gUnk_080F885C:: @ 080F885C
	.incbin "baserom.gba", 0x0F885C, 0x0000010

gUnk_080F886C:: @ 080F886C
	.incbin "baserom.gba", 0x0F886C, 0x0000008

Room_Caves_5:: @ 080F8874
	.4byte gUnk_080F883C
	.4byte 0x00000000
	.4byte gUnk_080F885C
	.4byte gUnk_080F886C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAEC
	.4byte nullsub_416

gUnk_080F8894:: @ 080F8894
	.incbin "baserom.gba", 0x0F8894, 0x0000010

gUnk_080F88A4:: @ 080F88A4
	.incbin "baserom.gba", 0x0F88A4, 0x0000010

gUnk_080F88B4:: @ 080F88B4
	.incbin "baserom.gba", 0x0F88B4, 0x0000008

Room_Caves_6:: @ 080F88BC
	.4byte gUnk_080F8894
	.4byte 0x00000000
	.4byte gUnk_080F88A4
	.4byte gUnk_080F88B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAF4
	.4byte nullsub_417

gUnk_080F88DC:: @ 080F88DC
	.incbin "baserom.gba", 0x0F88DC, 0x0000010

gUnk_080F88EC:: @ 080F88EC
	.incbin "baserom.gba", 0x0F88EC, 0x0000070

gUnk_080F895C:: @ 080F895C
	.incbin "baserom.gba", 0x0F895C, 0x0000010

Room_Caves_KeeseChest:: @ 080F896C
	.4byte gUnk_080F88DC
	.4byte 0x00000000
	.4byte gUnk_080F88EC
	.4byte gUnk_080F895C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FAFC
	.4byte nullsub_418

gUnk_080F898C:: @ 080F898C
	.incbin "baserom.gba", 0x0F898C, 0x0000040

gUnk_080F89CC:: @ 080F89CC
	.incbin "baserom.gba", 0x0F89CC, 0x0000010

gUnk_080F89DC:: @ 080F89DC
	.incbin "baserom.gba", 0x0F89DC, 0x0000010

Room_Caves_FairyFountainTrilbyHighlands:: @ 080F89EC
	.4byte gUnk_080F898C
	.4byte 0x00000000
	.4byte gUnk_080F89CC
	.4byte gUnk_080F89DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB04
	.4byte nullsub_419

gUnk_080F8A0C:: @ 080F8A0C
	.incbin "baserom.gba", 0x0F8A0C, 0x0000040

gUnk_080F8A4C:: @ 080F8A4C
	.incbin "baserom.gba", 0x0F8A4C, 0x0000010

gUnk_080F8A5C:: @ 080F8A5C
	.incbin "baserom.gba", 0x0F8A5C, 0x0000010

Room_Caves_FairyFountainLinksHouse:: @ 080F8A6C
	.4byte gUnk_080F8A0C
	.4byte 0x00000000
	.4byte gUnk_080F8A4C
	.4byte gUnk_080F8A5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB0C
	.4byte nullsub_420

gUnk_080F8A8C:: @ 080F8A8C
	.incbin "baserom.gba", 0x0F8A8C, 0x0000010

gUnk_080F8A9C:: @ 080F8A9C
	.incbin "baserom.gba", 0x0F8A9C, 0x0000010

gUnk_080F8AAC:: @ 080F8AAC
	.incbin "baserom.gba", 0x0F8AAC, 0x0000008

Room_Caves_A:: @ 080F8AB4
	.4byte gUnk_080F8A8C
	.4byte 0x00000000
	.4byte gUnk_080F8A9C
	.4byte gUnk_080F8AAC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB14
	.4byte nullsub_421

gUnk_080F8AD4:: @ 080F8AD4
	.incbin "baserom.gba", 0x0F8AD4, 0x0000010

gUnk_080F8AE4:: @ 080F8AE4
	.incbin "baserom.gba", 0x0F8AE4, 0x0000010

gUnk_080F8AF4:: @ 080F8AF4
	.incbin "baserom.gba", 0x0F8AF4, 0x0000010

Room_Caves_HyruleTownWaterfall:: @ 080F8B04
	.4byte gUnk_080F8AD4
	.4byte 0x00000000
	.4byte gUnk_080F8AE4
	.4byte gUnk_080F8AF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB1C
	.4byte nullsub_422

gUnk_080F8B24:: @ 080F8B24
	.incbin "baserom.gba", 0x0F8B24, 0x0000020

gUnk_080F8B44:: @ 080F8B44
	.incbin "baserom.gba", 0x0F8B44, 0x0000010

gUnk_080F8B54:: @ 080F8B54
	.incbin "baserom.gba", 0x0F8B54, 0x0000018

Room_Caves_LonLonRanch:: @ 080F8B6C
	.4byte gUnk_080F8B24
	.4byte 0x00000000
	.4byte gUnk_080F8B44
	.4byte gUnk_080F8B54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB249
	.4byte nullsub_423

gUnk_080F8B8C:: @ 080F8B8C
	.incbin "baserom.gba", 0x0F8B8C, 0x0000050

gUnk_080F8BDC:: @ 080F8BDC
	.incbin "baserom.gba", 0x0F8BDC, 0x0000010

gUnk_080F8BEC:: @ 080F8BEC
	.incbin "baserom.gba", 0x0F8BEC, 0x0000018

Room_Caves_LonLonRanchSecret:: @ 080F8C04
	.4byte gUnk_080F8B8C
	.4byte 0x00000000
	.4byte gUnk_080F8BDC
	.4byte gUnk_080F8BEC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB2C
	.4byte sub_0804FB30

gUnk_080F8C24:: @ 080F8C24
	.incbin "baserom.gba", 0x0F8C24, 0x0000030

gUnk_080F8C54:: @ 080F8C54
	.incbin "baserom.gba", 0x0F8C54, 0x0000010

gUnk_080F8C64:: @ 080F8C64
	.incbin "baserom.gba", 0x0F8C64, 0x0000010

Room_Caves_TrilbyHighlands:: @ 080F8C74
	.4byte gUnk_080F8C24
	.4byte 0x00000000
	.4byte gUnk_080F8C54
	.4byte gUnk_080F8C64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB68
	.4byte nullsub_089

gUnk_080F8C94:: @ 080F8C94
	.incbin "baserom.gba", 0x0F8C94, 0x0000020

gUnk_080F8CB4:: @ 080F8CB4
	.incbin "baserom.gba", 0x0F8CB4, 0x0000010

gUnk_080F8CC4:: @ 080F8CC4
	.incbin "baserom.gba", 0x0F8CC4, 0x0000010

Room_Caves_LonLonRanchWallet:: @ 080F8CD4
	.4byte gUnk_080F8C94
	.4byte 0x00000000
	.4byte gUnk_080F8CB4
	.4byte gUnk_080F8CC4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB70
	.4byte nullsub_90

gUnk_080F8CF4:: @ 080F8CF4
	.incbin "baserom.gba", 0x0F8CF4, 0x0000110

gUnk_080F8E04:: @ 080F8E04
	.incbin "baserom.gba", 0x0F8E04, 0x0000010

gUnk_080F8E14:: @ 080F8E14
	.incbin "baserom.gba", 0x0F8E14, 0x0000008

Room_Caves_RupeeLinksHouse:: @ 080F8E1C
	.4byte gUnk_080F8CF4
	.4byte 0x00000000
	.4byte gUnk_080F8E04
	.4byte gUnk_080F8E14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB78
	.4byte nullsub_91

gUnk_080F8E3C:: @ 080F8E3C
	.incbin "baserom.gba", 0x0F8E3C, 0x0000110

gUnk_080F8F4C:: @ 080F8F4C
	.incbin "baserom.gba", 0x0F8F4C, 0x0000010

gUnk_080F8F5C:: @ 080F8F5C
	.incbin "baserom.gba", 0x0F8F5C, 0x0000008

Room_Caves_RupeeTrilbyHighlands:: @ 080F8F64
	.4byte gUnk_080F8E3C
	.4byte 0x00000000
	.4byte gUnk_080F8F4C
	.4byte gUnk_080F8F5C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB80
	.4byte nullsub_92

gUnk_080F8F84:: @ 080F8F84
	.incbin "baserom.gba", 0x0F8F84, 0x0000060

gUnk_080F8FE4:: @ 080F8FE4
	.incbin "baserom.gba", 0x0F8FE4, 0x0000010

gUnk_080F8FF4:: @ 080F8FF4
	.incbin "baserom.gba", 0x0F8FF4, 0x0000010

Room_Caves_FairyFountainMoleMitts:: @ 080F9004
	.4byte gUnk_080F8F84
	.4byte 0x00000000
	.4byte gUnk_080F8FE4
	.4byte gUnk_080F8FF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB88
	.4byte nullsub_93

gUnk_080F9024:: @ 080F9024
	.incbin "baserom.gba", 0x0F9024, 0x0000010

gUnk_080F9034:: @ 080F9034
	.incbin "baserom.gba", 0x0F9034, 0x0000030

gUnk_080F9064:: @ 080F9064
	.incbin "baserom.gba", 0x0F9064, 0x0000010

Room_Caves_KeeseChestSoutheastHyrule:: @ 080F9074
	.4byte gUnk_080F9024
	.4byte 0x00000000
	.4byte gUnk_080F9034
	.4byte gUnk_080F9064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB90
	.4byte nullsub_94

gUnk_080F9094:: @ 080F9094
	.incbin "baserom.gba", 0x0F9094, 0x0000010

gUnk_080F90A4:: @ 080F90A4
	.incbin "baserom.gba", 0x0F90A4, 0x0000020

gUnk_080F90C4:: @ 080F90C4
	.incbin "baserom.gba", 0x0F90C4, 0x0000008

Room_Caves_BottleBusinessScrub:: @ 080F90CC
	.4byte gUnk_080F9094
	.4byte 0x00000000
	.4byte gUnk_080F90A4
	.4byte gUnk_080F90C4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FB98
	.4byte nullsub_95

gUnk_080F90EC:: @ 080F90EC
	.incbin "baserom.gba", 0x0F90EC, 0x0000020

gUnk_080F910C:: @ 080F910C
	.incbin "baserom.gba", 0x0F910C, 0x0000040

gUnk_080F914C:: @ 080F914C
	.incbin "baserom.gba", 0x0F914C, 0x0000008

Room_Caves_HeartPieceHallway:: @ 080F9154
	.4byte gUnk_080F90EC
	.4byte 0x00000000
	.4byte gUnk_080F910C
	.4byte gUnk_080F914C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FBA0
	.4byte nullsub_96

gUnk_080F9174:: @ 080F9174
	.incbin "baserom.gba", 0x0F9174, 0x0000050

gUnk_080F91C4:: @ 080F91C4
	.incbin "baserom.gba", 0x0F91C4, 0x0000010

gUnk_080F91D4:: @ 080F91D4
	.incbin "baserom.gba", 0x0F91D4, 0x0000010

Room_Caves_FairyFountainBoomerang:: @ 080F91E4
	.4byte gUnk_080F9174
	.4byte 0x00000000
	.4byte gUnk_080F91C4
	.4byte gUnk_080F91D4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FBA8
	.4byte nullsub_97

gUnk_080F9204:: @ 080F9204
	.incbin "baserom.gba", 0x0F9204, 0x0000010

gUnk_080F9214:: @ 080F9214
	.incbin "baserom.gba", 0x0F9214, 0x0000020

gUnk_080F9234:: @ 080F9234
	.incbin "baserom.gba", 0x0F9234, 0x0000010

Room_Caves_KinstoneBusinessScrub:: @ 080F9244
	.4byte gUnk_080F9204
	.4byte 0x00000000
	.4byte gUnk_080F9214
	.4byte gUnk_080F9234
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FBB09
	.4byte nullsub_98

gUnk_080F9264:: @ 080F9264
	.incbin "baserom.gba", 0x0F9264, 0x00000A0

gUnk_080F9304:: @ 080F9304
	.incbin "baserom.gba", 0x0F9304, 0x000000C
	.4byte script_0800B00C
	.incbin "baserom.gba", 0x0F9314, 0x0000010

gUnk_080F9324:: @ 080F9324
	.4byte 0x0B4E4F07
	.4byte 0x00000000
	.4byte 0x01FD0038
	.4byte script_08015FC0
	.4byte 0x08060F09
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

gUnk_080F9354:: @ 080F9354
	.incbin "baserom.gba", 0x0F9354, 0x0000120

gUnk_080F9474:: @ 080F9474
	.incbin "baserom.gba", 0x0F9474, 0x0000010

gUnk_080F9484:: @ 080F9484
	.incbin "baserom.gba", 0x0F9484, 0x0000010

gUnk_080F9494:: @ 080F9494
	.incbin "baserom.gba", 0x0F9494, 0x0000014

Room_VeilFalls_Main:: @ 080F94A8
	.4byte gUnk_080F9264
	.4byte gUnk_080F9324
	.4byte gUnk_080F9354
	.4byte gUnk_080F9474
	.4byte sub_0804FBDC
	.4byte 0x00000000
	.4byte sub_0804FBB8
	.4byte sub_0804FBBC
	.4byte gUnk_080F9484
	.4byte gUnk_080F9494

gUnk_080F94D0:: @ 080F94D0
	.incbin "baserom.gba", 0x0F94D0, 0x0000040

gUnk_080F9510:: @ 080F9510
	.incbin "baserom.gba", 0x0F9510, 0x0000080

gUnk_080F9590:: @ 080F9590
	.incbin "baserom.gba", 0x0F9590, 0x0000010

Room_VeilFallsCaves_Hallway2F:: @ 080F95A0
	.4byte gUnk_080F94D0
	.4byte 0x00000000
	.4byte gUnk_080F9510
	.4byte gUnk_080F9590
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FBFC
	.4byte nullsub_424

gUnk_080F95C0:: @ 080F95C0
	.incbin "baserom.gba", 0x0F95C0, 0x0000050

gUnk_080F9610:: @ 080F9610
	.incbin "baserom.gba", 0x0F9610, 0x0000060

gUnk_080F9670:: @ 080F9670
	.incbin "baserom.gba", 0x0F9670, 0x0000010

Room_VeilFallsCaves_Hallway1F:: @ 080F9680
	.4byte gUnk_080F95C0
	.4byte 0x00000000
	.4byte gUnk_080F9610
	.4byte gUnk_080F9670
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC04
	.4byte nullsub_425

gUnk_080F96A0:: @ 080F96A0
	.incbin "baserom.gba", 0x0F96A0, 0x0000010

gUnk_080F96B0:: @ 080F96B0
	.incbin "baserom.gba", 0x0F96B0, 0x0000030

gUnk_080F96E0:: @ 080F96E0
	.incbin "baserom.gba", 0x0F96E0, 0x0000010

Room_VeilFallsCaves_SecretRoom:: @ 080F96F0
	.4byte gUnk_080F96A0
	.4byte 0x00000000
	.4byte gUnk_080F96B0
	.4byte gUnk_080F96E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC0C
	.4byte nullsub_426

gUnk_080F9710:: @ 080F9710
	.incbin "baserom.gba", 0x0F9710, 0x0000010

gUnk_080F9720:: @ 080F9720
	.incbin "baserom.gba", 0x0F9720, 0x0000040

gUnk_080F9760:: @ 080F9760
	.incbin "baserom.gba", 0x0F9760, 0x0000010

Room_VeilFallsCaves_Entrance:: @ 080F9770
	.4byte gUnk_080F9710
	.4byte 0x00000000
	.4byte gUnk_080F9720
	.4byte gUnk_080F9760
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC14
	.4byte nullsub_427

gUnk_080F9790:: @ 080F9790
	.incbin "baserom.gba", 0x0F9790, 0x0000070

gUnk_080F9800:: @ 080F9800
	.incbin "baserom.gba", 0x0F9800, 0x0000020

gUnk_080F9820:: @ 080F9820
	.incbin "baserom.gba", 0x0F9820, 0x0000010

Room_VeilFallsCaves_Exit:: @ 080F9830
	.4byte gUnk_080F9790
	.4byte 0x00000000
	.4byte gUnk_080F9800
	.4byte gUnk_080F9820
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC1C
	.4byte nullsub_428

gUnk_080F9850:: @ 080F9850
	.incbin "baserom.gba", 0x0F9850, 0x0000060

gUnk_080F98B0:: @ 080F98B0
	.incbin "baserom.gba", 0x0F98B0, 0x0000010

gUnk_080F98C0:: @ 080F98C0
	.incbin "baserom.gba", 0x0F98C0, 0x0000010

Room_VeilFallsCaves_SecretChest:: @ 080F98D0
	.4byte gUnk_080F9850
	.4byte 0x00000000
	.4byte gUnk_080F98B0
	.4byte gUnk_080F98C0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC24
	.4byte nullsub_429

gUnk_080F98F0:: @ 080F98F0
	.incbin "baserom.gba", 0x0F98F0, 0x0000010

gUnk_080F9900:: @ 080F9900
	.incbin "baserom.gba", 0x0F9900, 0x0000020

gUnk_080F9920:: @ 080F9920
	.incbin "baserom.gba", 0x0F9920, 0x0000010

Room_VeilFallsCaves_SecretStaircases:: @ 080F9930
	.4byte gUnk_080F98F0
	.4byte 0x00000000
	.4byte gUnk_080F9900
	.4byte gUnk_080F9920
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC2C
	.4byte nullsub_430

gUnk_080F9950:: @ 080F9950
	.incbin "baserom.gba", 0x0F9950, 0x0000010

gUnk_080F9960:: @ 080F9960
	.incbin "baserom.gba", 0x0F9960, 0x0000050

gUnk_080F99B0:: @ 080F99B0
	.incbin "baserom.gba", 0x0F99B0, 0x0000008

Room_VeilFallsCaves_BlockPuzzle:: @ 080F99B8
	.4byte gUnk_080F9950
	.4byte 0x00000000
	.4byte gUnk_080F9960
	.4byte gUnk_080F99B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC34
	.4byte nullsub_431

gUnk_080F99D8:: @ 080F99D8
	.incbin "baserom.gba", 0x0F99D8, 0x0000100

gUnk_080F9AD8:: @ 080F9AD8
	.incbin "baserom.gba", 0x0F9AD8, 0x0000020

gUnk_080F9AF8:: @ 080F9AF8
	.incbin "baserom.gba", 0x0F9AF8, 0x0000008

Room_VeilFallsCaves_RupeePath:: @ 080F9B00
	.4byte gUnk_080F99D8
	.4byte 0x00000000
	.4byte gUnk_080F9AD8
	.4byte gUnk_080F9AF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC3C
	.4byte nullsub_432

gUnk_080F9B20:: @ 080F9B20
	.incbin "baserom.gba", 0x0F9B20, 0x0000020

gUnk_080F9B40:: @ 080F9B40
	.incbin "baserom.gba", 0x0F9B40, 0x0000010

gUnk_080F9B50:: @ 080F9B50
	.incbin "baserom.gba", 0x0F9B50, 0x0000008

Room_VeilFallsCaves_HeartPiece:: @ 080F9B58
	.4byte gUnk_080F9B20
	.4byte 0x00000000
	.4byte gUnk_080F9B40
	.4byte gUnk_080F9B50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC44
	.4byte nullsub_433

gUnk_080F9B78:: @ 080F9B78
	.incbin "baserom.gba", 0x0F9B78, 0x000001C
	.4byte script_08009318
	.incbin "baserom.gba", 0x0F9B98, 0x000000C
	.4byte script_08009340
	.incbin "baserom.gba", 0x0F9BA8, 0x000000C
	.4byte script_08009340
	.incbin "baserom.gba", 0x0F9BB8, 0x000000C
	.4byte script_08009348
	.incbin "baserom.gba", 0x0F9BC8, 0x0000030

gUnk_080F9BF8:: @ 080F9BF8
	.incbin "baserom.gba", 0x0F9BF8, 0x000002C
	.4byte script_08009320
	.incbin "baserom.gba", 0x0F9C28, 0x0000010

gUnk_080F9C38:: @ 080F9C38
	.incbin "baserom.gba", 0x0F9C38, 0x000000C
	.4byte script_080094A4
	.incbin "baserom.gba", 0x0F9C48, 0x0000010

gUnk_080F9C58:: @ 080F9C58
	.incbin "baserom.gba", 0x0F9C58, 0x000000C
	.4byte script_080094CC
	.incbin "baserom.gba", 0x0F9C68, 0x0000010

gUnk_080F9C78:: @ 080F9C78
	.incbin "baserom.gba", 0x0F9C78, 0x0000020

gUnk_080F9C98:: @ 080F9C98
	.incbin "baserom.gba", 0x0F9C98, 0x0000010

gUnk_080F9CA8:: @ 080F9CA8
	.incbin "baserom.gba", 0x0F9CA8, 0x0000008

Room_VeilFallsTop_Main:: @ 080F9CB0
	.4byte gUnk_080F9B78
	.4byte gUnk_080F9C78
	.4byte gUnk_080F9C98
	.4byte gUnk_080F9CA8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC4C
	.4byte sub_0804FC6C

gUnk_080F9CD0:: @ 080F9CD0
	.incbin "baserom.gba", 0x0F9CD0, 0x0000070

gUnk_080F9D40:: @ 080F9D40
	.incbin "baserom.gba", 0x0F9D40, 0x0000010

gUnk_080F9D50:: @ 080F9D50
	.incbin "baserom.gba", 0x0F9D50, 0x0000008

Room_47_0:: @ 080F9D58
	.4byte gUnk_080F9CD0
	.4byte 0x00000000
	.4byte gUnk_080F9D40
	.4byte gUnk_080F9D50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC7C
	.4byte nullsub_99

gUnk_080F9D78:: @ 080F9D78
	.incbin "baserom.gba", 0x0F9D78, 0x0000080

gUnk_080F9DF8:: @ 080F9DF8
	.incbin "baserom.gba", 0x0F9DF8, 0x0000010

gUnk_080F9E08:: @ 080F9E08
	.incbin "baserom.gba", 0x0F9E08, 0x0000008

Room_47_1:: @ 080F9E10
	.4byte gUnk_080F9D78
	.4byte 0x00000000
	.4byte gUnk_080F9DF8
	.4byte gUnk_080F9E08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC84
	.4byte nullsub_100

gUnk_080F9E30:: @ 080F9E30
	.incbin "baserom.gba", 0x0F9E30, 0x0000030

gUnk_080F9E60:: @ 080F9E60
	.incbin "baserom.gba", 0x0F9E60, 0x0000010

gUnk_080F9E70:: @ 080F9E70
	.incbin "baserom.gba", 0x0F9E70, 0x0000008

Room_47_2:: @ 080F9E78
	.4byte gUnk_080F9E30
	.4byte 0x00000000
	.4byte gUnk_080F9E60
	.4byte gUnk_080F9E70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC8C
	.4byte nullsub_101

gUnk_080F9E98:: @ 080F9E98
	.incbin "baserom.gba", 0x0F9E98, 0x0000010

gUnk_080F9EA8:: @ 080F9EA8
	.incbin "baserom.gba", 0x0F9EA8, 0x0000010

gUnk_080F9EB8:: @ 080F9EB8
	.incbin "baserom.gba", 0x0F9EB8, 0x0000008

Room_47_3:: @ 080F9EC0
	.4byte gUnk_080F9E98
	.4byte 0x00000000
	.4byte gUnk_080F9EA8
	.4byte gUnk_080F9EB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC94
	.4byte nullsub_102

gUnk_080F9EE0:: @ 080F9EE0
	.incbin "baserom.gba", 0x0F9EE0, 0x0000010

gUnk_080F9EF0:: @ 080F9EF0
	.incbin "baserom.gba", 0x0F9EF0, 0x0000010

gUnk_080F9F00:: @ 080F9F00
	.incbin "baserom.gba", 0x0F9F00, 0x0000008

Room_47_4:: @ 080F9F08
	.4byte gUnk_080F9EE0
	.4byte 0x00000000
	.4byte gUnk_080F9EF0
	.4byte gUnk_080F9F00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FC9C
	.4byte nullsub_103

gUnk_080F9F28:: @ 080F9F28
	.incbin "baserom.gba", 0x0F9F28, 0x000000C
	.4byte script_080160A8
	.incbin "baserom.gba", 0x0F9F38, 0x000000C
	.4byte script_0801613C
	.incbin "baserom.gba", 0x0F9F48, 0x0000010

gUnk_080F9F58:: @ 080F9F58
	.incbin "baserom.gba", 0x0F9F58, 0x0000030

gUnk_080F9F88:: @ 080F9F88
	.incbin "baserom.gba", 0x0F9F88, 0x0000020

gUnk_080F9FA8:: @ 080F9FA8
	.incbin "baserom.gba", 0x0F9FA8, 0x000001C
	.4byte script_08016190
	.incbin "baserom.gba", 0x0F9FC8, 0x0000010

gUnk_080F9FD8:: @ 080F9FD8
	.incbin "baserom.gba", 0x0F9FD8, 0x0000010

gUnk_080F9FE8:: @ 080F9FE8
	.incbin "baserom.gba", 0x0F9FE8, 0x0000010

Room_TreeInteriors_WitchHut:: @ 080F9FF8
	.4byte gUnk_080F9F28
	.4byte gUnk_080F9F58
	.4byte gUnk_080F9FD8
	.4byte gUnk_080F9FE8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCA4
	.4byte sub_0804FCA8

gUnk_080FA018:: @ 080FA018
	.incbin "baserom.gba", 0x0FA018, 0x0000020

gUnk_080FA038:: @ 080FA038
	.incbin "baserom.gba", 0x0FA038, 0x0000010

gUnk_080FA048:: @ 080FA048
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA018
	.4byte 0x00000000
	.4byte gUnk_080FA038
	.4byte gUnk_080FA048
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCD4
	.4byte nullsub_434

gUnk_080FA070:: @ 080FA070
	.incbin "baserom.gba", 0x0FA070, 0x0000020

gUnk_080FA090:: @ 080FA090
	.incbin "baserom.gba", 0x0FA090, 0x0000010

gUnk_080FA0A0:: @ 080FA0A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA070
	.4byte 0x00000000
	.4byte gUnk_080FA090
	.4byte gUnk_080FA0A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCDC
	.4byte nullsub_435

gUnk_080FA0C8:: @ 080FA0C8
	.incbin "baserom.gba", 0x0FA0C8, 0x0000020

gUnk_080FA0E8:: @ 080FA0E8
	.incbin "baserom.gba", 0x0FA0E8, 0x0000010

gUnk_080FA0F8:: @ 080FA0F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA0C8
	.4byte 0x00000000
	.4byte gUnk_080FA0E8
	.4byte gUnk_080FA0F8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCE4
	.4byte nullsub_436

gUnk_080FA120:: @ 080FA120
	.incbin "baserom.gba", 0x0FA120, 0x0000020

gUnk_080FA140:: @ 080FA140
	.incbin "baserom.gba", 0x0FA140, 0x0000010

gUnk_080FA150:: @ 080FA150
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA120
	.4byte 0x00000000
	.4byte gUnk_080FA140
	.4byte gUnk_080FA150
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCEC
	.4byte nullsub_437

gUnk_080FA178:: @ 080FA178
	.incbin "baserom.gba", 0x0FA178, 0x0000020

gUnk_080FA198:: @ 080FA198
	.incbin "baserom.gba", 0x0FA198, 0x0000010

gUnk_080FA1A8:: @ 080FA1A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA178
	.4byte 0x00000000
	.4byte gUnk_080FA198
	.4byte gUnk_080FA1A8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCF4
	.4byte nullsub_438

gUnk_080FA1D0:: @ 080FA1D0
	.incbin "baserom.gba", 0x0FA1D0, 0x0000020

gUnk_080FA1F0:: @ 080FA1F0
	.incbin "baserom.gba", 0x0FA1F0, 0x0000010

gUnk_080FA200:: @ 080FA200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA1D0
	.4byte 0x00000000
	.4byte gUnk_080FA1F0
	.4byte gUnk_080FA200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FCFC
	.4byte nullsub_439

gUnk_080FA228:: @ 080FA228
	.incbin "baserom.gba", 0x0FA228, 0x0000020

gUnk_080FA248:: @ 080FA248
	.incbin "baserom.gba", 0x0FA248, 0x0000010

gUnk_080FA258:: @ 080FA258
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA228
	.4byte 0x00000000
	.4byte gUnk_080FA248
	.4byte gUnk_080FA258
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD04
	.4byte nullsub_440

gUnk_080FA280:: @ 080FA280
	.incbin "baserom.gba", 0x0FA280, 0x0000020

gUnk_080FA2A0:: @ 080FA2A0
	.incbin "baserom.gba", 0x0FA2A0, 0x0000010

gUnk_080FA2B0:: @ 080FA2B0
	.4byte 0x6E5C1702
	.4byte 0x000100C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA280
	.4byte 0x00000000
	.4byte gUnk_080FA2A0
	.4byte gUnk_080FA2B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD0C
	.4byte nullsub_441

gUnk_080FA2E0:: @ 080FA2E0
	.incbin "baserom.gba", 0x0FA2E0, 0x0000020

gUnk_080FA300:: @ 080FA300
	.incbin "baserom.gba", 0x0FA300, 0x0000010

gUnk_080FA310:: @ 080FA310
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA2E0
	.4byte 0x00000000
	.4byte gUnk_080FA300
	.4byte gUnk_080FA310
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD14
	.4byte nullsub_442

gUnk_080FA338:: @ 080FA338
	.incbin "baserom.gba", 0x0FA338, 0x0000020

gUnk_080FA358:: @ 080FA358
	.incbin "baserom.gba", 0x0FA358, 0x0000010

gUnk_080FA368:: @ 080FA368
	.4byte 0x6F5C1802
	.4byte 0x000100C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA338
	.4byte 0x00000000
	.4byte gUnk_080FA358
	.4byte gUnk_080FA368
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD1C
	.4byte nullsub_443

gUnk_080FA398:: @ 080FA398
	.incbin "baserom.gba", 0x0FA398, 0x0000020

gUnk_080FA3B8:: @ 080FA3B8
	.incbin "baserom.gba", 0x0FA3B8, 0x0000010

gUnk_080FA3C8:: @ 080FA3C8
	.4byte 0x705C1902
	.4byte 0x000100C7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA398
	.4byte 0x00000000
	.4byte gUnk_080FA3B8
	.4byte gUnk_080FA3C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD24
	.4byte nullsub_444

gUnk_080FA3F8:: @ 080FA3F8
	.incbin "baserom.gba", 0x0FA3F8, 0x0000020

gUnk_080FA418:: @ 080FA418
	.incbin "baserom.gba", 0x0FA418, 0x0000010

gUnk_080FA428:: @ 080FA428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA3F8
	.4byte 0x00000000
	.4byte gUnk_080FA418
	.4byte gUnk_080FA428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD2C
	.4byte nullsub_445

gUnk_080FA450:: @ 080FA450
	.incbin "baserom.gba", 0x0FA450, 0x0000020

gUnk_080FA470:: @ 080FA470
	.incbin "baserom.gba", 0x0FA470, 0x0000010

gUnk_080FA480:: @ 080FA480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA450
	.4byte 0x00000000
	.4byte gUnk_080FA470
	.4byte gUnk_080FA480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD34
	.4byte nullsub_446

gUnk_080FA4A8:: @ 080FA4A8
	.incbin "baserom.gba", 0x0FA4A8, 0x0000020

gUnk_080FA4C8:: @ 080FA4C8
	.incbin "baserom.gba", 0x0FA4C8, 0x0000010

gUnk_080FA4D8:: @ 080FA4D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA4A8
	.4byte 0x00000000
	.4byte gUnk_080FA4C8
	.4byte gUnk_080FA4D8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD3C
	.4byte nullsub_447

gUnk_080FA500:: @ 080FA500
	.incbin "baserom.gba", 0x0FA500, 0x0000020

gUnk_080FA520:: @ 080FA520
	.incbin "baserom.gba", 0x0FA520, 0x0000010

gUnk_080FA530:: @ 080FA530
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte gUnk_080FA500
	.4byte 0x00000000
	.4byte gUnk_080FA520
	.4byte gUnk_080FA530
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD44
	.4byte nullsub_448

gUnk_080FA558:: @ 080FA558
	.incbin "baserom.gba", 0x0FA558, 0x0000020

gUnk_080FA578:: @ 080FA578
	.incbin "baserom.gba", 0x0FA578, 0x0000010

gUnk_080FA588:: @ 080FA588
	.incbin "baserom.gba", 0x0FA588, 0x0000008

Room_TreeInteriors_StairsToCarlov:: @ 080FA590
	.4byte gUnk_080FA558
	.4byte 0x00000000
	.4byte gUnk_080FA578
	.4byte gUnk_080FA588
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD4C
	.4byte nullsub_449

gUnk_080FA5B0:: @ 080FA5B0
	.incbin "baserom.gba", 0x0FA5B0, 0x0000020

gUnk_080FA5D0:: @ 080FA5D0
	.incbin "baserom.gba", 0x0FA5D0, 0x000000C
	.4byte script_08012E88
	.incbin "baserom.gba", 0x0FA5E0, 0x0000010

gUnk_080FA5F0:: @ 080FA5F0
	.incbin "baserom.gba", 0x0FA5F0, 0x0000020

gUnk_080FA610:: @ 080FA610
	.incbin "baserom.gba", 0x0FA610, 0x0000010

gUnk_080FA620:: @ 080FA620
	.incbin "baserom.gba", 0x0FA620, 0x0000008

Room_TreeInteriors_PercysTreehouse:: @ 080FA628
	.4byte gUnk_080FA5B0
	.4byte gUnk_080FA5F0
	.4byte gUnk_080FA610
	.4byte gUnk_080FA620
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD54
	.4byte sub_0804FD58

gUnk_080FA648:: @ 080FA648
	.incbin "baserom.gba", 0x0FA648, 0x0000030

gUnk_080FA678:: @ 080FA678
	.incbin "baserom.gba", 0x0FA678, 0x0000010

gUnk_080FA688:: @ 080FA688
	.incbin "baserom.gba", 0x0FA688, 0x0000008

Room_TreeInteriors_HeartPiece:: @ 080FA690
	.4byte gUnk_080FA648
	.4byte 0x00000000
	.4byte gUnk_080FA678
	.4byte gUnk_080FA688
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD70
	.4byte nullsub_450

gUnk_080FA6B0:: @ 080FA6B0
	.incbin "baserom.gba", 0x0FA6B0, 0x0000020

gUnk_080FA6D0:: @ 080FA6D0
	.incbin "baserom.gba", 0x0FA6D0, 0x0000010

gUnk_080FA6E0:: @ 080FA6E0
	.incbin "baserom.gba", 0x0FA6E0, 0x0000008

Room_TreeInteriors_StairsToBladeBrother:: @ 080FA6E8
	.4byte gUnk_080FA6B0
	.4byte 0x00000000
	.4byte gUnk_080FA6D0
	.4byte gUnk_080FA6E0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD78
	.4byte nullsub_451

gUnk_080FA708:: @ 080FA708
	.incbin "baserom.gba", 0x0FA708, 0x0000020

gUnk_080FA728:: @ 080FA728
	.incbin "baserom.gba", 0x0FA728, 0x0000010

gUnk_080FA738:: @ 080FA738
	.incbin "baserom.gba", 0x0FA738, 0x0000008

Room_TreeInteriors_14:: @ 080FA740
	.4byte gUnk_080FA708
	.4byte 0x00000000
	.4byte gUnk_080FA728
	.4byte gUnk_080FA738
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD80
	.4byte nullsub_452

gUnk_080FA760:: @ 080FA760
	.incbin "baserom.gba", 0x0FA760, 0x0000020

gUnk_080FA780:: @ 080FA780
	.incbin "baserom.gba", 0x0FA780, 0x0000010

gUnk_080FA790:: @ 080FA790
	.incbin "baserom.gba", 0x0FA790, 0x0000008

Room_TreeInteriors_BoomerangNorthwest:: @ 080FA798
	.4byte gUnk_080FA760
	.4byte 0x00000000
	.4byte gUnk_080FA780
	.4byte gUnk_080FA790
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD88
	.4byte nullsub_453

gUnk_080FA7B8:: @ 080FA7B8
	.incbin "baserom.gba", 0x0FA7B8, 0x0000020

gUnk_080FA7D8:: @ 080FA7D8
	.incbin "baserom.gba", 0x0FA7D8, 0x0000010

gUnk_080FA7E8:: @ 080FA7E8
	.incbin "baserom.gba", 0x0FA7E8, 0x0000008

Room_TreeInteriors_BoomerangNortheast:: @ 080FA7F0
	.4byte gUnk_080FA7B8
	.4byte 0x00000000
	.4byte gUnk_080FA7D8
	.4byte gUnk_080FA7E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD90
	.4byte nullsub_454

gUnk_080FA810:: @ 080FA810
	.incbin "baserom.gba", 0x0FA810, 0x0000020

gUnk_080FA830:: @ 080FA830
	.incbin "baserom.gba", 0x0FA830, 0x0000010

gUnk_080FA840:: @ 080FA840
	.incbin "baserom.gba", 0x0FA840, 0x0000008

Room_TreeInteriors_BoomerangSouthwest:: @ 080FA848
	.4byte gUnk_080FA810
	.4byte 0x00000000
	.4byte gUnk_080FA830
	.4byte gUnk_080FA840
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FD98
	.4byte nullsub_455

gUnk_080FA868:: @ 080FA868
	.incbin "baserom.gba", 0x0FA868, 0x0000020

gUnk_080FA888:: @ 080FA888
	.incbin "baserom.gba", 0x0FA888, 0x0000010

gUnk_080FA898:: @ 080FA898
	.incbin "baserom.gba", 0x0FA898, 0x0000008

Room_TreeInteriors_BoomerangSoutheast:: @ 080FA8A0
	.4byte gUnk_080FA868
	.4byte 0x00000000
	.4byte gUnk_080FA888
	.4byte gUnk_080FA898
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDA0
	.4byte nullsub_456

gUnk_080FA8C0:: @ 080FA8C0
	.incbin "baserom.gba", 0x0FA8C0, 0x0000030

gUnk_080FA8F0:: @ 080FA8F0
	.incbin "baserom.gba", 0x0FA8F0, 0x0000010

gUnk_080FA900:: @ 080FA900
	.incbin "baserom.gba", 0x0FA900, 0x0000008

Room_TreeInteriors_HeartPieceSouthwestField:: @ 080FA908
	.4byte gUnk_080FA8C0
	.4byte 0x00000000
	.4byte gUnk_080FA8F0
	.4byte gUnk_080FA900
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDA8
	.4byte nullsub_457

gUnk_080FA928:: @ 080FA928
	.incbin "baserom.gba", 0x0FA928, 0x0000020

gUnk_080FA948:: @ 080FA948
	.incbin "baserom.gba", 0x0FA948, 0x0000010

gUnk_080FA958:: @ 080FA958
	.incbin "baserom.gba", 0x0FA958, 0x0000008

Room_TreeInteriors_StairsToFairyFountain:: @ 080FA960
	.4byte gUnk_080FA928
	.4byte 0x00000000
	.4byte gUnk_080FA948
	.4byte gUnk_080FA958
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDB0
	.4byte nullsub_458

gUnk_080FA980:: @ 080FA980
	.incbin "baserom.gba", 0x0FA980, 0x0000020

gUnk_080FA9A0:: @ 080FA9A0
	.incbin "baserom.gba", 0x0FA9A0, 0x0000010

gUnk_080FA9B0:: @ 080FA9B0
	.incbin "baserom.gba", 0x0FA9B0, 0x0000008

Room_TreeInteriors_StairsToWalletFairy:: @ 080FA9B8
	.4byte gUnk_080FA980
	.4byte 0x00000000
	.4byte gUnk_080FA9A0
	.4byte gUnk_080FA9B0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDB8
	.4byte nullsub_459

gUnk_080FA9D8:: @ 080FA9D8
	.incbin "baserom.gba", 0x0FA9D8, 0x0000020

gUnk_080FA9F8:: @ 080FA9F8
	.incbin "baserom.gba", 0x0FA9F8, 0x0000060

gUnk_080FAA58:: @ 080FAA58
	.incbin "baserom.gba", 0x0FAA58, 0x0000010

gUnk_080FAA68:: @ 080FAA68
	.incbin "baserom.gba", 0x0FAA68, 0x0000008

Room_TreeInteriors_1C:: @ 080FAA70
	.4byte gUnk_080FA9D8
	.4byte gUnk_080FA9F8
	.4byte gUnk_080FAA58
	.4byte gUnk_080FAA68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDC0
	.4byte nullsub_460

gUnk_080FAA90:: @ 080FAA90
	.incbin "baserom.gba", 0x0FAA90, 0x0000020

gUnk_080FAAB0:: @ 080FAAB0
	.incbin "baserom.gba", 0x0FAAB0, 0x0000010

gUnk_080FAAC0:: @ 080FAAC0
	.incbin "baserom.gba", 0x0FAAC0, 0x0000010

gUnk_080FAAD0:: @ 080FAAD0
	.incbin "baserom.gba", 0x0FAAD0, 0x0000008

Room_TreeInteriors_StairsToBusinessScrub:: @ 080FAAD8
	.4byte gUnk_080FAA90
	.4byte gUnk_080FAAB0
	.4byte gUnk_080FAAC0
	.4byte gUnk_080FAAD0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDC8
	.4byte nullsub_461

gUnk_080FAAF8:: @ 080FAAF8
	.incbin "baserom.gba", 0x0FAAF8, 0x0000020

gUnk_080FAB18:: @ 080FAB18
	.incbin "baserom.gba", 0x0FAB18, 0x0000067

gUnk_080FAB7F:: @ 080FAB7F
	.incbin "baserom.gba", 0x0FAB7F, 0x0000009

gUnk_080FAB88:: @ 080FAB88
	.incbin "baserom.gba", 0x0FAB88, 0x0000010

gUnk_080FAB98:: @ 080FAB98
	.incbin "baserom.gba", 0x0FAB98, 0x0000008

Room_TreeInteriors_1E:: @ 080FABA0
	.4byte gUnk_080FAAF8
	.4byte gUnk_080FAB18
	.4byte gUnk_080FAB88
	.4byte gUnk_080FAB98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDD0
	.4byte nullsub_462

gUnk_080FABC0:: @ 080FABC0
	.incbin "baserom.gba", 0x0FABC0, 0x0000030

gUnk_080FABF0:: @ 080FABF0
	.incbin "baserom.gba", 0x0FABF0, 0x0000010

gUnk_080FAC00:: @ 080FAC00
	.incbin "baserom.gba", 0x0FAC00, 0x0000008

Room_TreeInteriors_1F:: @ 080FAC08
	.4byte gUnk_080FABC0
	.4byte 0x00000000
	.4byte gUnk_080FABF0
	.4byte gUnk_080FAC00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FDD8
	.4byte nullsub_463

gUnk_080FAC28:: @ 080FAC28
	.incbin "baserom.gba", 0x0FAC28, 0x0000060

gUnk_080FAC88:: @ 080FAC88
	.incbin "baserom.gba", 0x0FAC88, 0x0000030

gUnk_080FACB8:: @ 080FACB8
	.incbin "baserom.gba", 0x0FACB8, 0x0000090

gUnk_080FAD48:: @ 080FAD48
	.incbin "baserom.gba", 0x0FAD48, 0x000000C
	.4byte script_0800A9F4
	.incbin "baserom.gba", 0x0FAD58, 0x000000C
	.4byte script_0800AA48
	.incbin "baserom.gba", 0x0FAD68, 0x000000C
	.4byte script_0800AA6C
	.incbin "baserom.gba", 0x0FAD78, 0x000000C
	.4byte script_0800AA90
	.incbin "baserom.gba", 0x0FAD88, 0x000000C
	.4byte script_0800AAB4
	.incbin "baserom.gba", 0x0FAD98, 0x0000010

gUnk_080FADA8:: @ 080FADA8
	.incbin "baserom.gba", 0x0FADA8, 0x0000060

gUnk_080FAE08:: @ 080FAE08
	.incbin "baserom.gba", 0x0FAE08, 0x0000008

gUnk_080FAE10:: @ 080FAE10
	.incbin "baserom.gba", 0x0FAE10, 0x0000020

gUnk_080FAE30:: @ 080FAE30
	.incbin "baserom.gba", 0x0FAE30, 0x0000014

gUnk_080FAE44:: @ 080FAE44
	.incbin "baserom.gba", 0x0FAE44, 0x0000014

gUnk_080FAE58:: @ 080FAE58
	.incbin "baserom.gba", 0x0FAE58, 0x0000014

Room_MtCrenel_MountainTop:: @ 080FAE6C
	.4byte gUnk_080FAC28
	.4byte gUnk_080FAC88
	.4byte gUnk_080FADA8
	.4byte gUnk_080FAE08
	.4byte sub_0804FE40
	.4byte 0x00000000
	.4byte sub_0804FDE0
	.4byte sub_0804FE04
	.4byte gUnk_080FAE10
	.4byte gUnk_080FAE30
	.4byte gUnk_080FAE44
	.4byte gUnk_080FAE58

gUnk_080FAE9C:: @ 080FAE9C
	.incbin "baserom.gba", 0x0FAE9C, 0x0000020

gUnk_080FAEBC:: @ 080FAEBC
	.incbin "baserom.gba", 0x0FAEBC, 0x00000E0

gUnk_080FAF9C:: @ 080FAF9C
	.incbin "baserom.gba", 0x0FAF9C, 0x0000018

Room_MtCrenel_WallClimb:: @ 080FAFB4
	.4byte gUnk_080FAE9C
	.4byte 0x00000000
	.4byte gUnk_080FAEBC
	.4byte gUnk_080FAF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FE4C
	.4byte nullsub_104

gUnk_080FAFD4:: @ 080FAFD4
	.incbin "baserom.gba", 0x0FAFD4, 0x0000010

gUnk_080FAFE4:: @ 080FAFE4
	.incbin "baserom.gba", 0x0FAFE4, 0x000000C
	.4byte script_0800AF68
	.incbin "baserom.gba", 0x0FAFF4, 0x0000010

gUnk_080FB004:: @ 080FB004
	.incbin "baserom.gba", 0x0FB004, 0x000000C
	.4byte script_0800B00C
	.incbin "baserom.gba", 0x0FB014, 0x0000010

gUnk_080FB024:: @ 080FB024
	.incbin "baserom.gba", 0x0FB024, 0x00000E0

gUnk_080FB104:: @ 080FB104
	.incbin "baserom.gba", 0x0FB104, 0x00000F0

gUnk_080FB1F4:: @ 080FB1F4
	.incbin "baserom.gba", 0x0FB1F4, 0x0000020

gUnk_080FB214:: @ 080FB214
	.incbin "baserom.gba", 0x0FB214, 0x0000020

gUnk_080FB234:: @ 080FB234
	.incbin "baserom.gba", 0x0FB234, 0x0000014

gUnk_080FB248:: @ 080FB248
	.incbin "baserom.gba", 0x0FB248, 0x0000014

gUnk_080FB25C:: @ 080FB25C
	.incbin "baserom.gba", 0x0FB25C, 0x0000014

Room_MtCrenel_CaveOfFlamesEntrance:: @ 080FB270
	.4byte gUnk_080FAFD4
	.4byte gUnk_080FB024
	.4byte gUnk_080FB104
	.4byte gUnk_080FB1F4
	.4byte sub_0804FEAC
	.4byte 0x00000000
	.4byte sub_0804FE54
	.4byte sub_0804FE58
	.4byte gUnk_080FB214
	.4byte gUnk_080FB234
	.4byte gUnk_080FB248
	.4byte gUnk_080FB25C

gUnk_080FB2A0:: @ 080FB2A0
	.incbin "baserom.gba", 0x0FB2A0, 0x0000040

gUnk_080FB2E0:: @ 080FB2E0
	.incbin "baserom.gba", 0x0FB2E0, 0x0000130

gUnk_080FB410:: @ 080FB410
	.incbin "baserom.gba", 0x0FB410, 0x0000050

Room_MtCrenel_GustJarShortcut:: @ 080FB460
	.4byte gUnk_080FB2A0
	.4byte 0x00000000
	.4byte gUnk_080FB2E0
	.4byte gUnk_080FB410
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FECC
	.4byte nullsub_464

gUnk_080FB480:: @ 080FB480
	.incbin "baserom.gba", 0x0FB480, 0x0000150

gUnk_080FB5D0:: @ 080FB5D0
	.incbin "baserom.gba", 0x0FB5D0, 0x0000030

gUnk_080FB600:: @ 080FB600
	.incbin "baserom.gba", 0x0FB600, 0x0000100

gUnk_080FB700:: @ 080FB700
	.incbin "baserom.gba", 0x0FB700, 0x0000048

gUnk_080FB748:: @ 080FB748
	.incbin "baserom.gba", 0x0FB748, 0x0000020

gUnk_080FB768:: @ 080FB768
	.incbin "baserom.gba", 0x0FB768, 0x0000014

gUnk_080FB77C:: @ 080FB77C
	.incbin "baserom.gba", 0x0FB77C, 0x0000014

gUnk_080FB790:: @ 080FB790
	.incbin "baserom.gba", 0x0FB790, 0x0000014

Room_MtCrenel_Entrance:: @ 080FB7A4
	.4byte gUnk_080FB480
	.4byte gUnk_080FB5D0
	.4byte gUnk_080FB600
	.4byte gUnk_080FB700
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FED4
	.4byte sub_0804FED8
	.4byte gUnk_080FB748
	.4byte gUnk_080FB768
	.4byte gUnk_080FB77C
	.4byte gUnk_080FB790

gUnk_080FB7D4:: @ 080FB7D4
	.incbin "baserom.gba", 0x0FB7D4, 0x0000070

gUnk_080FB844:: @ 080FB844
	.incbin "baserom.gba", 0x0FB844, 0x0000020

gUnk_080FB864:: @ 080FB864
	.incbin "baserom.gba", 0x0FB864, 0x0000050

gUnk_080FB8B4:: @ 080FB8B4
	.incbin "baserom.gba", 0x0FB8B4, 0x0000008

Room_CrenelCaves_BlockPushing:: @ 080FB8BC
	.4byte gUnk_080FB7D4
	.4byte gUnk_080FB844
	.4byte gUnk_080FB864
	.4byte gUnk_080FB8B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FEEC
	.4byte nullsub_465

gUnk_080FB8DC:: @ 080FB8DC
	.incbin "baserom.gba", 0x0FB8DC, 0x0000030

gUnk_080FB90C:: @ 080FB90C
	.incbin "baserom.gba", 0x0FB90C, 0x0000010

gUnk_080FB91C:: @ 080FB91C
	.incbin "baserom.gba", 0x0FB91C, 0x0000010

gUnk_080FB92C:: @ 080FB92C
	.incbin "baserom.gba", 0x0FB92C, 0x0000008

Room_CrenelCaves_PillarCave:: @ 080FB934
	.4byte gUnk_080FB8DC
	.4byte gUnk_080FB90C
	.4byte gUnk_080FB91C
	.4byte gUnk_080FB92C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FEF4
	.4byte nullsub_466

gUnk_080FB954:: @ 080FB954
	.incbin "baserom.gba", 0x0FB954, 0x0000090

gUnk_080FB9E4:: @ 080FB9E4
	.incbin "baserom.gba", 0x0FB9E4, 0x0000010

gUnk_080FB9F4:: @ 080FB9F4
	.incbin "baserom.gba", 0x0FB9F4, 0x0000070

gUnk_080FBA64:: @ 080FBA64
	.incbin "baserom.gba", 0x0FBA64, 0x0000008

Room_CrenelCaves_BridgeSwitch:: @ 080FBA6C
	.4byte gUnk_080FB954
	.4byte gUnk_080FB9E4
	.4byte gUnk_080FB9F4
	.4byte gUnk_080FBA64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FEFC
	.4byte nullsub_467

gUnk_080FBA8C:: @ 080FBA8C
	.incbin "baserom.gba", 0x0FBA8C, 0x0000010

gUnk_080FBA9C:: @ 080FBA9C
	.incbin "baserom.gba", 0x0FBA9C, 0x0000010

gUnk_080FBAAC:: @ 080FBAAC
	.incbin "baserom.gba", 0x0FBAAC, 0x0000030

gUnk_080FBADC:: @ 080FBADC
	.incbin "baserom.gba", 0x0FBADC, 0x0000010

Room_CrenelCaves_ExitToMines:: @ 080FBAEC
	.4byte gUnk_080FBA8C
	.4byte gUnk_080FBA9C
	.4byte gUnk_080FBAAC
	.4byte gUnk_080FBADC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF04
	.4byte nullsub_468

gUnk_080FBB0C:: @ 080FBB0C
	.incbin "baserom.gba", 0x0FBB0C, 0x0000010

gUnk_080FBB1C:: @ 080FBB1C
	.incbin "baserom.gba", 0x0FBB1C, 0x0000010

gUnk_080FBB2C:: @ 080FBB2C
	.incbin "baserom.gba", 0x0FBB2C, 0x0000020

gUnk_080FBB4C:: @ 080FBB4C
	.incbin "baserom.gba", 0x0FBB4C, 0x0000008

Room_CrenelCaves_GripRing:: @ 080FBB54
	.4byte gUnk_080FBB0C
	.4byte gUnk_080FBB1C
	.4byte gUnk_080FBB2C
	.4byte gUnk_080FBB4C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF0C
	.4byte nullsub_469

gUnk_080FBB74:: @ 080FBB74
	.incbin "baserom.gba", 0x0FBB74, 0x0000020

gUnk_080FBB94:: @ 080FBB94
	.incbin "baserom.gba", 0x0FBB94, 0x0000010

gUnk_080FBBA4:: @ 080FBBA4
	.incbin "baserom.gba", 0x0FBBA4, 0x0000050

gUnk_080FBBF4:: @ 080FBBF4
	.incbin "baserom.gba", 0x0FBBF4, 0x0000010

Room_CrenelCaves_FairyFountain:: @ 080FBC04
	.4byte gUnk_080FBB74
	.4byte gUnk_080FBB94
	.4byte gUnk_080FBBA4
	.4byte gUnk_080FBBF4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF14
	.4byte nullsub_470

gUnk_080FBC24:: @ 080FBC24
	.incbin "baserom.gba", 0x0FBC24, 0x0000030

gUnk_080FBC54:: @ 080FBC54
	.incbin "baserom.gba", 0x0FBC54, 0x0000010

gUnk_080FBC64:: @ 080FBC64
	.incbin "baserom.gba", 0x0FBC64, 0x0000040

gUnk_080FBCA4:: @ 080FBCA4
	.incbin "baserom.gba", 0x0FBCA4, 0x0000010

Room_CrenelCaves_SpinyChuPuzzle:: @ 080FBCB4
	.4byte gUnk_080FBC24
	.4byte gUnk_080FBC54
	.4byte gUnk_080FBC64
	.4byte gUnk_080FBCA4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF1C
	.4byte nullsub_471

gUnk_080FBCD4:: @ 080FBCD4
	.incbin "baserom.gba", 0x0FBCD4, 0x00000A0

gUnk_080FBD74:: @ 080FBD74
	.incbin "baserom.gba", 0x0FBD74, 0x0000010

gUnk_080FBD84:: @ 080FBD84
	.incbin "baserom.gba", 0x0FBD84, 0x0000030

gUnk_080FBDB4:: @ 080FBDB4
	.incbin "baserom.gba", 0x0FBDB4, 0x0000010

Room_CrenelCaves_ChuchuPotChest:: @ 080FBDC4
	.4byte gUnk_080FBCD4
	.4byte gUnk_080FBD74
	.4byte gUnk_080FBD84
	.4byte gUnk_080FBDB4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF24
	.4byte nullsub_472

gUnk_080FBDE4:: @ 080FBDE4
	.incbin "baserom.gba", 0x0FBDE4, 0x0000020

gUnk_080FBE04:: @ 080FBE04
	.incbin "baserom.gba", 0x0FBE04, 0x0000010

gUnk_080FBE14:: @ 080FBE14
	.incbin "baserom.gba", 0x0FBE14, 0x0000030

gUnk_080FBE44:: @ 080FBE44
	.incbin "baserom.gba", 0x0FBE44, 0x0000018

Room_CrenelCaves_WaterHeartPiece:: @ 080FBE5C
	.4byte gUnk_080FBDE4
	.4byte gUnk_080FBE04
	.4byte gUnk_080FBE14
	.4byte gUnk_080FBE44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF2C
	.4byte nullsub_473

gUnk_080FBE7C:: @ 080FBE7C
	.incbin "baserom.gba", 0x0FBE7C, 0x0000070

gUnk_080FBEEC:: @ 080FBEEC
	.incbin "baserom.gba", 0x0FBEEC, 0x0000010

gUnk_080FBEFC:: @ 080FBEFC
	.incbin "baserom.gba", 0x0FBEFC, 0x0000010

gUnk_080FBF0C:: @ 080FBF0C
	.incbin "baserom.gba", 0x0FBF0C, 0x0000010

Room_CrenelCaves_RupeeFairyFountain:: @ 080FBF1C
	.4byte gUnk_080FBE7C
	.4byte gUnk_080FBEEC
	.4byte gUnk_080FBEFC
	.4byte gUnk_080FBF0C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF34
	.4byte nullsub_474

gUnk_080FBF3C:: @ 080FBF3C
	.incbin "baserom.gba", 0x0FBF3C, 0x00000C0

gUnk_080FBFFC:: @ 080FBFFC
	.incbin "baserom.gba", 0x0FBFFC, 0x0000010

gUnk_080FC00C:: @ 080FC00C
	.incbin "baserom.gba", 0x0FC00C, 0x0000050

gUnk_080FC05C:: @ 080FC05C
	.incbin "baserom.gba", 0x0FC05C, 0x0000008

Room_CrenelCaves_HelmasaurHallway:: @ 080FC064
	.4byte gUnk_080FBF3C
	.4byte gUnk_080FBFFC
	.4byte gUnk_080FC00C
	.4byte gUnk_080FC05C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF3C
	.4byte nullsub_475

gUnk_080FC084:: @ 080FC084
	.incbin "baserom.gba", 0x0FC084, 0x0000030

gUnk_080FC0B4:: @ 080FC0B4
	.incbin "baserom.gba", 0x0FC0B4, 0x0000010

gUnk_080FC0C4:: @ 080FC0C4
	.incbin "baserom.gba", 0x0FC0C4, 0x0000060

gUnk_080FC124:: @ 080FC124
	.incbin "baserom.gba", 0x0FC124, 0x0000008

Room_CrenelCaves_MushroomKeese:: @ 080FC12C
	.4byte gUnk_080FC084
	.4byte gUnk_080FC0B4
	.4byte gUnk_080FC0C4
	.4byte gUnk_080FC124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF44
	.4byte nullsub_476

gUnk_080FC14C:: @ 080FC14C
	.incbin "baserom.gba", 0x0FC14C, 0x0000010

gUnk_080FC15C:: @ 080FC15C
	.incbin "baserom.gba", 0x0FC15C, 0x0000020

gUnk_080FC17C:: @ 080FC17C
	.incbin "baserom.gba", 0x0FC17C, 0x0000040

gUnk_080FC1BC:: @ 080FC1BC
	.incbin "baserom.gba", 0x0FC1BC, 0x0000008

Room_CrenelCaves_LadderToGreenWater:: @ 080FC1C4
	.4byte gUnk_080FC14C
	.4byte gUnk_080FC15C
	.4byte gUnk_080FC17C
	.4byte gUnk_080FC1BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF4C
	.4byte nullsub_477

gUnk_080FC1E4:: @ 080FC1E4
	.incbin "baserom.gba", 0x0FC1E4, 0x0000010

gUnk_080FC1F4:: @ 080FC1F4
	.incbin "baserom.gba", 0x0FC1F4, 0x0000010

gUnk_080FC204:: @ 080FC204
	.incbin "baserom.gba", 0x0FC204, 0x0000020

gUnk_080FC224:: @ 080FC224
	.incbin "baserom.gba", 0x0FC224, 0x0000010

Room_CrenelCaves_BombBusinessScrub:: @ 080FC234
	.4byte gUnk_080FC1E4
	.4byte gUnk_080FC1F4
	.4byte gUnk_080FC204
	.4byte gUnk_080FC224
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF54
	.4byte nullsub_478

gUnk_080FC254:: @ 080FC254
	.incbin "baserom.gba", 0x0FC254, 0x000000C
	.4byte script_0800B8E4
	.incbin "baserom.gba", 0x0FC264, 0x0000010

gUnk_080FC274:: @ 080FC274
	.incbin "baserom.gba", 0x0FC274, 0x0000010

gUnk_080FC284:: @ 080FC284
	.incbin "baserom.gba", 0x0FC284, 0x0000010

gUnk_080FC294:: @ 080FC294
	.incbin "baserom.gba", 0x0FC294, 0x0000010

Room_CrenelCaves_Hermit:: @ 080FC2A4
	.4byte gUnk_080FC254
	.4byte gUnk_080FC274
	.4byte gUnk_080FC284
	.4byte gUnk_080FC294
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF5C
	.4byte sub_0804FF60

gUnk_080FC2C4:: @ 080FC2C4
	.incbin "baserom.gba", 0x0FC2C4, 0x0000010

gUnk_080FC2D4:: @ 080FC2D4
	.incbin "baserom.gba", 0x0FC2D4, 0x0000010

gUnk_080FC2E4:: @ 080FC2E4
	.incbin "baserom.gba", 0x0FC2E4, 0x0000020

gUnk_080FC304:: @ 080FC304
	.incbin "baserom.gba", 0x0FC304, 0x0000008

Room_CrenelCaves_HintScrub:: @ 080FC30C
	.4byte gUnk_080FC2C4
	.4byte gUnk_080FC2D4
	.4byte gUnk_080FC2E4
	.4byte gUnk_080FC304
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF74
	.4byte nullsub_105

gUnk_080FC32C:: @ 080FC32C
	.incbin "baserom.gba", 0x0FC32C, 0x0000050

gUnk_080FC37C:: @ 080FC37C
	.incbin "baserom.gba", 0x0FC37C, 0x0000010

gUnk_080FC38C:: @ 080FC38C
	.incbin "baserom.gba", 0x0FC38C, 0x0000010

gUnk_080FC39C:: @ 080FC39C
	.incbin "baserom.gba", 0x0FC39C, 0x0000008

Room_CrenelCaves_ToGrayblade:: @ 080FC3A4
	.4byte gUnk_080FC32C
	.4byte gUnk_080FC37C
	.4byte gUnk_080FC38C
	.4byte gUnk_080FC39C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0804FF7C
	.4byte nullsub_106

gUnk_080FC3C4:: @ 080FC3C4
	.incbin "baserom.gba", 0x0FC3C4, 0x0000020

gUnk_080FC3E4:: @ 080FC3E4
	.incbin "baserom.gba", 0x0FC3E4, 0x0000460

gUnk_080FC844:: @ 080FC844
	.incbin "baserom.gba", 0x0FC844, 0x0000018

gUnk_080FC85C:: @ 080FC85C
	.incbin "baserom.gba", 0x0FC85C, 0x0000048
