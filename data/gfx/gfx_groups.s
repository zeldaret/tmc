	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
    .align 2

	.include "asm/macros/gfx.inc"

	.include "gfx_offsets.inc"

@ helper variable
.ifdef JP
	JP_D::
.endif
.ifdef DEMO_JP
	JP_D::
.endif


gGfxGroup_1::
	gfx_raw src=offset_gGfx_1_0, unknown=0x7, dest=0x6000000, size=0xf60
	gfx_raw src=offset_gGfx_1_1, unknown=0x7, dest=0x600e800, size=0x500, terminator=1

gGfxGroup_2::
	gfx_raw src=offset_gGfx_2_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_2_1, unknown=0x7, dest=0x600f000, size=0x500
	gfx_raw src=offset_gGfx_2_2, unknown=0x7, dest=0x600e800, size=0x500
.ifdef JP_D
	gfx_raw src=offset_gGfx_2_3_JP, dest=0x6008000, size=0x4000
	gfx_raw src=offset_gGfx_2_4_JP, dest=0x600e000, size=0x500
	gfx_raw src=offset_gGfx_2_5_JP, dest=0x6006000, size=0x500
.else
	gfx_raw src=offset_gGfx_2_3, unknown=0xf, dest=0x6008000, size=0x4000
	gfx_raw src=offset_gGfx_2_4, unknown=0xf, dest=0x600e000, size=0x400
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_3::
.ifdef EU
	gfx_raw src=offset_gGfx_3_0, unknown=0x2, dest=0x6010000, size=0x300
	gfx_raw src=offset_gGfx_3_1, unknown=0x3, dest=0x6010000, size=0x300
	gfx_raw src=offset_gGfx_3_2, unknown=0x4, dest=0x6010000, size=0x300
	gfx_raw src=offset_gGfx_3_3, unknown=0x5, dest=0x6010000, size=0x300
	gfx_raw src=offset_gGfx_3_4, unknown=0x6, dest=0x6010000, size=0x300
	gfx_raw src=offset_gGfx_3_5, unknown=0xe, dest=0x6010400, size=0x400
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_3_0, dest=0x6010000, size=0x300
	gfx_raw src=offset_gGfx_3_5, dest=0x6010400, size=0x400
.else
	gfx_raw src=offset_gGfx_3_0, unknown=0x1, dest=0x6010000, size=0x300
	gfx_raw src=offset_gGfx_3_7, unknown=0x1, dest=0x6010400, size=0x400
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_4::
	gfx_raw src=offset_gGfx_4_0, unknown=0x7, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_128_1, unknown=0x7, dest=0x6004000, size=0x19e0
	gfx_raw src=offset_gGfx_4_2, unknown=0x7, dest=0x6014000, size=0xe00, terminator=1

gGfxGroup_5::
	gfx_raw src=offset_gGfx_5_0, unknown=0x7, dest=0x6004000, size=0x1be0
	gfx_raw src=offset_gGfx_5_1, unknown=0x7, dest=0x6014800, size=0xfa0
	gfx_raw src=offset_gGfx_5_2, unknown=0x7, dest=0x6008000, size=0x31a0
	gfx_raw src=offset_gGfx_5_3, unknown=0x7, dest=0x600f000, size=0x500, terminator=1

gGfxGroup_6::
.ifdef EU
	gfx_raw src=offset_gGfx_6_0, unknown=0x2, dest=0x6015800, size=0x2000
	gfx_raw src=offset_gGfx_6_1, unknown=0x3, dest=0x6015800, size=0x2000
	gfx_raw src=offset_gGfx_6_2, unknown=0x4, dest=0x6015800, size=0x2000
	gfx_raw src=offset_gGfx_6_3, unknown=0x5, dest=0x6015800, size=0x2000
	gfx_raw src=offset_gGfx_6_4, unknown=0x6, dest=0x6015800, size=0x2000
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_6_0_JP, dest=0x6015800, size=0x2000
.else
	gfx_raw src=offset_gGfx_6_0, unknown=0x1, dest=0x6015800, size=0x2000
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_7::
	gfx_raw src=offset_gGfx_7_0, unknown=0x7, dest=0x20344b0, size=0x500, terminator=1

gGfxGroup_8::
	gfx_raw src=offset_gGfx_8_0, unknown=0x7, dest=0x20344b0, size=0x500, terminator=1

gGfxGroup_12::
	gfx_raw src=offset_gGfx_12_0, unknown=0x7, dest=0x2021ff0, size=0x400
	gfx_raw src=offset_gGfx_12_1, unknown=0x7, dest=0x2034570, size=0x400, terminator=1

gGfxGroup_13::
	gfx_raw src=offset_gGfx_13_0, unknown=0x7, dest=0x2022030, size=0x400
	gfx_raw src=offset_gGfx_13_1, unknown=0x7, dest=0x20345b0, size=0x400, terminator=1

gGfxGroup_14::
	gfx_raw src=offset_gGfx_14_0, unknown=0x7, dest=0x20344b0, size=0x500, terminator=1

