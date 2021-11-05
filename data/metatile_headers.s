	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.section .rodata
	.align 2

gAreaMetatiles_MinishWoods:: @ 081026AC
	metatiles_bottom 0x7704, 0x4000, 1
	metatiles_top 0x9280, 0x3FF0, 1
	metatile_types_bottom 0xA00C, 0x1000, 1
	metatile_types_top 0xA43C, 0xFFC, 1, 1

gAreaMetatiles_LakeHylia:: @ 081026DC
	metatiles_bottom 0x12A34, 0x4000, 1
	metatiles_top 0x1420C, 0x3FF0, 1
	metatile_types_bottom 0x1500C, 0x1000, 1
	metatile_types_top 0x15484, 0xFFC, 1, 1

gAreaMetatiles_CastorWilds:: @ 0810270C
	metatiles_bottom 0x1D5E0, 0x4000, 1
	metatiles_top 0x1F310, 0x3FF0, 1
	metatile_types_bottom 0x20144, 0x1000, 1
	metatile_types_top 0x2062C, 0xFFC, 1, 1

gAreaMetatiles_HyruleTown:: @ 0810273C
.ifdef EU
	metatiles_bottom 0x29774-0x4, 0x4000, 1
	metatiles_top 0x2B788-0x4, 0x3FF0, 1
	metatile_types_bottom 0x2D47C-0x4, 0x1000, 1
	metatile_types_top 0x2D984-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x29774, 0x4000, 1
	metatiles_top 0x2B788, 0x3FF0, 1
	metatile_types_bottom 0x2D47C, 0x1000, 1
	metatile_types_top 0x2D984, 0xFFC, 1, 1
.endif

gAreaMetatiles_MtCrenel:: @ 0810276C
.ifdef EU
	metatiles_bottom 0x43FF0-0x4, 0x4000, 1
	metatiles_top 0x45D0C-0x4, 0x3FF0, 1
	metatile_types_bottom 0x46BA4-0x4, 0x1000, 1
	metatile_types_top 0x4712C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x43FF0, 0x4000, 1
	metatiles_top 0x45D0C, 0x3FF0, 1
	metatile_types_bottom 0x46BA4, 0x1000, 1
	metatile_types_top 0x4712C, 0xFFC, 1, 1
.endif

gAreaMetatiles_HyruleField:: @ 0810279C
.ifdef EU
	metatiles_bottom 0x5D3B8-0x4, 0x4000, 1
	metatiles_top 0x5F584-0x4, 0x3FF0, 1
	metatile_types_bottom 0x6064C-0x4, 0x1000, 1
	metatile_types_top 0x60C64-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x5D3B8, 0x4000, 1
	metatiles_top 0x5F584, 0x3FF0, 1
	metatile_types_bottom 0x6064C, 0x1000, 1
	metatile_types_top 0x60C64, 0xFFC, 1, 1
.endif

gAreaMetatiles_CastleGarden:: @ 081027CC
.ifdef EU
	metatiles_bottom 0x6B79C-0x4, 0x3000, 1
	metatiles_top 0x6CD14-0x4, 0x3FF0, 1
	metatile_types_bottom 0x6D7A8-0x4, 0xC00, 1
	metatile_types_top 0x6DAE4-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x6B79C, 0x3000, 1
	metatiles_top 0x6CD14, 0x3FF0, 1
	metatile_types_bottom 0x6D7A8, 0xC00, 1
	metatile_types_top 0x6DAE4, 0xFFC, 1, 1
.endif

gAreaMetatiles_CloudTops:: @ 081027FC
.ifdef EU
	metatiles_bottom 0x72898-0x4, 0x3FB0, 1
	metatiles_top 0x73B54-0x4, 0x3FF0, 1
	metatile_types_bottom 0x74534-0x4, 0xFEC, 1
	metatile_types_top 0x74824-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x72898, 0x3FB0, 1
	metatiles_top 0x73B54, 0x3FF0, 1
	metatile_types_bottom 0x74534, 0xFEC, 1
	metatile_types_top 0x74824, 0xFFC, 1, 1
.endif

gAreaMetatiles_RoyalValley:: @ 0810282C
.ifdef EU
	metatiles_bottom 0x7CAB8-0x4, 0x4000, 1
	metatiles_top 0x7DBEC-0x4, 0x3FF0, 1
	metatile_types_bottom 0x7E6F8-0x4, 0x1000, 1
	metatile_types_top 0x7EA4C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x7CAB8, 0x4000, 1
	metatiles_top 0x7DBEC, 0x3FF0, 1
	metatile_types_bottom 0x7E6F8, 0x1000, 1
	metatile_types_top 0x7EA4C, 0xFFC, 1, 1
.endif

gAreaMetatiles_Beanstalks:: @ 0810285C
.ifdef EU
	metatiles_bottom 0x8B610-0x4, 0x5A8, 1
	metatile_types_bottom 0x8B930-0x4, 0x16A, 1, 1
.else
	metatiles_bottom 0x8B610, 0x5A8, 1
	metatile_types_bottom 0x8B930, 0x16A, 1, 1
.endif

gAreaMetatiles_CrenelCaves:: @ 08102874
.ifdef EU
	metatiles_bottom 0x93F04-0x4, 0x3F80, 1
	metatiles_top 0x95ED0-0x4, 0x3F40, 1
	metatile_types_bottom 0x9775C-0x4, 0xFE0, 1
	metatile_types_top 0x97D58-0x4, 0xFD0, 1, 1
.else
	metatiles_bottom 0x93F04, 0x3F80, 1
	metatiles_top 0x95ED0, 0x3F40, 1
	metatile_types_bottom 0x9775C, 0xFE0, 1
	metatile_types_top 0x97D58, 0xFD0, 1, 1
.endif