gGfxGroup_15::
.ifdef EU
	gfx_raw src=offset_gGfx_15_0, unknown=0x2, dest=0x6010800, size=0x1600
	gfx_raw src=offset_gGfx_15_1, unknown=0x3, dest=0x6010800, size=0x1600
	gfx_raw src=offset_gGfx_15_2, unknown=0x4, dest=0x6010800, size=0x1600
	gfx_raw src=offset_gGfx_15_3, unknown=0x5, dest=0x6010800, size=0x1600
	gfx_raw src=offset_gGfx_15_4, unknown=0x6, dest=0x6010800, size=0x1600
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_15_0_JP, dest=0x6010800, size=0x1600
.else
	gfx_raw src=offset_gGfx_15_0, unknown=0x1, dest=0x6010800, size=0x1600
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_9::
.ifdef EU
	gfx_raw src=offset_gGfx_9_0, unknown=0xe, dest=0x2001a40, size=0x500
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_9_0_JP, dest=0x2001a40, size=0x500
.else
	gfx_raw src=offset_gGfx_9_0, unknown=0x1, dest=0x2001a40, size=0x500
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_10::
.ifdef EU
	gfx_raw src=offset_gGfx_10_0, unknown=0xe, dest=0x2001a40, size=0x500
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_10_0_JP, dest=0x2001a40, size=0x500
.else
	gfx_raw src=offset_gGfx_10_0, unknown=0x1, dest=0x2001a40, size=0x500
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_11::
.ifdef JP_D
	gfx_raw src=offset_gGfx_11_1_JP, dest=0x2001a40, size=0x500
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_16::
	gfx_raw src=offset_gGfx_88_3, unknown=0x7, dest=0x6012000, size=0x1c0
	gfx_raw src=offset_gGfx_89_2, unknown=0x7, dest=0x600c000, size=0xe00, terminator=1

gGfxGroup_23::
	gfx_raw src=offset_gGfx_89_3, unknown=0x7, dest=0x6010000, size=0x2000, terminator=1

gGfxGroup_24::
	gfx_raw src=offset_gGfx_24_0, unknown=0x7, dest=0x6011800, size=0x100, terminator=1

gGfxGroup_25::
	gfx_raw src=offset_gGfx_25_0, unknown=0x7, dest=0x6011800, size=0x100, terminator=1

gGfxGroup_26::
	gfx_raw src=offset_gGfx_26_0, unknown=0x7, dest=0x6011c80, size=0x100, terminator=1

gGfxGroup_27::
	gfx_raw src=offset_gGfx_27_0, unknown=0x7, dest=0x6011aa0, size=0x80, terminator=1

gGfxGroup_28::
	gfx_raw src=offset_gGfx_28_0, unknown=0x7, dest=0x6011aa0, size=0x80, terminator=1

gGfxGroup_29::
	gfx_raw src=offset_gGfx_29_0, unknown=0x7, dest=0x6011920, size=0x180, terminator=1

gGfxGroup_36::
	gfx_raw src=offset_gGfx_36_0, unknown=0x7, dest=0x600a800, size=0x800
	gfx_raw src=offset_gGfx_36_1, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_37::
	gfx_raw src=offset_gGfx_38_0, unknown=0x7, dest=0x600a800, size=0x800
	gfx_raw src=offset_gGfx_37_1, unknown=0x7, dest=0x2001a40, size=0x1000, terminator=1

gGfxGroup_38::
	gfx_raw src=offset_gGfx_38_0, unknown=0x7, dest=0x600a400, size=0x800, terminator=1

gGfxGroup_39::
	gfx_raw src=offset_gGfx_39_0, unknown=0x7, dest=0x6000000, size=0xf000
	gfx_raw src=offset_gGfx_39_1, unknown=0x7, dest=0x600f000, size=0x1000, terminator=1

gGfxGroup_40::
	gfx_raw src=offset_gGfx_40_0, unknown=0x7, dest=0x6000000, size=0xf000
	gfx_raw src=offset_gGfx_40_1, unknown=0x7, dest=0x600f000, size=0x1000, terminator=1

gGfxGroup_41::
	gfx_raw src=offset_gGfx_41_0, unknown=0x7, dest=0x6000000, size=0xf000
	gfx_raw src=offset_gGfx_41_1, unknown=0x7, dest=0x600f000, size=0x1000, terminator=1

gGfxGroup_42::
	gfx_raw src=offset_gGfx_42_0, unknown=0x7, dest=0x6000000, size=0xf000
	gfx_raw src=offset_gGfx_42_1, unknown=0x7, dest=0x600f000, size=0x1000, terminator=1