gAreaMetatiles_GreatFairies:: @ 081028A4
.ifdef EU
	metatiles_bottom 0x9E2D0-0x4, 0x17A8, 1
	metatiles_top 0x9EF9C-0x4, 0x1070, 1
	metatile_types_bottom 0x9F4D0-0x4, 0x5EA, 1
	metatile_types_top 0x9F650-0x4, 0x41C, 1, 1
.else
	metatiles_bottom 0x9E2D0, 0x17A8, 1
	metatiles_top 0x9EF9C, 0x1070, 1
	metatile_types_bottom 0x9F4D0, 0x5EA, 1
	metatile_types_top 0x9F650, 0x41C, 1, 1
.endif

gAreaMetatiles_MinishVillage:: @ 081028D4
.ifdef EU
	metatiles_bottom 0xD9690-0x4, 0x35A8, 1
	metatiles_top 0xDB294-0x4, 0x3228, 1
	metatile_types_bottom 0xDC79C-0x4, 0xD6A, 1
	metatile_types_top 0xDCA88-0x4, 0xC8A, 1, 1
.else
	metatiles_bottom 0xD9690, 0x35A8, 1
	metatiles_top 0xDB294, 0x3228, 1
	metatile_types_bottom 0xDC79C, 0xD6A, 1
	metatile_types_top 0xDCA88, 0xC8A, 1, 1
.endif

gAreaMetatiles_MelarisMine:: @ 08102904
.ifdef EU
	metatiles_bottom 0xE8D1C-0x4, 0x27C0, 1
	metatiles_top 0xEA3A0-0x4, 0x308, 1
	metatile_types_bottom 0xEA464-0x4, 0x9F0, 1
	metatile_types_top 0xEA684-0x4, 0xC2, 1, 1
.else
	metatiles_bottom 0xE8D1C, 0x27C0, 1
	metatiles_top 0xEA3A0, 0x308, 1
	metatile_types_bottom 0xEA464, 0x9F0, 1
	metatile_types_top 0xEA684, 0xC2, 1, 1
.endif

gAreaMetatiles_MnishPaths1:: @ 08102934
.ifdef EU
	metatiles_bottom 0xEE698-0x4, 0x1420, 1
	metatile_types_bottom 0xEF330-0x4, 0x508, 1, 1
.else
	metatiles_bottom 0xEE698, 0x1420, 1
	metatile_types_bottom 0xEF330, 0x508, 1, 1
.endif

gAreaMetatiles_CrenelMinishPaths:: @ 0810294C
.ifdef EU
	metatiles_bottom 0xF5734-0x4, 0x1EB8, 1
	metatile_types_bottom 0xF698C-0x4, 0x7AE, 1, 1
.else
	metatiles_bottom 0xF5734, 0x1EB8, 1
	metatile_types_bottom 0xF698C, 0x7AE, 1, 1
.endif

gAreaMetatiles_MinishHouseInteriors:: @ 08102964
.ifdef EU
	metatiles_bottom 0x93F04-0x4, 0x3F80, 1
	metatiles_top 0x95ED0-0x4, 0x3F40, 1
	metatile_types_bottom 0x9775C-0x4, 0xFE0, 1
	metatile_types_top 0x97D58-0x4, 0xFD0, 1, 1
.else
	metatiles_bottom 0x93F04, 0x3F80, 1
	metatiles_top 0x95ED0, 0x3F40, 1
	metatile_types_bottom 0x9775C, 0xFE0, 1
	metatile_types_top 0x97D58, 0xFD0, 1, 1
.endif

gAreaMetatiles_HouseInteriors1:: @ 08102994
.ifdef EU
	metatiles_bottom 0xFCE7C-0x4, 0x3188, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0xFE120-0x4, 0xC62, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0xFCE7C, 0x3188, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0xFE120, 0xC62, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_HouseInteriors2:: @ 081029C4
.ifdef EU
	metatiles_bottom 0x102AB8-0x4, 0x33A0, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x103D54-0x4, 0xCE8, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x102AB8, 0x33A0, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x103D54, 0xCE8, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_HouseInteriors4:: @ 081029F4
.ifdef EU
	metatiles_bottom 0x10823C-0x4, 0x33A0, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x109530-0x4, 0xCE8, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x10823C, 0x33A0, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x109530, 0xCE8, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_HouseInteriors3:: @ 08102A24
.ifdef EU
	metatiles_bottom 0x10DAA8-0x4, 0x2F20, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x10E9F0-0x4, 0xBC8, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x10DAA8, 0x2F20, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x10E9F0, 0xBC8, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_TreeInteriors:: @ 08102A54
.ifdef EU
	metatiles_bottom 0x112BF0-0x4, 0x3000, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x113A88-0x4, 0xC00, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x112BF0, 0x3000, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x113A88, 0xC00, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_Dojos:: @ 08102A84
.ifdef EU
	metatiles_bottom 0x11D198-0x4, 0x33A0, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x11E030-0x4, 0xCE8, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x11D198, 0x33A0, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x11E030, 0xCE8, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_MinishCracks:: @ 08102AB4
.ifdef EU
	metatiles_bottom 0x118044-0x4, 0x3180, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x118F94-0x4, 0xC60, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x118044, 0x3180, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x118F94, 0xC60, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_ArmosInteriors:: @ 08102AE4
.ifdef EU
	metatiles_bottom 0xA4840-0x4, 0xC50, 1
	metatiles_top 0xA4FB4-0x4, 0xC50, 1
	metatile_types_bottom 0xA5728-0x4, 0x314, 1
	metatile_types_top 0xA5840-0x4, 0x314, 1, 1
.else
	metatiles_bottom 0xA4840, 0xC50, 1
	metatiles_top 0xA4FB4, 0xC50, 1
	metatile_types_bottom 0xA5728, 0x314, 1
	metatile_types_top 0xA5840, 0x314, 1, 1