gGfxGroup_30::
	gfx_raw src=offset_gGfx_33_0, unknown=0x7, dest=0x6008000, size=0x4000
	gfx_raw src=offset_gGfx_30_1, unknown=0x7, dest=0x2002f00, size=0x1000
	gfx_raw src=offset_gGfx_30_2, unknown=0x7, dest=0x2003f00, size=0x1000
	gfx_raw src=offset_gGfx_30_3, unknown=0x7, dest=0x2004f00, size=0x1000
	gfx_raw src=offset_gGfx_30_4, unknown=0x7, dest=0x2005f00, size=0x1000, terminator=1

gGfxGroup_33::
	gfx_raw src=offset_gGfx_33_0, unknown=0x7, dest=0x6008000, size=0x4000
	gfx_raw src=offset_gGfx_33_1, unknown=0x7, dest=0x2002f00, size=0x1000
	gfx_raw src=offset_gGfx_33_2, unknown=0x7, dest=0x2003f00, size=0x1000
	gfx_raw src=offset_gGfx_33_3, unknown=0x7, dest=0x2004f00, size=0x1000
	gfx_raw src=offset_gGfx_33_4, unknown=0x7, dest=0x2005f00, size=0x1000, terminator=1

gGfxGroup_32::
	gfx_raw src=offset_gGfx_33_0, unknown=0x7, dest=0x6008000, size=0x4000
	gfx_raw src=offset_gGfx_32_1, unknown=0x7, dest=0x2002f00, size=0x1000
	gfx_raw src=offset_gGfx_32_2, unknown=0x7, dest=0x2003f00, size=0x1000
	gfx_raw src=offset_gGfx_32_3, unknown=0x7, dest=0x2004f00, size=0x1000
	gfx_raw src=offset_gGfx_32_4, unknown=0x7, dest=0x2005f00, size=0x1000, terminator=1

gGfxGroup_31::
	gfx_raw src=offset_gGfx_33_0, unknown=0x7, dest=0x6008000, size=0x4000
	gfx_raw src=offset_gGfx_31_1, unknown=0x7, dest=0x2002f00, size=0x1000
	gfx_raw src=offset_gGfx_31_2, unknown=0x7, dest=0x2003f00, size=0x1000
	gfx_raw src=offset_gGfx_31_3, unknown=0x7, dest=0x2004f00, size=0x1000
	gfx_raw src=offset_gGfx_31_4, unknown=0x7, dest=0x2005f00, size=0x1000, terminator=1

gGfxGroup_35::
	gfx_raw src=offset_gGfx_35_0, unknown=0x7, dest=0x6008000, size=0x4000
	gfx_raw src=offset_gGfx_35_1, unknown=0x7, dest=0x2002f00, size=0x1000
	gfx_raw src=offset_gGfx_35_2, unknown=0x7, dest=0x2003f00, size=0x1000
	gfx_raw src=offset_gGfx_35_3, unknown=0x7, dest=0x2004f00, size=0x1000
	gfx_raw src=offset_gGfx_35_4, unknown=0x7, dest=0x2005f00, size=0x1000, terminator=1

gGfxGroup_34::
	gfx_raw src=offset_gGfx_34_0, unknown=0x7, dest=0x6008000, size=0x4000
	gfx_raw src=offset_gGfx_34_1, unknown=0x7, dest=0x2002f00, size=0x1000
	gfx_raw src=offset_gGfx_34_2, unknown=0x7, dest=0x2003f00, size=0x1000
	gfx_raw src=offset_gGfx_34_3, unknown=0x7, dest=0x2004f00, size=0x1000
	gfx_raw src=offset_gGfx_34_4, unknown=0x7, dest=0x2005f00, size=0x1000, terminator=1

gGfxGroup_22::
	gfx_raw src=offset_gGfx_22_0, unknown=0x7, dest=0x6000000, size=0x4000
	gfx_raw src=offset_gGfx_22_1, unknown=0x7, dest=0x600e000, size=0x1000
	gfx_raw src=offset_gGfx_22_2, unknown=0x7, dest=0x6004000, size=0x2000
	gfx_raw src=offset_gGfx_22_3, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_17::
	gfx_raw src=offset_fixedTypeGfx_36, unknown=0x7, dest=0x6013800, size=0x1400
	gfx_raw src=offset_gGfx_17_1, unknown=0x7, dest=0x6014c00, size=0x1ae0, terminator=1

gGfxGroup_18::
	gfx_raw src=offset_gGfx_18_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_19::
	gfx_raw src=offset_gGfx_19_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_43::
	gfx_raw src=offset_gGfx_43_0, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_44::
	gfx_raw src=offset_gGfx_44_0, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_45::
	gfx_raw src=offset_gGfx_45_0, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_46::
	gfx_raw src=offset_gGfx_46_0, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_20::
	gfx_raw src=offset_gGfx_20_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_21::
	gfx_raw src=offset_gGfx_21_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_47::
	gfx_raw src=offset_gGfx_47_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_48::
	gfx_raw src=offset_gGfx_48_0, unknown=0x7, dest=0x2002f00, size=0x1000, terminator=1

gGfxGroup_49::
	gfx_raw src=offset_gGfx_49_0, unknown=0x7, dest=0x2001a40, size=0x800, terminator=1

gGfxGroup_50::
	gfx_raw src=offset_gGfx_50_0, unknown=0x7, dest=0x2001a40, size=0x800, terminator=1

gGfxGroup_51::
	gfx_raw src=offset_gGfx_51_0, unknown=0x7, dest=0x2001a40, size=0x800, terminator=1

gGfxGroup_52::
	gfx_raw src=offset_gGfx_52_0, unknown=0x7, dest=0x2001a40, size=0x1000, terminator=1

gGfxGroup_53::
	gfx_raw src=offset_gGfx_53_0, unknown=0x7, dest=0x2001a40, size=0x1000, terminator=1

gGfxGroup_75::
	gfx_raw src=offset_gGfx_75_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_76::
	gfx_raw src=offset_gGfx_76_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_77::
	gfx_raw src=offset_gGfx_77_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_78::
	gfx_raw src=offset_gGfx_78_0, unknown=0x7, dest=0x600f000, size=0x500, terminator=1

gGfxGroup_79::
	gfx_raw src=offset_gGfx_79_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_80::
	gfx_raw src=offset_gGfx_80_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_81::
	gfx_raw src=offset_gGfx_82_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_82::
	gfx_raw src=offset_gGfx_82_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_83::
	gfx_raw src=offset_gGfx_83_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_84::
	gfx_raw src=offset_gGfx_84_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_85::
	gfx_raw src=offset_gGfx_85_0, unknown=0x7, dest=0x600f000, size=0x800, terminator=1

gGfxGroup_54::
	gfx_raw src=offset_gGfx_54_0, unknown=0x7, dest=0x6004000, size=0x48c0
	gfx_raw src=offset_gGfx_54_1, unknown=0x7, dest=0x2002f00, size=0x1000, terminator=1

gGfxGroup_55::
	gfx_raw src=offset_gGfx_55_0, unknown=0x7, dest=0x6004000, size=0x47c0
	gfx_raw src=offset_gGfx_55_1, unknown=0x7, dest=0x2002f00, size=0x1000, terminator=1

gGfxGroup_56::
	gfx_raw src=offset_gGfx_56_0, unknown=0x7, dest=0x6004000, size=0x3be0
	gfx_raw src=offset_gGfx_56_1, unknown=0x7, dest=0x2002f00, size=0x1000, terminator=1

gGfxGroup_57::
	gfx_raw src=offset_gGfx_57_0, unknown=0x7, dest=0x6004000, size=0x4700
	gfx_raw src=offset_gGfx_57_1, unknown=0x7, dest=0x2002f00, size=0x1000, terminator=1

gGfxGroup_58::
	gfx_raw src=offset_gGfx_58_0, unknown=0x7, dest=0x6000000, size=0xc000
	gfx_raw src=offset_gGfx_58_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_59::
	gfx_raw src=offset_gGfx_59_0, unknown=0x7, dest=0x6000000, size=0xc000
	gfx_raw src=offset_gGfx_59_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_60::
	gfx_raw src=offset_gGfx_60_0, unknown=0x7, dest=0x6000000, size=0xc000
	gfx_raw src=offset_gGfx_60_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_61::
	gfx_raw src=offset_gGfx_61_0, unknown=0x7, dest=0x6000000, size=0xc000
	gfx_raw src=offset_gGfx_61_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_62::
	gfx_raw src=offset_gGfx_62_0, unknown=0x7, dest=0x6000000, size=0xc000
	gfx_raw src=offset_gGfx_62_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_63::
	gfx_raw src=offset_gGfx_63_0, unknown=0x7, dest=0x6000000, size=0xc000
	gfx_raw src=offset_gGfx_63_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_64::
	gfx_raw src=offset_gGfx_64_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_64_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_65::
	gfx_raw src=offset_gGfx_65_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_65_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_66::
	gfx_raw src=offset_gGfx_66_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_66_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_67::
	gfx_raw src=offset_gGfx_67_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_67_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_68::
	gfx_raw src=offset_gGfx_68_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_68_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_69::
	gfx_raw src=offset_gGfx_69_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_69_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_70::
	gfx_raw src=offset_gGfx_70_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_70_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_71::
	gfx_raw src=offset_gGfx_71_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_71_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_72::
	gfx_raw src=offset_gGfx_72_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_72_1, unknown=0x7, dest=0x600e800, size=0x800, terminator=1

gGfxGroup_73::
	gfx_raw src=offset_gGfx_73_0, unknown=0x7, dest=0x600e6c0, size=0x140, terminator=1

gGfxGroup_74::
	gfx_raw src=offset_gGfx_74_0, unknown=0x7, dest=0x600e6c0, size=0x140, terminator=1

gGfxGroup_86::
	gfx_raw src=offset_gGfx_88_0, unknown=0x7, dest=0x6008000, size=0x1d20
	gfx_raw src=offset_gGfx_86_1, unknown=0x7, dest=0x2001a40, size=0x500
	gfx_raw src=offset_gGfx_88_2, unknown=0x7, dest=0x6010000, size=0x700
	gfx_raw src=offset_gGfx_88_3, unknown=0x7, dest=0x6012000, size=0x1c0, terminator=1