.endif

gAreaMetatiles_MinishRafters:: @ 08102B14
.ifdef EU
	metatiles_bottom 0x120478-0x4, 0x1A30, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x1210C8-0x4, 0x68C, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x120478, 0x1A30, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x1210C8, 0x68C, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_GoronCave:: @ 08102B44
.ifdef EU
	metatiles_bottom 0xAC444-0x4, 0x3F80, 1
	metatiles_top 0xADE48-0x4, 0x3400, 1
	metatile_types_bottom 0xAF650-0x4, 0xFE0, 1
	metatile_types_top 0xAFB8C-0x4, 0xD00, 1, 1
.else
	metatiles_bottom 0xAC444, 0x3F80, 1
	metatiles_top 0xADE48, 0x3400, 1
	metatile_types_bottom 0xAF650, 0xFE0, 1
	metatile_types_top 0xAFB8C, 0xD00, 1, 1
.endif

gAreaMetatiles_WindTribeTower:: @ 08102B74
.ifdef EU
	metatiles_bottom 0x125100-0x4, 0x2EB0, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x126040-0x4, 0xBAC, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x125100, 0x2EB0, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x126040, 0xBAC, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_WindTribeTowerRoof:: @ 08102BA4
.ifdef EU
	metatiles_bottom 0x12AAB0-0x4, 0xBC0, 1
	metatiles_top 0x12B13C-0x4, 0xBC0, 1
	metatile_types_bottom 0x12B784-0x4, 0x2F0, 1
	metatile_types_top 0x12B840-0x4, 0x2F0, 1, 1
.else
	metatiles_bottom 0x12AAB0, 0xBC0, 1
	metatiles_top 0x12B13C, 0xBC0, 1
	metatile_types_bottom 0x12B784, 0x2F0, 1
	metatile_types_top 0x12B840, 0x2F0, 1, 1
.endif

gAreaMetatiles_MinishCaves:: @ 08102BD4
.ifdef EU
	metatiles_bottom 0xB9118-0x4, 0x3F80, 1
	metatiles_top 0xBAF54-0x4, 0x3F80, 1
	metatile_types_bottom 0xBC0CC-0x4, 0xFE0, 1
	metatile_types_top 0xBC570-0x4, 0xFE0, 1, 1
.else
	metatiles_bottom 0xB9118, 0x3F80, 1
	metatiles_top 0xBAF54, 0x3F80, 1
	metatile_types_bottom 0xBC0CC, 0xFE0, 1
	metatile_types_top 0xBC570, 0xFE0, 1, 1
.endif

gAreaMetatiles_CastleGardenMinishHoles:: @ 08102C04
.ifdef EU
	metatiles_bottom 0xBFB4C-0x4, 0x13A8, 1
	metatiles_top 0xC0570-0x4, 0x1680, 1
	metatile_types_bottom 0xC1030-0x4, 0x4EA, 1
	metatile_types_top 0xC11B8-0x4, 0x5A0, 1, 1
.else
	metatiles_bottom 0xBFB4C, 0x13A8, 1
	metatiles_top 0xC0570, 0x1680, 1
	metatile_types_bottom 0xC1030, 0x4EA, 1
	metatile_types_top 0xC11B8, 0x5A0, 1, 1
.endif

gAreaMetatiles_EzloCutscene:: @ 08102C34
.ifdef EU
	metatiles_bottom 0x12EEBC-0x4, 0x1A20, 1
	metatiles_top 0xF7AD8-0x4, 0x3FF0, 1
	metatile_types_bottom 0x12F564-0x4, 0x688, 1
	metatile_types_top 0xF8A5C-0x4, 0xFFC, 1, 1
.else
	metatiles_bottom 0x12EEBC, 0x1A20, 1
	metatiles_top 0xF7AD8, 0x3FF0, 1
	metatile_types_bottom 0x12F564, 0x688, 1
	metatile_types_top 0xF8A5C, 0xFFC, 1, 1
.endif

gAreaMetatiles_HyruleTownUnderground:: @ 08102C64
.ifdef EU
	metatiles_bottom 0x1A51B8-0x4, 0x3E80, 1
	metatiles_top 0x1A7454-0x4, 0x3610, 1
	metatile_types_bottom 0x1A8B10-0x4, 0xFA0, 1
	metatile_types_top 0x1A9000-0x4, 0xD84, 1, 1
.else
	metatiles_bottom 0x1A51B8, 0x3E80, 1
	metatiles_top 0x1A7454, 0x3610, 1
	metatile_types_bottom 0x1A8B10, 0xFA0, 1
	metatile_types_top 0x1A9000, 0xD84, 1, 1
.endif

gAreaMetatiles_DeepwoodShrine:: @ 08102C94
.ifdef EU
	metatiles_bottom 0x1B20C4-0x4, 0x3B28, 1
	metatiles_top 0x1B4644-0x4, 0x3620, 1
	metatile_types_bottom 0x1B6044-0x4, 0xECA, 1
	metatile_types_top 0x1B64F8-0x4, 0xD88, 1, 1
.else
	metatiles_bottom 0x1B20C4, 0x3B28, 1
	metatiles_top 0x1B4644, 0x3620, 1
	metatile_types_bottom 0x1B6044, 0xECA, 1
	metatile_types_top 0x1B64F8, 0xD88, 1, 1
.endif

gAreaMetatiles_DeepwoodShrineBoss:: @ 08102CC4
.ifdef EU
	metatiles_bottom 0x1B9E08-0x4, 0x3620, 1
	metatiles_top 0x1BAF34-0x4, 0x11F8, 1
	metatile_types_bottom 0x1BB24C-0x4, 0xD88, 1
	metatile_types_top 0x1BB4BC-0x4, 0x47E, 1, 1