gGfxGroup_87::
	gfx_raw src=offset_gGfx_88_0, unknown=0x7, dest=0x6008000, size=0x1d20
	gfx_raw src=offset_gGfx_87_1, unknown=0x7, dest=0x2001a40, size=0x500
	gfx_raw src=offset_gGfx_88_2, unknown=0x7, dest=0x6010000, size=0x700
	gfx_raw src=offset_gGfx_88_3, unknown=0x7, dest=0x6012000, size=0x1c0, terminator=1

gGfxGroup_88::
	gfx_raw src=offset_gGfx_88_0, unknown=0x7, dest=0x6008000, size=0x1d20
	gfx_raw src=offset_gGfx_88_1, unknown=0x7, dest=0x2001a40, size=0x500
	gfx_raw src=offset_gGfx_88_2, unknown=0x7, dest=0x6010000, size=0x700
	gfx_raw src=offset_gGfx_88_3, unknown=0x7, dest=0x6012000, size=0x1c0, terminator=1

gGfxGroup_89::
.ifdef JP_D
	gfx_raw src=offset_gGfx_89_0_JP, dest=0x20344b0, size=0x500
.else
	gfx_raw src=offset_gGfx_89_0, unknown=0xf, dest=0x20344b0, size=0x500
.endif
	gfx_raw src=offset_gGfx_89_1, unknown=0x7, dest=0x6000000, size=0x3bc0
	gfx_raw src=offset_gGfx_89_2, unknown=0x7, dest=0x6008000, size=0xe00
	gfx_raw src=offset_gGfx_89_3, unknown=0x7, dest=0x6010000, size=0x2000
	gfx_raw src=offset_gGfx_89_4, unknown=0x7, dest=0x6013000, size=0x640
	gfx_raw src=offset_RupeeKeyDigitsYellow, unknown=0x7, dest=0x6013c00, size=0x280
	gfx_raw src=offset_gGfx_89_6, unknown=0x7, dest=0x6014000, size=0x8c0, terminator=1

gGfxGroup_90::
	gfx_raw src=offset_gGfx_90_0, unknown=0x7, dest=0x6000000, size=0x2640
	gfx_raw src=offset_gGfx_90_1, unknown=0x7, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_90_2, unknown=0x7, dest=0x6014000, size=0x200
.ifdef EU
	gfx_raw src=offset_gGfx_90_3, unknown=0x2, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_4, unknown=0x2, dest=0x6015800, size=0x700
	gfx_raw src=offset_gGfx_90_5, unknown=0x3, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_6, unknown=0x3, dest=0x6015800, size=0x700
	gfx_raw src=offset_gGfx_90_7, unknown=0x4, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_8, unknown=0x4, dest=0x6015800, size=0x700
	gfx_raw src=offset_gGfx_90_9, unknown=0x5, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_10, unknown=0x5, dest=0x6015800, size=0x700
	gfx_raw src=offset_gGfx_90_11, unknown=0x6, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_12, unknown=0x6, dest=0x6015800, size=0x700
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_90_3_JP, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_4_JP, dest=0x6015800, size=0x700
.else
	gfx_raw src=offset_gGfx_90_3, unknown=0x1, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_4, unknown=0x1, dest=0x6015800, size=0x700
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_91::
	gfx_raw src=offset_gGfx_91_0, unknown=0x7, dest=0x6000000, size=0x3300
	gfx_raw src=offset_gGfx_91_1, unknown=0x7, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_91_2, unknown=0x7, dest=0x6014000, size=0x1780
.ifdef EU
	gfx_raw src=offset_gGfx_91_3, unknown=0x2, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_4, unknown=0x2, dest=0x6015800, size=0x700
	gfx_raw src=offset_gGfx_91_5, unknown=0x3, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_6, unknown=0x3, dest=0x6015800, size=0x700
	gfx_raw src=offset_gGfx_91_7, unknown=0x4, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_8, unknown=0x4, dest=0x6015800, size=0x700
	gfx_raw src=offset_gGfx_91_9, unknown=0x5, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_10, unknown=0x5, dest=0x6015800, size=0x700
	gfx_raw src=offset_gGfx_91_11, unknown=0x6, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_12, unknown=0x6, dest=0x6015800, size=0x700
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_91_3_JP, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_4_JP, dest=0x6015800, size=0x700
.else
	gfx_raw src=offset_gGfx_91_3, unknown=0x1, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_91_4, unknown=0x1, dest=0x6015800, size=0x700
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_92::
	gfx_raw src=offset_gGfx_92_0, unknown=0x7, dest=0x6000000, size=0x2000
	gfx_raw src=offset_gGfx_92_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_92_2, unknown=0x7, dest=0x20344b0, size=0x500