.else
	metatiles_bottom 0x1B9E08, 0x3620, 1
	metatiles_top 0x1BAF34, 0x11F8, 1
	metatile_types_bottom 0x1BB24C, 0xD88, 1
	metatile_types_top 0x1BB4BC, 0x47E, 1, 1
.endif

gAreaMetatiles_DeepwoodShrineEntry:: @ 08102CF4
.ifdef EU
	metatiles_bottom 0x1BE520-0x4, 0xD08, 1
	metatiles_top 0x1BEB0C-0x4, 0x9F8, 1
	metatile_types_bottom 0x1BEF10-0x4, 0x342, 1
	metatile_types_top 0x1BEFC0-0x4, 0x27E, 1, 1
.else
	metatiles_bottom 0x1BE520, 0xD08, 1
	metatiles_top 0x1BEB0C, 0x9F8, 1
	metatile_types_bottom 0x1BEF10, 0x342, 1
	metatile_types_top 0x1BEFC0, 0x27E, 1, 1
.endif

gAreaMetatiles_CaveOfFlames:: @ 08102D24
.ifdef EU
	metatiles_bottom 0x1CA0C8-0x4, 0x3B08, 1
	metatiles_top 0x1CBCF4-0x4, 0x3F28, 1
	metatile_types_bottom 0x1CD6F4-0x4, 0xEC2, 1
	metatile_types_top 0x1CDB88-0x4, 0xFCA, 1, 1
.else
	metatiles_bottom 0x1CA0C8, 0x3B08, 1
	metatiles_top 0x1CBCF4, 0x3F28, 1
	metatile_types_bottom 0x1CD6F4, 0xEC2, 1
	metatile_types_top 0x1CDB88, 0xFCA, 1, 1
.endif

gAreaMetatiles_CaveOfFlamesBoss:: @ 08102D54
.ifdef EU
	metatiles_bottom 0x1D378C-0x4, 0x3B08, 1
	metatiles_top 0x1D4B14-0x4, 0x3610, 1
	metatile_types_bottom 0x1D5C70-0x4, 0xEC2, 1
	metatile_types_top 0x1D5EFC-0x4, 0xD84, 1, 1
.else
	metatiles_bottom 0x1D378C, 0x3B08, 1
	metatiles_top 0x1D4B14, 0x3610, 1
	metatile_types_bottom 0x1D5C70, 0xEC2, 1
	metatile_types_top 0x1D5EFC, 0xD84, 1, 1
.endif

gAreaMetatiles_FortressOfWinds:: @ 08102D84
.ifdef EU
	metatiles_bottom 0x1E163C-0x4, 0x3868, 1
	metatiles_top 0x1E3670-0x4, 0x3850, 1
	metatile_types_bottom 0x1E4E8C-0x4, 0xE1A, 1
	metatile_types_top 0x1E52DC-0x4, 0xE14, 1, 1
.else
	metatiles_bottom 0x1E163C, 0x3868, 1
	metatiles_top 0x1E3670, 0x3850, 1
	metatile_types_bottom 0x1E4E8C, 0xE1A, 1
	metatile_types_top 0x1E52DC, 0xE14, 1, 1
.endif

gAreaMetatiles_FortressOfWindsTop:: @ 08102DB4
.ifdef EU
	metatiles_bottom 0x1F06E4-0x4, 0x1440, 1
	metatiles_top 0x1F11AC-0x4, 0x1368, 1
	metatile_types_bottom 0x1F1740-0x4, 0x510, 1
	metatile_types_top 0x1F18D4-0x4, 0x4DA, 1, 1
.else
	metatiles_bottom 0x1F06E4, 0x1440, 1
	metatiles_top 0x1F11AC, 0x1368, 1
	metatile_types_bottom 0x1F1740, 0x510, 1
	metatile_types_top 0x1F18D4, 0x4DA, 1, 1
.endif

gAreaMetatiles_InnerMazaal:: @ 08102DE4
.ifdef EU
	metatiles_bottom 0x1E9E38-0x4, 0x3C00, 1
	metatiles_top 0x1EABE0-0x4, 0x3E70, 1
	metatile_types_bottom 0x1EBAAC-0x4, 0xF00, 1
	metatile_types_top 0x1EBD60-0x4, 0xF9C, 1, 1
.else
	metatiles_bottom 0x1E9E38, 0x3C00, 1
	metatiles_top 0x1EABE0, 0x3E70, 1
	metatile_types_bottom 0x1EBAAC, 0xF00, 1
	metatile_types_top 0x1EBD60, 0xF9C, 1, 1
.endif

gAreaMetatiles_TempleOfDroplets:: @ 08102E14
.ifdef EU
	metatiles_bottom 0x1FC4F4-0x4, 0x3D68, 1
	metatiles_top 0x1FE6E0-0x4, 0x4000, 1
	metatile_types_bottom 0x200A9C-0x4, 0xF5A, 1
	metatile_types_top 0x200F70-0x4, 0x1000, 1, 1
.else
	metatiles_bottom 0x1FC4F4, 0x3D68, 1
	metatiles_top 0x1FE6E0, 0x4000, 1
	metatile_types_bottom 0x200A9C, 0xF5A, 1
	metatile_types_top 0x200F70, 0x1000, 1, 1
.endif

gAreaMetatiles_61:: @ 08102E44
.ifdef EU
	metatiles_bottom 0x204BD4-0x4, 0x600, 1
	metatiles_top 0x20509C-0x4, 0x398, 1
	metatile_types_bottom 0x2051BC-0x4, 0x180, 1
	metatile_types_top 0x205254-0x4, 0xE6, 1, 1
.else
	metatiles_bottom 0x204BD4, 0x600, 1
	metatiles_top 0x20509C, 0x398, 1
	metatile_types_bottom 0x2051BC, 0x180, 1
	metatile_types_top 0x205254, 0xE6, 1, 1