.ifdef EU
	gfx_raw src=offset_gGfx_92_3, unknown=0x2, dest=0x6014800, size=0x800
	gfx_raw src=offset_gGfx_92_4_EU, unknown=0x3, dest=0x6014800, size=0x800
	gfx_raw src=offset_gGfx_92_5_EU, unknown=0x4, dest=0x6014800, size=0x800
	gfx_raw src=offset_gGfx_92_6, unknown=0x5, dest=0x6014800, size=0x800
	gfx_raw src=offset_gGfx_92_7, unknown=0x6, dest=0x6014800, size=0x800
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_92_3_JP, dest=0x6014800, size=0x800
.else
	gfx_raw src=offset_gGfx_92_3, unknown=0x1, dest=0x6014800, size=0x800
.endif
.endif
	gfx_raw src=offset_gGfx_92_4, unknown=0x7, dest=0x6014000, size=0x700
	gfx_raw src=offset_fixedTypeGfx_521, unknown=0x7, dest=0x6017000, size=0x1c0, terminator=1

gGfxGroup_129::
.ifdef EU
	gfx_raw src=offset_gGfx_129_0, unknown=0x2, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_129_1, unknown=0x3, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_129_2, unknown=0x4, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_129_3, unknown=0x5, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_129_4, unknown=0x6, dest=0x6010800, size=0x800
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_129_0_JP, dest=0x6010800, size=0x800
.else
	gfx_raw src=offset_gGfx_129_0, unknown=0x1, dest=0x6010800, size=0x800
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_127::
.ifdef EU
	gfx_raw src=offset_gGfx_127_0, unknown=0x7, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_128_1, unknown=0x7, dest=0x6004000, size=0x19e0, terminator=1
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_127_0_JP, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_127_1_JP, dest=0x6004000, size=0x2000
.else
	gfx_raw src=offset_gGfx_127_0, unknown=0xf, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_128_1, unknown=0xf, dest=0x6004000, size=0x19e0
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1
.endif

gGfxGroup_128::
.ifdef EU
	gfx_raw src=offset_gGfx_128_0, unknown=0x7, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_128_1, unknown=0x7, dest=0x6004000, size=0x19e0, terminator=1
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_128_0_JP, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_127_1_JP, dest=0x6004000, size=0x2000
.else
	gfx_raw src=offset_gGfx_128_0, unknown=0xf, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_128_1, unknown=0xf, dest=0x6004000, size=0x19e0
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1
.endif

gGfxGroup_93::
	gfx_raw src=offset_gGfx_94_0, unknown=0x7, dest=0x6000000, size=0x4000
	gfx_raw src=offset_gGfx_94_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_94_2, unknown=0x7, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_93_3, unknown=0x7, dest=0x2001a40, size=0x500
	gfx_raw src=offset_gGfx_94_3, unknown=0x7, dest=0x6014000, size=0x1300, terminator=1

gGfxGroup_94::
	gfx_raw src=offset_gGfx_94_0, unknown=0x7, dest=0x6000000, size=0x4000
	gfx_raw src=offset_gGfx_94_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_94_2, unknown=0x7, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_94_3, unknown=0x7, dest=0x6014000, size=0x1300, terminator=1

gGfxGroup_95::
	gfx_raw src=offset_gGfx_96_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_95_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_96::
	gfx_raw src=offset_gGfx_96_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_96_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_96_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_97::
	gfx_raw src=offset_gGfx_98_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_97_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_98::
	gfx_raw src=offset_gGfx_98_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_102_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_98_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_99::
	gfx_raw src=offset_gGfx_113_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_113_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_99_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_100::
	gfx_raw src=offset_gGfx_103_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_113_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_100_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_101::
	gfx_raw src=offset_gGfx_105_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_113_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_101_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_102::
	gfx_raw src=offset_gGfx_112_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_102_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_102_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_103::
	gfx_raw src=offset_gGfx_103_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_103_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_104::
	gfx_raw src=offset_gGfx_112_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_104_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_112::
	gfx_raw src=offset_gGfx_112_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_112_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_105::
	gfx_raw src=offset_gGfx_105_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_105_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_105_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_106::
	gfx_raw src=offset_gGfx_113_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_113_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_106_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_113::
	gfx_raw src=offset_gGfx_113_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_113_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_113_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_107::
	gfx_raw src=offset_gGfx_108_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_107_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_107_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_108::
	gfx_raw src=offset_gGfx_108_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_113_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_108_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_116::
	gfx_raw src=offset_gGfx_116_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_116_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_115::
	gfx_raw src=offset_gGfx_115_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_115_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_109::
	gfx_raw src=offset_gGfx_109_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_109_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_110::
	gfx_raw src=offset_gGfx_110_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_110_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_110_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_111::
	gfx_raw src=offset_gGfx_111_0, unknown=0x7, dest=0x6000000, size=0x8000
	gfx_raw src=offset_gGfx_116_1, unknown=0x7, dest=0x2021f30, size=0x500
	gfx_raw src=offset_gGfx_111_2, unknown=0x7, dest=0x20344b0, size=0x800
	gfx_raw src=offset_gGfx_116_3, unknown=0x7, dest=0x6014000, size=0xa00, terminator=1