.endif

gAreaMetatiles_RoyalCrypt:: @ 08102E74
.ifdef EU
	metatiles_bottom 0x212144-0x2C, 0x3610, 1
	metatiles_top 0x213D34-0x2C, 0x3610, 1
	metatile_types_bottom 0x215134-0x2C, 0xD84, 1
	metatile_types_top 0x2155E0-0x2C, 0xD84, 1, 1
.else
	metatiles_bottom 0x212144, 0x3610, 1
	metatiles_top 0x213D34, 0x3610, 1
	metatile_types_bottom 0x215134, 0xD84, 1
	metatile_types_top 0x2155E0, 0xD84, 1, 1
.endif

gAreaMetatiles_PalaceOfWinds:: @ 08102EA4
.ifdef EU
	metatiles_bottom 0x21D230-0x2C, 0x3620, 1
	metatiles_top 0x21EEA4-0x2C, 0x3620, 1
	metatile_types_bottom 0x220788-0x2C, 0xD88, 1
	metatile_types_top 0x220C54-0x2C, 0xD88, 1, 1
.else
	metatiles_bottom 0x21D230, 0x3620, 1
	metatiles_top 0x21EEA4, 0x3620, 1
	metatile_types_bottom 0x220788, 0xD88, 1
	metatile_types_top 0x220C54, 0xD88, 1, 1
.endif

gAreaMetatiles_PalaceOfWindsBoss:: @ 08102ED4
.ifdef JP
	metatiles_top 0x223680, 0x108, 1
	metatile_types_top 0x2236C8, 0x42, 1, 1
.else
.ifdef DEMO_JP
	metatiles_top 0x223680, 0x108, 1
	metatile_types_top 0x2236C8, 0x42, 1, 1
.else
.ifdef EU
	metatiles_top 0x22360C+0x48, 0x108, 1
	metatile_types_top 0x223654+0x48, 0x42, 1, 1
.else
	metatiles_top 0x22360C, 0x108, 1
	metatile_types_top 0x223654, 0x42, 1, 1
.endif
.endif
.endif

gAreaMetatiles_Sanctuary:: @ 08102EEC
.ifdef JP
	metatiles_bottom 0x233418, 0x3620, 1
	metatiles_top 0x235320, 0x3620, 1
	metatile_types_bottom 0x236424, 0xD88, 1
	metatile_types_top 0x236788, 0xD88, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x233418, 0x3620, 1
	metatiles_top 0x235320, 0x3620, 1
	metatile_types_bottom 0x236424, 0xD88, 1
	metatile_types_top 0x236788, 0xD88, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x2333A4+0x48, 0x3620, 1
	metatiles_top 0x2352AC+0x48, 0x3620, 1
	metatile_types_bottom 0x2363B0+0x48, 0xD88, 1
	metatile_types_top 0x236714+0x48, 0xD88, 1, 1
.else
	metatiles_bottom 0x2333A4, 0x3620, 1
	metatiles_top 0x2352AC, 0x3620, 1
	metatile_types_bottom 0x2363B0, 0xD88, 1
	metatile_types_top 0x236714, 0xD88, 1, 1
.endif
.endif
.endif


gAreaMetatiles_HyruleCastle:: @ 08102F1C
.ifdef JP
	metatiles_bottom 0x23D224, 0x37C0, 1
	metatiles_top 0x23EF98, 0x3610, 1
	metatile_types_bottom 0x240440, 0xDF0, 1
	metatile_types_top 0x24086C, 0xD84, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x23D224, 0x37C0, 1
	metatiles_top 0x23EF98, 0x3610, 1
	metatile_types_bottom 0x240440, 0xDF0, 1
	metatile_types_top 0x24086C, 0xD84, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x23D1B0+0x48, 0x37C0, 1
	metatiles_top 0x23EF24+0x48, 0x3610, 1
	metatile_types_bottom 0x2403CC+0x48, 0xDF0, 1
	metatile_types_top 0x2407F8+0x48, 0xD84, 1, 1
.else
	metatiles_bottom 0x23D1B0, 0x37C0, 1
	metatiles_top 0x23EF24, 0x3610, 1
	metatile_types_bottom 0x2403CC, 0xDF0, 1
	metatile_types_top 0x2407F8, 0xD84, 1, 1
.endif
.endif
.endif

gAreaMetatiles_SanctuaryEntrance:: @ 08102F4C
.ifdef JP
	metatiles_bottom 0x246158, 0x1478, 1
	metatiles_top 0x246CAC, 0xFF0, 1
	metatile_types_bottom 0x24702C, 0x51E, 1
	metatile_types_top 0x24719C, 0x3FC, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x246158, 0x1478, 1
	metatiles_top 0x246CAC, 0xFF0, 1
	metatile_types_bottom 0x24702C, 0x51E, 1
	metatile_types_top 0x24719C, 0x3FC, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x2460E4+0x48, 0x1478, 1
	metatiles_top 0x246C38+0x48, 0xFF0, 1
	metatile_types_bottom 0x246FB8+0x48, 0x51E, 1
	metatile_types_top 0x247128+0x48, 0x3FC, 1, 1
.else
	metatiles_bottom 0x2460E4, 0x1478, 1
	metatiles_top 0x246C38, 0xFF0, 1
	metatile_types_bottom 0x246FB8, 0x51E, 1
	metatile_types_top 0x247128, 0x3FC, 1, 1
.endif
.endif
.endif