gGfxGroup_117::
	gfx_raw src=offset_gGfx_117_0, unknown=0x7, dest=0x6000000, size=0x2a80
	gfx_raw src=offset_fixedTypeGfx_494, unknown=0x7, dest=0x6015400, size=0x600
	gfx_raw src=offset_gGfx_117_2, unknown=0x7, dest=0x20344b0, size=0x500
.ifdef EU
	gfx_raw src=offset_gGfx_117_3, unknown=0x2, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_117_4_EU, unknown=0x3, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_117_5, unknown=0x4, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_117_6, unknown=0x5, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_117_7, unknown=0x6, dest=0x6010800, size=0x840
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_117_3_JP, dest=0x6010800, size=0x800
.else
	gfx_raw src=offset_gGfx_117_3, unknown=0x1, dest=0x6010800, size=0x800
.endif
.endif
	gfx_raw src=offset_gGfx_117_4, unknown=0x7, dest=0x6011c00, size=0x80, terminator=1

gGfxGroup_118::
	gfx_raw src=offset_gGfx_118_0, unknown=0x7, dest=0x2021f30, size=0x500, terminator=1

gGfxGroup_119::
	gfx_raw src=offset_gGfx_119_0, unknown=0x7, dest=0x2021f30, size=0x500, terminator=1

gGfxGroup_120::
	gfx_raw src=offset_gGfx_120_0, unknown=0x7, dest=0x2021f30, size=0x500, terminator=1

gGfxGroup_121::
	gfx_raw src=offset_gGfx_121_0, unknown=0x7, dest=0x2021f30, size=0x500, terminator=1

gGfxGroup_122::
	gfx_raw src=offset_gGfx_122_0, unknown=0x7, dest=0x2021f30, size=0x500, terminator=1

gGfxGroup_123::
	gfx_raw src=offset_gGfx_123_0, unknown=0x7, dest=0x2021f30, size=0x500, terminator=1

gGfxGroup_124::
	gfx_raw src=offset_gGfx_124_0, unknown=0x7, dest=0x2021f30, size=0x500, terminator=1

gGfxGroup_125::
	gfx_raw src=offset_gGfx_125_0, unknown=0x7, dest=0x6000000, size=0x3800
	gfx_raw src=offset_gGfx_125_1, unknown=0x7, dest=0x20344b0, size=0x500
.ifdef EU
	gfx_raw src=offset_gGfx_125_2, unknown=0x2, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_125_3_EU, unknown=0x3, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_125_4, unknown=0x4, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_125_5, unknown=0x5, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_125_6, unknown=0x6, dest=0x6010800, size=0x800
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_125_2_JP, dest=0x6010800, size=0x800
.else
	gfx_raw src=offset_gGfx_125_2, unknown=0x1, dest=0x6010800, size=0x800
.endif
.endif
	gfx_raw src=offset_gGfx_125_3, unknown=0x7, dest=0x6011000, size=0x80, terminator=1

gGfxGroup_126::
	gfx_raw src=offset_gGfx_126_0, unknown=0x7, dest=0x6000000, size=0x3940
	gfx_raw src=offset_gGfx_126_1, unknown=0x7, dest=0x20344b0, size=0x500
	gfx_raw src=offset_gGfx_126_2, unknown=0x7, dest=0x6014000, size=0x3100
	gfx_raw src=offset_gGfx_126_3, unknown=0x7, dest=0x6013000, size=0x200
	gfx_raw src=offset_gGfx_126_4, unknown=0x7, dest=0x6013400, size=0x200
.ifdef EU
	gfx_raw src=offset_gGfx_126_5, unknown=0x2, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_126_6, unknown=0x3, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_126_7, unknown=0x4, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_126_8, unknown=0x5, dest=0x6010800, size=0x800
	gfx_raw src=offset_gGfx_126_9, unknown=0x6, dest=0x6010800, size=0x800
.else
.ifdef JP_D
	gfx_raw src=offset_gGfx_126_5_JP, dest=0x6010800, size=0x800
.else
	gfx_raw src=offset_gGfx_126_5, unknown=0x1, dest=0x6010800, size=0x800
.endif
.endif
	gfx_raw src=offset_gPalette_0, unknown=0xd, terminator=1

gGfxGroup_130::
	gfx_raw src=offset_gGfx_130_0, unknown=0x7, dest=0x600bf20, size=0xe0, compressed=1, terminator=1

gGfxGroup_131::
	gfx_raw src=offset_gGfx_131_0, unknown=0x7, dest=0x600bf20, size=0xe0, compressed=1, terminator=1

gGfxGroup_132::
	gfx_raw src=offset_gGfx_132_0, unknown=0x7, dest=0x6004000, size=0x100, compressed=1, terminator=1