gAreaMetatiles_DarkHyruleCastle:: @ 08102F7C
.ifdef JP
	metatiles_bottom 0x24D940, 0x3FD8, 1
	metatiles_top 0x250680, 0x37C0, 1
	metatile_types_bottom 0x2524F4, 0xFF6, 1
	metatile_types_top 0x252A7C, 0xDF0, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x24D940, 0x3FD8, 1
	metatiles_top 0x250680, 0x37C0, 1
	metatile_types_bottom 0x2524F4, 0xFF6, 1
	metatile_types_top 0x252A7C, 0xDF0, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x24D8CC+0x48, 0x3FD8, 1
	metatiles_top 0x25060C+0x48, 0x37C0, 1
	metatile_types_bottom 0x252480+0x48, 0xFF6, 1
	metatile_types_top 0x252A08+0x48, 0xDF0, 1, 1
.else
	metatiles_bottom 0x24D8CC, 0x3FD8, 1
	metatiles_top 0x25060C, 0x37C0, 1
	metatile_types_bottom 0x252480, 0xFF6, 1
	metatile_types_top 0x252A08, 0xDF0, 1, 1
.endif
.endif
.endif

gAreaMetatiles_DarkHyruleCastleOutside:: @ 08102FAC
.ifdef JP
	metatiles_bottom 0x273EE8, 0x3340, 1
	metatiles_top 0x27540C, 0x1EF0, 1
	metatile_types_bottom 0x276048, 0xCD0, 1
	metatile_types_top 0x276324, 0x7BC, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x273EE8, 0x3340, 1
	metatiles_top 0x27540C, 0x1EF0, 1
	metatile_types_bottom 0x276048, 0xCD0, 1
	metatile_types_top 0x276324, 0x7BC, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x273E74+0x48, 0x3340, 1
	metatiles_top 0x275398+0x48, 0x1EF0, 1
	metatile_types_bottom 0x275FD4+0x48, 0xCD0, 1
	metatile_types_top 0x2762B0+0x48, 0x7BC, 1, 1
.else
	metatiles_bottom 0x273E74, 0x3340, 1
	metatiles_top 0x275398, 0x1EF0, 1
	metatile_types_bottom 0x275FD4, 0xCD0, 1
	metatile_types_top 0x2762B0, 0x7BC, 1, 1
.endif
.endif
.endif

gAreaMetatiles_DarkHyruleCastleBridge:: @ 08102FDC
.ifdef JP
	metatiles_bottom 0x256688, 0x3610, 1
	metatiles_top 0x257468, 0x3610, 1
	metatile_types_bottom 0x257D78, 0xD84, 1
	metatile_types_top 0x257FEC, 0xD84, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x256688, 0x3610, 1
	metatiles_top 0x257468, 0x3610, 1
	metatile_types_bottom 0x257D78, 0xD84, 1
	metatile_types_top 0x257FEC, 0xD84, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x256614+0x48, 0x3610, 1
	metatiles_top 0x2573F4+0x48, 0x3610, 1
	metatile_types_bottom 0x257D04+0x48, 0xD84, 1
	metatile_types_top 0x257F78+0x48, 0xD84, 1, 1
.else
	metatiles_bottom 0x256614, 0x3610, 1
	metatiles_top 0x2573F4, 0x3610, 1
	metatile_types_bottom 0x257D04, 0xD84, 1
	metatile_types_top 0x257F78, 0xD84, 1, 1
.endif
.endif
.endif

gAreaMetatiles_VaatisArms:: @ 0810300C
.ifdef JP
	metatiles_bottom 0x263D70, 0x17C8, 1
	metatiles_top 0x264A38, 0xBC0, 1
	metatile_types_bottom 0x264DBC, 0x5F2, 1
	metatile_types_top 0x264EC0, 0x2F0, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x263D70, 0x17C8, 1
	metatiles_top 0x264A38, 0xBC0, 1
	metatile_types_bottom 0x264DBC, 0x5F2, 1
	metatile_types_top 0x264EC0, 0x2F0, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x263CFC+0x48, 0x17C8, 1
	metatiles_top 0x2649C4+0x48, 0xBC0, 1
	metatile_types_bottom 0x264D48+0x48, 0x5F2, 1
	metatile_types_top 0x264E4C+0x48, 0x2F0, 1, 1
.else
	metatiles_bottom 0x263CFC, 0x17C8, 1
	metatiles_top 0x2649C4, 0xBC0, 1
	metatile_types_bottom 0x264D48, 0x5F2, 1
	metatile_types_top 0x264E4C, 0x2F0, 1, 1
.endif
.endif
.endif

gAreaMetatiles_Vaati3:: @ 0810303C
.ifdef JP
	metatiles_bottom 0x25C730, 0xE80, 1
	metatiles_top 0x25CDE8, 0x9B8, 1
	metatile_types_bottom 0x25CFC4, 0x3A0, 1
	metatile_types_top 0x25D098, 0x26E, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x25C730, 0xE80, 1
	metatiles_top 0x25CDE8, 0x9B8, 1
	metatile_types_bottom 0x25CFC4, 0x3A0, 1
	metatile_types_top 0x25D098, 0x26E, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x25C6BC+0x48, 0xE80, 1
	metatiles_top 0x25CD74+0x48, 0x9B8, 1
	metatile_types_bottom 0x25CF50+0x48, 0x3A0, 1
	metatile_types_top 0x25D024+0x48, 0x26E, 1, 1
.else
	metatiles_bottom 0x25C6BC, 0xE80, 1
	metatiles_top 0x25CD74, 0x9B8, 1
	metatile_types_bottom 0x25CF50, 0x3A0, 1
	metatile_types_top 0x25D024, 0x26E, 1, 1
.endif
.endif
.endif

gAreaMetatiles_Vaati2:: @ 0810306C
.ifdef JP
	metatiles_bottom 0x260864, 0x850, 1
	metatiles_top 0x260C90, 0x298, 1
	metatile_types_bottom 0x260D30, 0x214, 1
	metatile_types_top 0x260DAC, 0xA6, 1, 1