gGfxGroups::
	.4byte 0
	.4byte gGfxGroup_1
	.4byte gGfxGroup_2
	.4byte gGfxGroup_3
	.4byte gGfxGroup_4
	.4byte gGfxGroup_5
	.4byte gGfxGroup_6
	.4byte gGfxGroup_7
	.4byte gGfxGroup_8
	.4byte gGfxGroup_9
	.4byte gGfxGroup_10
	.4byte gGfxGroup_11
	.4byte gGfxGroup_12
	.4byte gGfxGroup_13
	.4byte gGfxGroup_14
	.4byte gGfxGroup_15
	.4byte gGfxGroup_16
	.4byte gGfxGroup_17
	.4byte gGfxGroup_18
	.4byte gGfxGroup_19
	.4byte gGfxGroup_20
	.4byte gGfxGroup_21
	.4byte gGfxGroup_22
	.4byte gGfxGroup_23
	.4byte gGfxGroup_24
	.4byte gGfxGroup_25
	.4byte gGfxGroup_26
	.4byte gGfxGroup_27
	.4byte gGfxGroup_28
	.4byte gGfxGroup_29
	.4byte gGfxGroup_30
	.4byte gGfxGroup_31
	.4byte gGfxGroup_32
	.4byte gGfxGroup_33
	.4byte gGfxGroup_34
	.4byte gGfxGroup_35
	.4byte gGfxGroup_36
	.4byte gGfxGroup_37
	.4byte gGfxGroup_38
	.4byte gGfxGroup_39
	.4byte gGfxGroup_40
	.4byte gGfxGroup_41
	.4byte gGfxGroup_42
	.4byte gGfxGroup_43
	.4byte gGfxGroup_44
	.4byte gGfxGroup_45
	.4byte gGfxGroup_46
	.4byte gGfxGroup_47
	.4byte gGfxGroup_48
	.4byte gGfxGroup_49
	.4byte gGfxGroup_50
	.4byte gGfxGroup_51
	.4byte gGfxGroup_52
	.4byte gGfxGroup_53
	.4byte gGfxGroup_54
	.4byte gGfxGroup_55
	.4byte gGfxGroup_56
	.4byte gGfxGroup_57
	.4byte gGfxGroup_58
	.4byte gGfxGroup_59
	.4byte gGfxGroup_60
	.4byte gGfxGroup_61
	.4byte gGfxGroup_62
	.4byte gGfxGroup_63
	.4byte gGfxGroup_64
	.4byte gGfxGroup_65
	.4byte gGfxGroup_66
	.4byte gGfxGroup_67
	.4byte gGfxGroup_68
	.4byte gGfxGroup_69
	.4byte gGfxGroup_70
	.4byte gGfxGroup_71
	.4byte gGfxGroup_72
	.4byte gGfxGroup_73
	.4byte gGfxGroup_74
	.4byte gGfxGroup_75
	.4byte gGfxGroup_76
	.4byte gGfxGroup_77
	.4byte gGfxGroup_78
	.4byte gGfxGroup_79
	.4byte gGfxGroup_80
	.4byte gGfxGroup_81
	.4byte gGfxGroup_82
	.4byte gGfxGroup_83
	.4byte gGfxGroup_84
	.4byte gGfxGroup_85
	.4byte gGfxGroup_86
	.4byte gGfxGroup_87
	.4byte gGfxGroup_88
	.4byte gGfxGroup_89
	.4byte gGfxGroup_90
	.4byte gGfxGroup_91
	.4byte gGfxGroup_92
	.4byte gGfxGroup_93
	.4byte gGfxGroup_94
	.4byte gGfxGroup_95
	.4byte gGfxGroup_96
	.4byte gGfxGroup_97
	.4byte gGfxGroup_98
	.4byte gGfxGroup_99
	.4byte gGfxGroup_100
	.4byte gGfxGroup_101
	.4byte gGfxGroup_102
	.4byte gGfxGroup_103
	.4byte gGfxGroup_104
	.4byte gGfxGroup_105
	.4byte gGfxGroup_106
	.4byte gGfxGroup_107
	.4byte gGfxGroup_108
	.4byte gGfxGroup_109
	.4byte gGfxGroup_110
	.4byte gGfxGroup_111
	.4byte gGfxGroup_112
	.4byte gGfxGroup_113
	.4byte gGfxGroup_109
	.4byte gGfxGroup_115
	.4byte gGfxGroup_116
	.4byte gGfxGroup_117
	.4byte gGfxGroup_118
	.4byte gGfxGroup_119
	.4byte gGfxGroup_120
	.4byte gGfxGroup_121
	.4byte gGfxGroup_122
	.4byte gGfxGroup_123
	.4byte gGfxGroup_124
	.4byte gGfxGroup_125
	.4byte gGfxGroup_126
	.4byte gGfxGroup_127
	.4byte gGfxGroup_128
	.4byte gGfxGroup_129
	.4byte gGfxGroup_130
	.4byte gGfxGroup_131
	.4byte gGfxGroup_132