.else
.ifdef DEMO_JP
	metatiles_bottom 0x260864, 0x850, 1
	metatiles_top 0x260C90, 0x298, 1
	metatile_types_bottom 0x260D30, 0x214, 1
	metatile_types_top 0x260DAC, 0xA6, 1, 1
.else
.ifdef EU
	metatiles_bottom 0x2607F0+0x48, 0x850, 1
	metatiles_top 0x260C1C+0x48, 0x298, 1
	metatile_types_bottom 0x260CBC+0x48, 0x214, 1
	metatile_types_top 0x260D38+0x48, 0xA6, 1, 1
.else
	metatiles_bottom 0x2607F0, 0x850, 1
	metatiles_top 0x260C1C, 0x298, 1
	metatile_types_bottom 0x260CBC, 0x214, 1
	metatile_types_top 0x260D38, 0xA6, 1, 1
.endif
.endif
.endif


gAreaMetatiles:: @ 0810309C
	.4byte gAreaMetatiles_MinishWoods             @ 0x0
	.4byte gAreaMetatiles_MinishVillage           @ 0x1
	.4byte gAreaMetatiles_HyruleTown              @ 0x2
	.4byte gAreaMetatiles_HyruleField             @ 0x3
	.4byte gAreaMetatiles_CastorWilds             @ 0x4
	.4byte gAreaMetatiles_CastorWilds             @ 0x5
	.4byte gAreaMetatiles_MtCrenel                @ 0x6
	.4byte gAreaMetatiles_CastleGarden            @ 0x7
	.4byte gAreaMetatiles_CloudTops               @ 0x8
	.4byte gAreaMetatiles_RoyalValley             @ 0x9
	.4byte gAreaMetatiles_MtCrenel                @ 0xA
	.4byte gAreaMetatiles_LakeHylia               @ 0xB
	.4byte gAreaMetatiles_MinishWoods             @ 0xC
	.4byte gAreaMetatiles_Beanstalks              @ 0xD
	.4byte gAreaMetatiles_MinishWoods             @ 0xE
	.4byte gAreaMetatiles_HyruleTown              @ 0xF
	.4byte gAreaMetatiles_MelarisMine             @ 0x10
	.4byte gAreaMetatiles_MnishPaths1             @ 0x11
	.4byte gAreaMetatiles_CrenelMinishPaths       @ 0x12
	.4byte gAreaMetatiles_HyruleField             @ 0x13
	.4byte gAreaMetatiles_MtCrenel                @ 0x14
	.4byte gAreaMetatiles_HyruleTown              @ 0x15
	.4byte gAreaMetatiles_MtCrenel                @ 0x16
	.4byte gAreaMetatiles_CastorWilds             @ 0x17
	.4byte gAreaMetatiles_CastorWilds             @ 0x18
	.4byte gAreaMetatiles_LakeHylia               @ 0x19
	.4byte gAreaMetatiles_MtCrenel                @ 0x1A
	.4byte gAreaMetatiles_Unused                  @ 0x1B
	.4byte gAreaMetatiles_Unused                  @ 0x1C
	.4byte gAreaMetatiles_HyruleField             @ 0x1D
	.4byte gAreaMetatiles_MinishWoods             @ 0x1E
	.4byte gAreaMetatiles_HyruleField             @ 0x1F
	.4byte gAreaMetatiles_MinishHouseInteriors    @ 0x20
	.4byte gAreaMetatiles_HouseInteriors1         @ 0x21
	.4byte gAreaMetatiles_HouseInteriors2         @ 0x22
	.4byte gAreaMetatiles_HouseInteriors3         @ 0x23
	.4byte gAreaMetatiles_TreeInteriors           @ 0x24
	.4byte gAreaMetatiles_Dojos                   @ 0x25
	.4byte gAreaMetatiles_CrenelCaves             @ 0x26
	.4byte gAreaMetatiles_MinishCracks            @ 0x27
	.4byte gAreaMetatiles_HouseInteriors4         @ 0x28
	.4byte gAreaMetatiles_GreatFairies            @ 0x29
	.4byte gAreaMetatiles_CrenelCaves             @ 0x2A
	.4byte gAreaMetatiles_FortressOfWinds         @ 0x2B
	.4byte gAreaMetatiles_ArmosInteriors          @ 0x2C
	.4byte gAreaMetatiles_MinishHouseInteriors    @ 0x2D
	.4byte gAreaMetatiles_MinishRafters           @ 0x2E
	.4byte gAreaMetatiles_GoronCave               @ 0x2F
	.4byte gAreaMetatiles_WindTribeTower          @ 0x30
	.4byte gAreaMetatiles_WindTribeTowerRoof      @ 0x31
	.4byte gAreaMetatiles_CrenelCaves             @ 0x32
	.4byte gAreaMetatiles_CrenelCaves             @ 0x33
	.4byte gAreaMetatiles_CrenelCaves             @ 0x34
	.4byte gAreaMetatiles_MinishCaves             @ 0x35
	.4byte gAreaMetatiles_CastleGardenMinishHoles @ 0x36
	.4byte gAreaMetatiles_CastleGardenMinishHoles @ 0x37
	.4byte gAreaMetatiles_EzloCutscene            @ 0x38
	.4byte gAreaMetatiles_Unused                  @ 0x39
	.4byte gAreaMetatiles_Unused                  @ 0x3A
	.4byte gAreaMetatiles_Unused                  @ 0x3B
	.4byte gAreaMetatiles_Unused                  @ 0x3C
	.4byte gAreaMetatiles_Unused                  @ 0x3D
	.4byte gAreaMetatiles_Unused                  @ 0x3E
	.4byte gAreaMetatiles_Unused                  @ 0x3F
	.4byte gAreaMetatiles_HyruleTownUnderground   @ 0x40
	.4byte gAreaMetatiles_HyruleTownUnderground   @ 0x41
	.4byte gAreaMetatiles_HyruleTownUnderground   @ 0x42
	.4byte gAreaMetatiles_HyruleTownUnderground   @ 0x43
	.4byte gAreaMetatiles_HyruleTownUnderground   @ 0x44
	.4byte gAreaMetatiles_CrenelCaves             @ 0x45
	.4byte gAreaMetatiles_CrenelCaves             @ 0x46
	.4byte gAreaMetatiles_CrenelCaves             @ 0x47
	.4byte gAreaMetatiles_DeepwoodShrine          @ 0x48
	.4byte gAreaMetatiles_DeepwoodShrineBoss      @ 0x49
	.4byte gAreaMetatiles_DeepwoodShrineEntry     @ 0x4A
	.4byte gAreaMetatiles_Unused                  @ 0x4B
	.4byte gAreaMetatiles_Unused                  @ 0x4C
	.4byte gAreaMetatiles_DeepwoodShrine          @ 0x4D
	.4byte gAreaMetatiles_DeepwoodShrine          @ 0x4E
	.4byte gAreaMetatiles_DeepwoodShrineBoss      @ 0x4F
	.4byte gAreaMetatiles_CaveOfFlames            @ 0x50
	.4byte gAreaMetatiles_CaveOfFlamesBoss        @ 0x51
	.4byte gAreaMetatiles_Unused                  @ 0x52
	.4byte gAreaMetatiles_Unused                  @ 0x53
	.4byte gAreaMetatiles_Unused                  @ 0x54
	.4byte gAreaMetatiles_Unused                  @ 0x55
	.4byte gAreaMetatiles_CaveOfFlames            @ 0x56
	.4byte gAreaMetatiles_CaveOfFlames            @ 0x57
	.4byte gAreaMetatiles_FortressOfWinds         @ 0x58
	.4byte gAreaMetatiles_FortressOfWindsTop      @ 0x59
	.4byte gAreaMetatiles_InnerMazaal             @ 0x5A
	.4byte gAreaMetatiles_Unused                  @ 0x5B
	.4byte gAreaMetatiles_Unused                  @ 0x5C
	.4byte gAreaMetatiles_Unused                  @ 0x5D
	.4byte gAreaMetatiles_Unused                  @ 0x5E
	.4byte gAreaMetatiles_FortressOfWinds         @ 0x5F
	.4byte gAreaMetatiles_TempleOfDroplets        @ 0x60
	.4byte gAreaMetatiles_61                      @ 0x61
	.4byte gAreaMetatiles_TempleOfDroplets        @ 0x62
	.4byte gAreaMetatiles_Unused                  @ 0x63
	.4byte gAreaMetatiles_Unused                  @ 0x64
	.4byte gAreaMetatiles_Unused                  @ 0x65
	.4byte gAreaMetatiles_Unused                  @ 0x66
	.4byte gAreaMetatiles_TempleOfDroplets        @ 0x67
	.4byte gAreaMetatiles_RoyalCrypt              @ 0x68
	.4byte gAreaMetatiles_Unused                  @ 0x69
	.4byte gAreaMetatiles_Unused                  @ 0x6A
	.4byte gAreaMetatiles_Unused                  @ 0x6B
	.4byte gAreaMetatiles_Unused                  @ 0x6C
	.4byte gAreaMetatiles_Unused                  @ 0x6D
	.4byte gAreaMetatiles_Unused                  @ 0x6E
	.4byte gAreaMetatiles_RoyalCrypt              @ 0x6F
	.4byte gAreaMetatiles_PalaceOfWinds           @ 0x70
	.4byte gAreaMetatiles_PalaceOfWindsBoss       @ 0x71
	.4byte gAreaMetatiles_Unused                  @ 0x72
	.4byte gAreaMetatiles_Unused                  @ 0x73
	.4byte gAreaMetatiles_Unused                  @ 0x74
	.4byte gAreaMetatiles_Unused                  @ 0x75
	.4byte gAreaMetatiles_Unused                  @ 0x76
	.4byte gAreaMetatiles_PalaceOfWinds           @ 0x77
	.4byte gAreaMetatiles_Sanctuary               @ 0x78
	.4byte gAreaMetatiles_Unused                  @ 0x79
	.4byte gAreaMetatiles_Unused                  @ 0x7A
	.4byte gAreaMetatiles_Unused                  @ 0x7B
	.4byte gAreaMetatiles_Unused                  @ 0x7C
	.4byte gAreaMetatiles_Unused                  @ 0x7D
	.4byte gAreaMetatiles_Unused                  @ 0x7E
	.4byte gAreaMetatiles_Sanctuary               @ 0x7F
	.4byte gAreaMetatiles_HyruleCastle            @ 0x80
	.4byte gAreaMetatiles_SanctuaryEntrance       @ 0x81
	.4byte gAreaMetatiles_Unused                  @ 0x82
	.4byte gAreaMetatiles_Unused                  @ 0x83
	.4byte gAreaMetatiles_Unused                  @ 0x84
	.4byte gAreaMetatiles_Unused                  @ 0x85
	.4byte gAreaMetatiles_Unused                  @ 0x86
	.4byte gAreaMetatiles_HyruleCastle            @ 0x87
	.4byte gAreaMetatiles_DarkHyruleCastle        @ 0x88
	.4byte gAreaMetatiles_DarkHyruleCastleOutside @ 0x89
	.4byte gAreaMetatiles_VaatisArms              @ 0x8A
	.4byte gAreaMetatiles_Vaati3                  @ 0x8B
	.4byte gAreaMetatiles_Vaati2                  @ 0x8C
	.4byte gAreaMetatiles_DarkHyruleCastleBridge  @ 0x8D
	.4byte gAreaMetatiles_Unused                  @ 0x8E
	.4byte gAreaMetatiles_DarkHyruleCastle        @ 0x8F
