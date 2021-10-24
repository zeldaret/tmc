#include "global.h"
#include "audio.h"
#include "entity.h"
#include "area.h"
#include "room.h"
#include "flags.h"
#include "npc.h"
#include "player.h"
#include "screen.h"
#include "main.h"
#include "structures.h"
#include "save.h"
#include "script.h"
#include "random.h"
#include "functions.h"

void sub_0804B3C4(void* arg0) {
    sub_0804B29C(arg0);
}

u32 sub_unk3_ArmosInteriors_RuinsEntranceNorth(u32 arg0) {
    return 1;
}

void sub_StateChange_ArmosInteriors_RuinsEntranceNorth() {
    sub_08030118(0);
}

u32 sub_unk3_ArmosInteriors_RuinsEntranceSouth() {
    return 1;
}

void sub_StateChange_ArmosInteriors_RuinsEntranceSouth() {
    sub_08030118(1);
}

u32 sub_unk3_ArmosInteriors_RuinsLeft() {
    return 1;
}

void sub_StateChange_ArmosInteriors_RuinsLeft() {
    sub_08030118(2);
}

u32 sub_unk3_ArmosInteriors_RuinsMiddleLeft() {
    return 1;
}

void sub_StateChange_ArmosInteriors_RuinsMiddleLeft() {
    sub_08030118(3);
}

u32 sub_unk3_ArmosInteriors_RuinsMiddleRight() {
    return 1;
}

void sub_StateChange_ArmosInteriors_RuinsMiddleRight() {
    sub_08030118(4);
}

u32 sub_unk3_ArmosInteriors_RuinsRight() {
    return 1;
}

void sub_StateChange_ArmosInteriors_RuinsRight() {
    sub_08030118(5);
}

u32 sub_unk3_ArmosInteriors_6() {
    return 1;
}

void sub_StateChange_ArmosInteriors_6() {
    sub_08030118(6);
}

u32 sub_unk3_ArmosInteriors_RuinsGrassPath() {
    return 1;
}

void sub_StateChange_ArmosInteriors_RuinsGrassPath() {
    sub_08030118(7);
}

u32 sub_unk3_ArmosInteriors_8() {
    return 1;
}

void sub_StateChange_ArmosInteriors_8() {
    sub_08030118(8);
}

u32 sub_unk3_ArmosInteriors_FortressOfWindsLeft() {
    return 1;
}

void sub_StateChange_ArmosInteriors_FortressOfWindsLeft() {
    Area* a;

    sub_08030118(9);
    a = &gArea;
    *((u8*)&a->localFlagOffset - 1) = 3;
    a->areaMetadata = 0x4e;
}

u32 sub_unk3_ArmosInteriors_FortressOfWindsRight() {
    return 1;
}

void sub_StateChange_ArmosInteriors_FortressOfWindsRight() {
    Area* a;

    sub_08030118(10);
    a = &gArea;
    *((u8*)&a->localFlagOffset - 1) = 3;
    a->areaMetadata = 0x4e;
}

u32 sub_unk3_CrenelMinishPaths_CrenelBean() {
    return 1;
}

void sub_StateChange_CrenelMinishPaths_CrenelBean() {
    sub_080575C8(35);
    sub_08057688();
}

u32 sub_unk3_CrenelMinishPaths_CrenelWater() {
    return 1;
}

void sub_StateChange_CrenelMinishPaths_CrenelWater() {
    sub_080575C8(35);
}

void sub_unk1_CrenelMinishPaths_CrenelWater() {
    sub_080575C8(35);
}

u32 sub_unk3_CrenelMinishPaths_Rainfall() {
    return 1;
}

void sub_StateChange_CrenelMinishPaths_Rainfall() {
    sub_080580B0(34);
}

void sub_unk1_CrenelMinishPaths_Rainfall() {
    sub_080580B0(34);
}

u32 sub_unk3_CrenelMinishPaths_MelarisMine() {
    return 1;
}

void sub_StateChange_CrenelMinishPaths_MelarisMine(void) {
    sub_080580B0(0x22);
    // white sword
    if (GetInventoryValue(0x2))
        SetGlobalFlag(WHITE_SWORD_END);
}

void sub_unk1_CrenelMinishPaths_MelarisMine() {
    sub_080580B0(34);
}

u32 sub_unk3_MinishPaths1_ToMinishVillage() {
    return 1;
}

void sub_StateChange_MinishPaths1_ToMinishVillage() {
    sub_080575C8(30);
}

void sub_unk1_MinishPaths1_ToMinishVillage() {
    sub_080575C8(30);
}

u32 sub_unk3_MinishPaths1_CastorWilds() {
    return 1;
}

void sub_StateChange_MinishPaths1_CastorWilds() {
    sub_080575C8(33);
}

void sub_unk1_MinishPaths1_CastorWilds() {
    sub_080575C8(33);
}

u32 sub_unk3_MinishPaths1_HyruleTown() {
    return 1;
}

void sub_StateChange_MinishPaths1_HyruleTown() {
    sub_080575C8(31);
}

void sub_unk1_MinishPaths1_HyruleTown() {
    sub_080575C8(31);
}

u32 sub_unk3_MinishPaths1_LonLonRanch() {
    return 1;
}

void sub_StateChange_MinishPaths1_LonLonRanch() {
    sub_080575C8(32);
}

void sub_unk1_MinishPaths1_LonLonRanch() {
    sub_080575C8(32);
}

u32 sub_unk3_MinishPaths1_MayorsCabin() {
    return 1;
}

extern EntityData gUnk_080D6138;

void sub_StateChange_MinishPaths1_MayorsCabin(void) {

    sub_080575C8(0x20);

    if (gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY > 0x40)
        LoadRoomEntityList(&gUnk_080D6138);
}

void sub_unk1_MinishPaths1_MayorsCabin() {
    sub_080575C8(32);
}

u32 sub_unk3_HouseInteriors1_Mayor() {
    return 1;
}

extern EntityData gUnk_080D6210;

void sub_StateChange_HouseInteriors1_Mayor(void) {

    if ((u16)gScreenTransition.playerStartPos.HALF.y > 0x40)
        LoadRoomEntityList(&gUnk_080D6210);
}

u32 sub_unk3_HouseInteriors1_PostOffice() {
    return 1;
}

extern EntityData gUnk_080D6340;
extern EntityData gUnk_080D6360;
extern EntityData gUnk_080D6380;
extern EntityData gUnk_080D63A0;
extern EntityData gUnk_080D63C0;
extern EntityData gUnk_080D63E0;
extern EntityData gUnk_080D6400;
extern EntityData gUnk_080D6420;
extern EntityData gUnk_080D6440;

extern u16 gUnk_080D64F8;
extern u16 gUnk_080D6508;

void sub_StateChange_HouseInteriors1_PostOffice(void) {
    u16 itemID;
    s32 i;
    u16* itemArr;
    u16* flagArr;
    s32 j;

    if (CheckKinstoneFused(0x2c)) {
        LoadRoomEntityList(&gUnk_080D6340);
    }
    j = 0;
    itemArr = &gUnk_080D64F8;
    for (i = 7; i >= 0; i--) {
        itemID = *itemArr;
        itemArr++;
        if (GetInventoryValue(itemID)) {
            j++;
        }
    }
    if (CheckLocalFlag(0x8b)) {
        flagArr = &gUnk_080D6508;
        i = 0;
        while (i < j) {
            if (CheckLocalFlag(*flagArr) == 0) {
                SetLocalFlag(*flagArr);
                ClearLocalFlag(0x8b);
                SetLocalFlag(0x8c);
                break;
            }
            i++;
            flagArr++;
        }
    }

    if (CheckLocalFlag(0x1f))
        LoadRoomEntityList(&gUnk_080D6360);

    if (CheckLocalFlag(0x20))
        LoadRoomEntityList(&gUnk_080D6380);

    if (CheckLocalFlag(0x21))
        LoadRoomEntityList(&gUnk_080D63A0);

    if (CheckLocalFlag(0x22))
        LoadRoomEntityList(&gUnk_080D63C0);

    if (CheckLocalFlag(0x23))
        LoadRoomEntityList(&gUnk_080D63E0);

    if (CheckLocalFlag(0x24))
        LoadRoomEntityList(&gUnk_080D6400);

    if (CheckLocalFlag(0x25))
        LoadRoomEntityList(&gUnk_080D6420);

    if (CheckLocalFlag(0x26))
        LoadRoomEntityList(&gUnk_080D6440);
}

u32 sub_unk3_HouseInteriors1_Library2F() {
    return 1;
}

extern EntityData gUnk_080D6578;
extern EntityData gUnk_080D6638;
extern EntityData gUnk_080D6558;
extern EntityData gUnk_080D6618;

void sub_StateChange_HouseInteriors1_Library2F(void) {
    // flippers
    if (GetInventoryValue(0x46) == 0) {
        LoadRoomEntityList(&gUnk_080D6578);
        if (CheckLocalFlag(0x73) == 0) {
            LoadRoomEntityList(&gUnk_080D6638);
            return;
        }
    } else {
        LoadRoomEntityList(&gUnk_080D6558);
    }
    LoadRoomEntityList(&gUnk_080D6618);
}

u32 sub_unk3_HouseInteriors1_Library1F() {
    return 1;
}

extern EntityData gUnk_080D6714;
extern EntityData gUnk_additional1_HouseInteriors1_Library1F;
extern EntityData gUnk_additional0_HouseInteriors1_Library1F;

void sub_StateChange_HouseInteriors1_Library1F(void) {
    if (gSave.unk8 > 4) {
        LoadRoomEntityList(&gUnk_080D6714);
    }
    // flippers
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(MIZUKAKI_START) && CheckLocalFlag(0x6a)) {
        LoadRoomEntityList(&gUnk_additional1_HouseInteriors1_Library1F);
    } else {
        LoadRoomEntityList(&gUnk_additional0_HouseInteriors1_Library1F);
    }
}

u32 sub_unk3_HouseInteriors1_Inn1F() {
    return 1;
}

extern EntityData gUnk_080D6924;

void sub_StateChange_HouseInteriors1_Inn1F(void) {
    if (gSave.unk8 > 7) {
        LoadRoomEntityList(&gUnk_080D6924);
    }
}

extern u32 gUnk_080D6A74[];

u32 sub_unk3_HouseInteriors1_InnWestRoom(void) {
    u32 index;

    if (CheckLocalFlag(0x91) != 0) {
        index = (s32)Random() % 3;
        ClearLocalFlag(1);
    } else {
        index = 0;
        SetLocalFlag(1);
    }
    gRoomVars.field_0x78 = gUnk_080D6A74[index];
    return 1;
}

extern void* script_08010A5C[];

void sub_StateChange_HouseInteriors1_InnWestRoom(void) {
    if (CheckLocalFlag(0x91)) {
        ClearLocalFlag(0x91);
        DoFade(5, 0x100);
        gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x50;
        gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
        sub_080751E8(1, 2, &script_08010A5C);
    }
}

extern u32 gUnk_080D6B18[];

u32 sub_unk3_HouseInteriors1_InnMiddleRoom(void) {
    u32 index;

    if (CheckLocalFlag(0x91) != 0) {
        index = Random() & 1;
        ClearLocalFlag(2);
    } else {
        index = 0;
        SetLocalFlag(2);
    }
    gRoomVars.field_0x78 = gUnk_080D6B18[index];
    return 1;
}

void sub_StateChange_HouseInteriors1_InnMiddleRoom(void) {
    if (CheckLocalFlag(0x91) != 0) {
        ClearLocalFlag(0x91);
        DoFade(5, 0x100);
        gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x50;
        gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
        sub_080751E8(1, 2, &script_08010A5C);
    }
}

extern u32 gUnk_080D6BB8[];

u32 sub_unk3_HouseInteriors1_InnEastRoom(void) {
    s32 index;

    if (CheckLocalFlag(0x91) != 0) {
        index = (s32)Random() % 3;
        ClearLocalFlag(3);
    } else {
        index = 0;
        SetLocalFlag(3);
    }
    gRoomVars.field_0x78 = gUnk_080D6BB8[index];
    return 1;
}

void sub_StateChange_HouseInteriors1_InnEastRoom(void) {
    if (CheckLocalFlag(0x91)) {
        ClearLocalFlag(0x91);
        DoFade(5, 0x100);
        gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x60;
        gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
        sub_080751E8(1, 2, &script_08010A5C);
    }
}

u32 sub_unk3_HouseInteriors1_InnWest2F() {
    return 1;
}

extern EntityData UpperInn_Oracles;
extern EntityData UpperInn_NoFarore;
extern EntityData UpperInn_NoNayru;
extern EntityData UpperInn_NoDin;
extern EntityData UpperInn_Farore;
extern EntityData UpperInn_Nayru;
extern EntityData UpperInn_Din;

void sub_StateChange_HouseInteriors1_InnWest2F(void) {
    int iVar1;

    if (gSave.unk8 < 4)
        return;

    if (CheckGlobalFlag(RENTED_HOUSE_DIN)) {
        if (!CheckGlobalFlag(NEW_HOUSE_NAYRU))
            if (!CheckGlobalFlag(NEW_HOUSE_FARORE))
                LoadRoomEntityList(&UpperInn_NoDin);
            else
                LoadRoomEntityList(&UpperInn_Nayru);
        else
            LoadRoomEntityList(&UpperInn_Farore);
    } else if (CheckGlobalFlag(RENTED_HOUSE_NAYRU)) {
        if (CheckGlobalFlag(NEW_HOUSE_DIN))
            LoadRoomEntityList(&UpperInn_Farore);
        else if (!CheckGlobalFlag(NEW_HOUSE_FARORE))
            LoadRoomEntityList(&UpperInn_NoNayru);
        else
            LoadRoomEntityList(&UpperInn_Din);
    } else if (CheckGlobalFlag(RENTED_HOUSE_FARORE)) {
        if (CheckGlobalFlag(NEW_HOUSE_DIN))
            LoadRoomEntityList(&UpperInn_Nayru);
        else if (CheckGlobalFlag(NEW_HOUSE_NAYRU))
            LoadRoomEntityList(&UpperInn_Din);
        else
            LoadRoomEntityList(&UpperInn_NoFarore);
    } else
        LoadRoomEntityList(&UpperInn_Oracles);
}

u32 sub_unk3_HouseInteriors1_InnEast2F() {
    return 1;
}

void sub_StateChange_HouseInteriors1_InnEast2F() {
}

u32 sub_unk3_HouseInteriors1_InnMinishHeartPiece() {
    return 1;
}

void sub_StateChange_HouseInteriors1_InnMinishHeartPiece() {
}

u32 sub_unk3_HouseInteriors1_SchoolWest() {
    return 1;
}

extern EntityData gUnk_080D7038;

void sub_StateChange_HouseInteriors1_SchoolWest(void) {
    if (gSave.unk8 < 8) {
        LoadRoomEntityList(&gUnk_080D7038);
    }
    if (gRoomVars.field_0x0 == 0) {
        sub_08052CA4(2, 0, 0x2c8, 0xa8);
    }
}

u32 sub_unk3_HouseInteriors1_SchoolEast() {
    return 1;
}

extern EntityData gUnk_080D7140;
extern EntityData gUnk_080D7170;
extern EntityData gUnk_080D71A0;
extern EntityData gUnk_080D71D0;
extern EntityData gUnk_080D71F0;

void sub_StateChange_HouseInteriors1_SchoolEast(void) {

    if (gSave.unk8 == 6)
        LoadRoomEntityList(&gUnk_080D7140);

    if (gSave.unk8 == 7)
        LoadRoomEntityList(&gUnk_080D7170);

    if ((gSave.unk8 < 8) || (LoadRoomEntityList(&gUnk_080D71A0), gSave.unk8 < 8))
        LoadRoomEntityList(&gUnk_080D71D0);
    else
        LoadRoomEntityList(&gUnk_080D71F0);
}

extern u32 gUnk_080D7348;

u32 sub_unk3_HyruleCastle_0(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080D7348;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080D7328;

void sub_StateChange_HyruleCastle_0(void) {
    if (!CheckGlobalFlag(LV2_CLEAR)) {
        LoadRoomEntityList(&gUnk_080D7328);
    }
#if defined(JP) || defined(DEMO_JP)
    if (CheckGlobalFlag(CASTLE_BGM) || CheckGlobalFlag(ENDING)) {
#else
#ifdef EU
    if (CheckGlobalFlag(ENDING)) {
#else
    if (CheckGlobalFlag(CASTLE_BGM)) {

        gArea.pMusicIndex = 0x1b;
    } else if (CheckGlobalFlag(ENDING)) {
#endif
#endif
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

extern u32 gUnk_080D7410;

u32 sub_unk3_HyruleCastle_1(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080D7410;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080D73B0;
extern EntityData gUnk_080D73E0;

void sub_StateChange_HyruleCastle_1(void) {
#ifdef EU
    if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    } else {
        if (!CheckGlobalFlag(LV2_CLEAR)) {
            LoadRoomEntityList(&gUnk_080D73B0);
        }
        if (!CheckGlobalFlag(LV1_CLEAR) && CheckGlobalFlag(TABIDACHI)) {
            LoadRoomEntityList(&gUnk_080D73E0);
        }
    }
#else
    if (!CheckGlobalFlag(ENDING)) {
        if (!CheckGlobalFlag(LV2_CLEAR)) {
            LoadRoomEntityList(&gUnk_080D73B0);
        }
        if (!CheckGlobalFlag(LV1_CLEAR) && CheckGlobalFlag(TABIDACHI)) {
            LoadRoomEntityList(&gUnk_080D73E0);
        }
        if (CheckGlobalFlag(CASTLE_BGM)) {
            gArea.pMusicIndex = gArea.musicIndex;
        }
    } else {
        gArea.pMusicIndex = gArea.musicIndex;
    }
#endif
}

u32 sub_unk3_HyruleCastle_2() {
    return 1;
}

extern EntityData gUnk_080D74C8;
extern EntityData gUnk_080D7588;
extern EntityData gUnk_080D75D8;
extern EntityData gUnk_080D7618;

void sub_StateChange_HyruleCastle_2(void) {
#ifndef EU
    if (CheckGlobalFlag(CASTLE_BGM)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }
#endif

    if (CheckGlobalFlag(ENDING)) {
        LoadRoomEntityList(&gUnk_080D7618);
        gArea.pMusicIndex = gArea.musicIndex;
    } else if (CheckGlobalFlag(TABIDACHI) == 0) {
        LoadRoomEntityList(&gUnk_080D74C8);
        gArea.pMusicIndex = 0x1b;
    } else if (CheckGlobalFlag(LV1_CLEAR) == 0) {
        LoadRoomEntityList(&gUnk_080D7588);
    } else {
        LoadRoomEntityList(&gUnk_080D75D8);
    }
}

u32 sub_unk3_HyruleCastle_3() {
    return 1;
}

extern EntityData gUnk_additional0_HyruleCastle_3;

void sub_StateChange_HyruleCastle_3(void) {
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckLocalFlag(0x9b)) {
#else
    if (CheckLocalFlag(0x9c)) {
#endif
        LoadRoomEntityList(&gUnk_additional0_HyruleCastle_3);
    }
}

u32 sub_unk3_HyruleCastle_4(void) {
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlag(0x9e)) {
#else
    if (!CheckLocalFlag(0x9f)) {
#endif
        gScreenTransition.field_0xf = 5;
        ClearGlobalFlag(ZELDA_CHASE);
    }
    return 1;
}

extern u32 script_08009E88;

void sub_StateChange_HyruleCastle_4(void) {
#if defined(JP) || defined(DEMO_JP) || defined(EU)
    if (!CheckLocalFlag(0x9e)) {
#else
    if (!CheckLocalFlag(0x9f)) {
#endif
        DoFade(5, 0x100);
        gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0xb0;
        gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x40;
        sub_080751E8(0, 6, &script_08009E88);
#ifdef EU
        SoundReq(0x80010000);
        gArea.musicIndex = gArea.pMusicIndex;
    }
#else
    }

    if (!CheckGlobalFlag(TABIDACHI)) {
        sub_08052878();
#if !(defined(JP) || defined(DEMO_JP))
    } else {
#else
    }
#endif
        if (CheckGlobalFlag(CASTLE_BGM)) {
#if defined(JP) || defined(DEMO_JP)
            gArea.pMusicIndex = gArea.musicIndex;
#else
        gArea.pMusicIndex = 0x1b;
#endif
        }
#if !(defined(JP) || defined(DEMO_JP))
    }
#endif
#endif
}

extern ScreenTransitionData gUnk_0813AB80;

void sub_0804BCDC() {
    sub_0808091C(&gUnk_0813AB80, 4);
}

u32 sub_unk3_HyruleCastle_5() {
    return 1;
}

void sub_StateChange_HyruleCastle_5() {
}

u32 sub_unk3_87_Main() {
    return 1;
}

void sub_StateChange_87_Main() {
}

u32 sub_unk3_45_Main() {
    return 1;
}

void sub_StateChange_45_Main() {
}

u32 sub_unk3_4D_Main() {
    return 1;
}

void sub_StateChange_4D_Main() {
}

u32 sub_unk3_57_Main() {
    return 1;
}

void sub_StateChange_57_Main() {
}

u32 sub_unk3_5F_Main() {
    return 1;
}

void sub_StateChange_5F_Main() {
}

u32 sub_unk3_67_Main() {
    return 1;
}

void sub_StateChange_67_Main() {
}

u32 sub_unk3_6F_Main() {
    return 1;
}

void sub_StateChange_6F_Main() {
}

u32 sub_unk3_77_Main() {
    return 1;
}

void sub_StateChange_77_Main() {
}

u32 sub_unk3_7F_Main() {
    return 1;
}

void sub_StateChange_7F_Main() {
}

u32 sub_unk3_8F_Main() {
    return 1;
}

void sub_StateChange_8F_Main() {
}

u32 sub_unk3_GreatFairies_Entrance() {
    return 1;
}

void sub_StateChange_GreatFairies_Entrance() {
}

u32 sub_unk3_GreatFairies_Exit() {
    return 1;
}

extern EntityData gUnk_080D7D34;

void sub_StateChange_GreatFairies_Exit(void) {
    // four sword
    if (GetInventoryValue(0x6)) {
        SetTile(0x4072, 0x14d, 1);
        SetTile(0x4072, 0x10c, 1);
        SetTile(0x4090, 0x14c, 1);
        SetTile(0x4090, 0x18c, 1);
        LoadRoomEntityList(&gUnk_080D7D34);
    }
}

u32 sub_unk3_Dojos_Grayblade() {
    return 1;
}

void sub_StateChange_Dojos_Grayblade() {
}

u32 sub_unk3_Dojos_Splitblade() {
    return 1;
}

void sub_StateChange_Dojos_Splitblade() {
}

u32 sub_unk3_Dojos_Greatblade() {
    return 1;
}

void sub_StateChange_Dojos_Greatblade() {
}

u32 sub_unk3_Dojos_Scarblade() {
    return 1;
}

void sub_StateChange_Dojos_Scarblade() {
}

u32 sub_unk3_Dojos_Swiftblade() {
    return 1;
}

void sub_StateChange_Dojos_Swiftblade() {
}

u32 sub_unk3_Dojos_Grimblade() {
    return 1;
}

extern EntityData gUnk_080D827C;

void sub_StateChange_Dojos_Grimblade(void) {
    if (!CheckLocalFlag(3)) {
        LoadRoomEntityList(&gUnk_080D827C);
    } else {
        sub_0805BC4C();
        SetTileType(0x76, 0x82, 2);
        SetTileType(0x76, 0x8c, 2);
    }
}

u32 sub_unk3_Dojos_Waveblade() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade() {
}

u32 sub_unk3_Dojos_7() {
    return 1;
}

void sub_StateChange_Dojos_7() {
}

u32 sub_unk3_Dojos_8() {
    return 1;
}

void sub_StateChange_Dojos_8() {
}

u32 sub_unk3_Dojos_9() {
    return 1;
}

void sub_StateChange_Dojos_9() {
}

u32 sub_unk3_Dojos_ToGrimblade() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade() {
}

u32 sub_unk3_Dojos_ToSplitblade() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade() {
}

u32 sub_unk3_Dojos_ToGreatblade() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade() {
}

u32 sub_unk3_Dojos_ToScarblade() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade() {
}

u32 sub_unk3_GoronCave_StairsToCave() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave() {
}

u32 sub_unk3_GoronCave_Main() {
    return 1;
}

extern EntityData gUnk_080D8B24;
extern EntityData gUnk_080D8AC4;
extern EntityData gUnk_080D8A74;
extern EntityData gUnk_080D8A34;
extern EntityData gUnk_080D8A04;
extern EntityData gUnk_080D89E4;

extern u32 gUnk_080D8BBC;
extern u32 gUnk_080D8BFA;
extern u32 gUnk_080D8C68;

void sub_StateChange_GoronCave_Main(void) {
    if (!CheckLocalFlag(0x68))
        SetLocalFlag(0x68);

    if (CheckKinstoneFused(0x2f))
        LoadRoomEntityList(&gUnk_080D8B24);
    else if (CheckKinstoneFused(0x2b))
        LoadRoomEntityList(&gUnk_080D8AC4);
    else if (CheckKinstoneFused(0x26))
        LoadRoomEntityList(&gUnk_080D8A74);
    else if (CheckKinstoneFused(0x2a))
        LoadRoomEntityList(&gUnk_080D8A34);
    else if (CheckKinstoneFused(0x25))
        LoadRoomEntityList(&gUnk_080D8A04);
    else
        LoadRoomEntityList(&gUnk_080D89E4);

    if (CheckKinstoneFused(0x25))
        sub_0807BB68(&gUnk_080D8BBC, 0x7c5, 1);

    if (CheckKinstoneFused(0x26))
        sub_0807BB68(&gUnk_080D8BFA, 0x503, 1);

    if (CheckKinstoneFused(0x2f))
        sub_0807BB68(&gUnk_080D8C68, 0x281, 1);
}

#if 0
typedef struct {
    u32 a;
    u16 x, y;
    u16 entCnt;
    u16 shakeTime, shakeMag, sfx;
} struct_080D8E54;

typedef struct {
    u32 field_0x0;
    u32 field_0x4;
} struct_0804BF38;

extern struct_080D8E54 gUnk_080D8E50[];

void sub_0804BF38(u32 arg0, struct_0804BF38* arg1)
{
  u32 numEnts;
  u32 iVar2;
  u32 iVar3;
  Entity *fx;
  u32 entCnt;
  u32 xOff;
  
  iVar2 = arg1->field_0x4;
  iVar3 = iVar2 * 0x10;
  sub_0807BB68(gUnk_080D8E50[iVar2].a, ((gUnk_080D8E50[iVar3].x >> 4) & 0x3f | (gUnk_080D8E50[iVar3].y >> 4) & 0x3f) << 6, 1);
  numEnts = gUnk_080D8E50[iVar3].entCnt;
  entCnt = 0;

  if (numEnts != 0) {
    for (xOff = 0; entCnt < numEnts; xOff += 0x10, entCnt++) {
      fx = CreateObject(SPECIAL_FX, 0xf, 0);
      if (fx != NULL) {
        fx->x.HALF.HI = gUnk_080D8E50[iVar3].x + gRoomControls.roomOriginX + xOff;
        fx->y.HALF.HI = gUnk_080D8E50[iVar3].y + gRoomControls.roomOriginY + (entCnt & 1) * 8;
      }
      fx = CreateObject(SPECIAL_FX, 0x54, 0);
      if (fx != NULL) {
        fx->x.HALF.HI = gUnk_080D8E50[iVar3].x + gRoomControls.roomOriginX + xOff;
        fx->y.HALF.HI = gUnk_080D8E50[iVar3].y + gRoomControls.roomOriginY + -0xc + (entCnt & 1) * 8;
        fx->direction = 0;
        fx->speed = 0x100;
      }
    }
  }

  sub_08080964(gUnk_080D8E50[iVar3].shakeTime, gUnk_080D8E50[iVar3].shakeMag);
  SoundReq(gUnk_080D8E50[iVar2].sfx);
}
#else
ASM_FUNC("asm/non_matching/sub_0804BF38.inc", void sub_0804BF38(Entity* this, ScriptExecutionContext* context))
#endif

u32 sub_unk3_EzloCutscene_Main() {
    return 1;
}

void sub_StateChange_EzloCutscene_Main() {
}

u32 sub_unk3_RoyalValley_Main() {
    return 1;
}

extern EntityData gUnk_080D90C8;
extern EntityData gUnk_080D9108;
extern EntityData gUnk_080D9098;

void sub_StateChange_RoyalValley_Main(void) {
    if (!CheckGlobalFlag(HAKA_KEY_LOST)) {
        // graveyard key
        if (GetInventoryValue(0x3c) == 1) {
            LoadRoomEntityList(&gUnk_080D90C8);
            LoadRoomEntityList(&gUnk_080D9108);
        }
    } else if (!CheckGlobalFlag(HAKA_KEY_FOUND))
        LoadRoomEntityList(&gUnk_080D9108);

    if (GetInventoryValue(0x3c) != 2) {
        LoadRoomEntityList(&gUnk_080D9098);
        SetTileType(0x17a, 0x58e, 1);
        SetTileType(0x17b, 0x58f, 1);
        SetTileType(0x17c, 0x5ce, 1);
        SetTileType(0x17d, 0x5cf, 1);
    }

    sub_08054570();
    sub_08059278();
    SetTile(0x4072, 0xa47, 1);
    SetTile(0x4072, 0xc47, 1);

    if (CheckGlobalFlag(MAZE_CLEAR))
        if (gScreenTransition.playerStartPos.WORD == 0x2780078) // todo: wtf
            SoundReq(SFX_SECRET);

    ClearGlobalFlag(MAZE_CLEAR);
}

u32 sub_unk3_RoyalValley_ForestMaze() {
    return 1;
}

void sub_StateChange_RoyalValley_ForestMaze(void) {
    gArea.areaMetadata |= 0x40;
    sub_0804C128(gArea.filler[7] |= 1);
}

ASM_FUNC("asm/non_matching/sub_0804C128.inc", void sub_0804C128(u32 arg0))

ASM_FUNC("asm/non_matching/sub_0804C258.inc", void sub_0804C258(void))

ASM_FUNC("asm/non_matching/sub_0804C290.inc", void sub_0804C290(void))

u32 sub_unk3_RoyalValleyGraves_HeartPiece() {
    return 1;
}

void sub_StateChange_RoyalValleyGraves_HeartPiece() {
}

u32 sub_unk3_RoyalValleyGraves_Gina() {
    return 1;
}

void sub_StateChange_RoyalValleyGraves_Gina() {
}

u32 sub_unk3_MinishRafters_Cafe() {
    return 1;
}

void sub_StateChange_MinishRafters_Cafe() {
    sub_08058324(0);
}

u32 sub_unk3_MinishRafters_Stockwell() {
    return 1;
}

void sub_StateChange_MinishRafters_Stockwell() {
    sub_08058324(1);
}

u32 sub_unk3_MinishRafters_DrLeft() {
    return 1;
}

extern EntityData gUnk_080D9800;

void sub_StateChange_MinishRafters_DrLeft(void) {

    sub_08058324(2);

    if (CheckGlobalFlag(MIZUKAKI_START) && !CheckGlobalFlag(MIZUKAKI_HARIFALL))
        LoadRoomEntityList(&gUnk_080D9800);
}

void sub_unk1_MinishRafters_DrLeft() {
    sub_StateChange_MinishRafters_DrLeft();
}

u32 sub_unk3_MinishRafters_Bakery() {
    return 1;
}

void sub_StateChange_MinishRafters_Bakery() {
    sub_08058324(3);
}

u32 sub_unk3_CastorWilds_Main() {
    return 1;
}

extern EntityData gUnk_080D9CC8;
extern EntityData gUnk_080D9CE8;
extern EntityData gUnk_080D9C38;

void sub_StateChange_CastorWilds_Main(void) {

    SetGlobalFlag(DASHBOOTS);

    if (CheckKinstoneFused(0x5b))
        LoadRoomEntityList(&gUnk_080D9CC8);

    if ((gSave.windcrests & 0x20000000) == 0)
        LoadRoomEntityList(&gUnk_080D9CE8);

    // pegasus boots
    if (!GetInventoryValue(0x15))
        LoadRoomEntityList(&gUnk_080D9C38);
}

void sub_unk1_CastorWilds_Main(void) {
    if ((gSave.windcrests & 0x20000000) == 0)
        LoadRoomEntityList(&gUnk_080D9CE8);
}

u32 sub_unk3_CastorCaves_South() {
    return 1;
}

void sub_StateChange_CastorCaves_South() {
}

u32 sub_unk3_CastorCaves_North() {
    return 1;
}

void sub_StateChange_CastorCaves_North() {
}

u32 sub_unk3_CastorCaves_WindRuins() {
    return 1;
}

void sub_StateChange_CastorCaves_WindRuins() {
}

u32 sub_unk3_CastorCaves_Darknut() {
    return 1;
}

void sub_StateChange_CastorCaves_Darknut() {
}

u32 sub_unk3_CastorCaves_HeartPiece() {
    return 1;
}

void sub_StateChange_CastorCaves_HeartPiece() {
}

extern u32 gUnk_080DA230;

u32 sub_unk3_CastorDarknut_Main(void) {
    if (!CheckLocalFlag(0x39))
        gRoomVars.field_0x6c = &gUnk_080DA230;

    return 1;
}

void sub_StateChange_CastorDarknut_Main() {
}

u32 sub_unk3_CastorDarknut_Hall() {
    return 1;
}

void sub_StateChange_CastorDarknut_Hall() {
}

u32 sub_unk3_GreatFairies_Graveyard() {
    return 1;
}

void sub_StateChange_GreatFairies_Graveyard() {
}

u32 sub_unk3_GreatFairies_MinishWoods() {
    return 1;
}

void sub_StateChange_GreatFairies_MinishWoods() {
}

u32 sub_unk3_GreatFairies_MtCrenel() {
    return 1;
}

void sub_StateChange_GreatFairies_MtCrenel() {
}

u32 sub_unk3_GardenFountains_East() {
    return 1;
}

void sub_StateChange_GardenFountains_East() {
}

u32 sub_unk3_GardenFountains_West() {
    return 1;
}

void sub_StateChange_GardenFountains_West() {
}

u32 sub_unk3_MinishHouseInteriors_GentariMain() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_GentariMain() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_GentariExit() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_GentariExit() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_Festari() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_Festari() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_Red() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_Red() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_Green() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_Green() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_Blue() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_Blue() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_SideArea() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_SideArea() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_ShoeMinish() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_ShoeMinish() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_PotMinish() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_PotMinish() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_BarrelMinish() {
    return 1;
}

extern EntityData gUnk_080DAB44;
extern EntityData gUnk_080DAB64;
extern EntityData gUnk_080DAB84;
extern EntityData gUnk_080DAC54;
extern EntityData gUnk_080DAD24;
extern EntityData gUnk_080DABC4;
extern EntityData gUnk_080DAC94;
extern EntityData gUnk_080DAD64;
extern EntityData gUnk_080DAC04;
extern EntityData gUnk_080DACD4;
extern EntityData gUnk_080DADA4;

void sub_StateChange_MinishHouseInteriors_BarrelMinish(void) {
    u32 uVar1;

    // jabber nut
    if (!GetInventoryValue(0x5b))
        LoadRoomEntityList(&gUnk_080DAB44);
    else
        LoadRoomEntityList(&gUnk_080DAB64);

    if (!CheckGlobalFlag(DRUG_COUNT))
        goto a;

    if (sub_08060354()) {
        SetRoomFlag(0);
        if (!CheckGlobalFlag(DRUG_1))
            uVar1 = 0x3200;
        else if (!CheckGlobalFlag(DRUG_2))
            uVar1 = 0x4600;
        else
            uVar1 = 0x4880;
    } else {
    a:
        if (CheckGlobalFlag(DRUG_3))
            uVar1 = 0x4900;
        else if (CheckGlobalFlag(DRUG_2))
            uVar1 = 0x4a00;
        else if (CheckGlobalFlag(DRUG_1))
            uVar1 = 0x5200;
        else
            uVar1 = 0x9200;
    }
    if (uVar1 & 0x8000)
        LoadRoomEntityList(&gUnk_080DAB84);

    if (uVar1 & 0x4000)
        LoadRoomEntityList(&gUnk_080DAC54);

    if (uVar1 & 0x2000)
        LoadRoomEntityList(&gUnk_080DAD24);

    if (uVar1 & 0x1000)
        LoadRoomEntityList(&gUnk_080DABC4);

    if (uVar1 & 0x800)
        LoadRoomEntityList(&gUnk_080DAC94);

    if (uVar1 & 0x400)
        LoadRoomEntityList(&gUnk_080DAD64);

    if (uVar1 & 0x200)
        LoadRoomEntityList(&gUnk_080DAC04);

    if (uVar1 & 0x100)
        LoadRoomEntityList(&gUnk_080DACD4);

    if (uVar1 & 0x80)
        LoadRoomEntityList(&gUnk_080DADA4);

    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_MelariMinesSouthwest() {
    return 1;
}

extern EntityData gUnk_080DAEE8;

void sub_StateChange_MinishHouseInteriors_MelariMinesSouthwest(void) {

    if (CheckGlobalFlag(WHITE_SWORD_END))
        LoadRoomEntityList(&gUnk_080DAEE8);

    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_MelariMinesSoutheast() {
    return 1;
}

extern EntityData gUnk_080DAF80;

void sub_StateChange_MinishHouseInteriors_MelariMinesSoutheast(void) {

    if (CheckGlobalFlag(WHITE_SWORD_END))
        LoadRoomEntityList(&gUnk_080DAF80);

    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_MelariMinesEast() {
    return 1;
}

extern EntityData gUnk_080DB018;

void sub_StateChange_MinishHouseInteriors_MelariMinesEast(void) {

    if (CheckGlobalFlag(WHITE_SWORD_END))
        LoadRoomEntityList(&gUnk_080DB018);

    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_HyruleFieldSouthwest() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_HyruleFieldSouthwest() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_HyruleFieldOutsideLinksHouse() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_HyruleFieldOutsideLinksHouse() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_NextToKnuckle() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_NextToKnuckle() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_Librari() {
    return 1;
}

extern EntityData gUnk_080DB238;

void sub_StateChange_MinishHouseInteriors_Librari(void) {

    if (gSave.unk8 > 8)
        LoadRoomEntityList(&gUnk_080DB238);

    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_HyruleFieldExit() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_HyruleFieldExit() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_HyruleTown() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_HyruleTown() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_MinishWoodsBomb() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_MinishWoodsBomb() {
    sub_0801AFE4();
}

u32 sub_unk3_MinishHouseInteriors_LakeHyliaOcarina() {
    return 1;
}

void sub_StateChange_MinishHouseInteriors_LakeHyliaOcarina() {
    sub_0801AFE4();
}

u32 sub_unk3_TownMinishHoles_MayorsHouse() {
    return 1;
}

extern EntityData gUnk_080DB4D0;
extern EntityData gUnk_080DB4A0;

void sub_StateChange_TownMinishHoles_MayorsHouse(void) {

    // flippers and history of masks book
    if (!GetInventoryValue(0x46) && !GetInventoryValue(0x3b) && CheckLocalFlag(0x71))
        LoadRoomEntityList(&gUnk_080DB4D0);
    else
        LoadRoomEntityList(&gUnk_080DB4A0);

    sub_0801AFE4();
}

u32 sub_unk3_TownMinishHoles_WestOracle() {
    return 1;
}

void sub_StateChange_TownMinishHoles_WestOracle() {
    sub_0801AFE4();
}

u32 sub_unk3_TownMinishHoles_DrLeft() {
    return 1;
}

void sub_StateChange_TownMinishHoles_DrLeft() {
    sub_0801AFE4();
}

u32 sub_unk3_TownMinishHoles_Carpenter() {
    return 1;
}

void sub_StateChange_TownMinishHoles_Carpenter() {
    sub_0801AFE4();
}

u32 sub_unk3_TownMinishHoles_Cafe() {
    return 1;
}

void sub_StateChange_TownMinishHoles_Cafe() {
    sub_0801AFE4();
}

u32 sub_unk3_TownMinishHoles_5() {
    return 1;
}

void sub_StateChange_TownMinishHoles_5() {
    sub_0801AFE4();
}

extern u32 gUnk_080DB910;

u32 sub_unk3_TownMinishHoles_LibraryBookshelf(void) {
    if (CheckGlobalFlag(MIZUKAKI_START) && !CheckLocalFlag(0x73)) {
        gRoomVars.field_0x70 = &gUnk_080DB910;
    }
    return 1;
}

extern EntityData gUnk_080DB8F0;
extern EntityData gUnk_additional2_TownMinishHoles_LibraryBookshelf;

void sub_StateChange_TownMinishHoles_LibraryBookshelf(void) {

    LoadRoomEntityList(&gUnk_080DB8F0);
    // flippers
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(MIZUKAKI_START)) {
        LoadRoomEntityList(&gUnk_additional2_TownMinishHoles_LibraryBookshelf);
    }
    sub_0801AFE4();
}

u32 sub_unk3_TownMinishHoles_LibrariBookHouse() {
    return 1;
}

extern EntityData gUnk_080DBA08;

void sub_StateChange_TownMinishHoles_LibrariBookHouse(void) {

    // flippers
    if (GetInventoryValue(0x46) || !CheckLocalFlag(0x73)) {
        LoadRoomEntityList(&gUnk_080DBA08);
    }
    sub_0801AFE4();
}

u32 sub_unk3_TownMinishHoles_RemShoeShop() {
    return 1;
}

extern EntityData gUnk_080DBB50;
extern EntityData gUnk_080DBB70;
extern EntityData gUnk_080DBB10;
extern EntityData gUnk_080DBAD0;
extern EntityData gUnk_080DBB90;

void sub_StateChange_TownMinishHoles_RemShoeShop(void) {
    u32 tilePos;
    u32 i;

    if (!CheckLocalFlag(0x60)) {
        LoadRoomEntityList(&gUnk_080DBB50);
    }

    // pegasus boots
    if (GetInventoryValue(0x15) == 1) {
        LoadRoomEntityList(&gUnk_080DBB70);
        LoadRoomEntityList(&gUnk_080DBB10);
    } else {
        LoadRoomEntityList(&gUnk_080DBAD0);
    }
    if (!CheckLocalFlag(0x62)) {
        tilePos = 0x140;
        for (i = 0; i < 0x13; i++, tilePos++) {
            SetTileType(0x4072, tilePos, 1);
        }
    }
    LoadRoomEntityList(&gUnk_080DBB90);
    sub_0801AFE4();
}

u32 sub_unk3_MinishCaves_BeanPesto() {
    return 1;
}

void sub_StateChange_MinishCaves_BeanPesto() {
}

u32 sub_unk3_MinishCaves_SoutheastWater1() {
    return 1;
}

void sub_StateChange_MinishCaves_SoutheastWater1() {
}

u32 sub_unk3_MinishCaves_SoutheastWater2() {
    return 1;
}

void sub_StateChange_MinishCaves_SoutheastWater2() {
}

u32 sub_unk3_MinishCaves_Ruins() {
    return 1;
}

void sub_StateChange_MinishCaves_Ruins() {
}

u32 sub_unk3_MinishCaves_OutsideLinksHouse() {
    return 1;
}

void sub_StateChange_MinishCaves_OutsideLinksHouse() {
}

u32 sub_unk3_MinishCaves_MinishWoodsNorth1() {
    return 1;
}

void sub_StateChange_MinishCaves_MinishWoodsNorth1() {
}

u32 sub_unk3_MinishCaves_MinishWoodsNorth2() {
    return 1;
}

void sub_StateChange_MinishCaves_MinishWoodsNorth2() {
}

u32 sub_unk3_MinishCaves_LakeHyliaNorth() {
    return 1;
}

void sub_StateChange_MinishCaves_LakeHyliaNorth() {
}

u32 sub_unk3_MinishCaves_LakeHyliaLibrari() {
    return 1;
}

void sub_StateChange_MinishCaves_LakeHyliaLibrari() {
}

u32 sub_unk3_MinishCaves_MinishWoodsSouthwest() {
    return 1;
}

void sub_StateChange_MinishCaves_MinishWoodsSouthwest() {
}

u32 sub_unk3_MinishVillage_Main() {
    return 1;
}

extern EntityData gUnk_080DC390;
extern EntityData gUnk_080DC3F0;
extern EntityData gUnk_080DC430;
extern EntityData gUnk_080DC530;
extern EntityData gUnk_080DC470;
extern EntityData gUnk_080DC4C0;

void sub_StateChange_MinishVillage_Main(void) {

    // jabber nut
    if (!GetInventoryValue(0x5b)) {
        LoadRoomEntityList(&gUnk_080DC390);
        if (!CheckLocalFlagByOffset(0x200, 0x80)) {
            LoadRoomEntityList(&gUnk_080DC3F0);
        }
    } else {
        LoadRoomEntityList(&gUnk_080DC430);
        // gust jar
        if (!GetInventoryValue(0x11)) {
            LoadRoomEntityList(&gUnk_080DC530);
        }
    }
    if ((!CheckLocalFlagByOffset(0x200, 0x83)) && GetInventoryValue(0x11)) {
        LoadRoomEntityList(&gUnk_080DC470);
    }
    if (!CheckLocalFlag(0x8d)) {
        LoadRoomEntityList(&gUnk_080DC4C0);
    }
    sub_08057E64();
}

u32 sub_unk3_MinishVillage_SideHouse() {
    return 1;
}

void sub_StateChange_MinishVillage_SideHouse() {
}

typedef struct {
    u8 LO[0x4000];
    u8 HI[0x4000];
} struct_086D4460;

extern struct_086D4460 gUnk_086D4460;

void sub_unk2_MinishVillage_SideHouse(void) {
    LoadResourceAsync(&gUnk_086D4460.LO, 0x6000000, 0x4000);
    LoadResourceAsync(&gUnk_086D4460.HI, 0x6008000, 0x4000);
    LoadPaletteGroup(0x19);
}

u32 sub_unk3_CastleGardenMinishHoles_East() {
    return 1;
}

void sub_StateChange_CastleGardenMinishHoles_East() {
}

u32 sub_unk3_CastleGardenMinishHoles_West() {
    return 1;
}

void sub_StateChange_CastleGardenMinishHoles_West() {
}

u32 sub_unk3_37_0() {
    return 1;
}

void sub_StateChange_37_0() {
}

u32 sub_unk3_37_1() {
    return 1;
}

void sub_StateChange_37_1() {
}

u32 sub_unk3_MinishCracks_LonLonRanchNorth() {
    return 1;
}

void sub_StateChange_MinishCracks_LonLonRanchNorth() {
}

u32 sub_unk3_MinishCracks_LakeHyliaEast() {
    return 1;
}

void sub_StateChange_MinishCracks_LakeHyliaEast() {
}

u32 sub_unk3_MinishCracks_HyruleCastleGarden() {
    return 1;
}

void sub_StateChange_MinishCracks_HyruleCastleGarden() {
}

u32 sub_unk3_MinishCracks_MtCrenel() {
    return 1;
}

void sub_StateChange_MinishCracks_MtCrenel() {
}

u32 sub_unk3_MinishCracks_EastHyruleCastle() {
    return 1;
}

void sub_StateChange_MinishCracks_EastHyruleCastle() {
}

u32 sub_unk3_MinishCracks_5() {
    return 1;
}

void sub_StateChange_MinishCracks_5() {
}

u32 sub_unk3_MinishCracks_CastleWildsBowHole() {
    return 1;
}

extern EntityData gUnk_080DCB10;

void sub_StateChange_MinishCracks_CastleWildsBowHole(void) {

    // bow
    if (!GetInventoryValue(0x9)) {
        LoadRoomEntityList(&gUnk_080DCB10);
    }
}

u32 sub_unk3_MinishCracks_RuinsEntrance() {
    return 1;
}

void sub_StateChange_MinishCracks_RuinsEntrance() {
}

u32 sub_unk3_MinishCracks_MinishWoodsSouth() {
    return 1;
}

void sub_StateChange_MinishCracks_MinishWoodsSouth() {
}

u32 sub_unk3_MinishCracks_CastorWildsNorth() {
    return 1;
}

void sub_StateChange_MinishCracks_CastorWildsNorth() {
}

u32 sub_unk3_MinishCracks_CastorWildsWest() {
    return 1;
}

void sub_StateChange_MinishCracks_CastorWildsWest() {
}

u32 sub_unk3_MinishCracks_CastorWildsMiddle() {
    return 1;
}

void sub_StateChange_MinishCracks_CastorWildsMiddle() {
}

u32 sub_unk3_MinishCracks_RuinsTektite() {
    return 1;
}

void sub_StateChange_MinishCracks_RuinsTektite() {
}

u32 sub_unk3_MinishCracks_CastorWildsNextToBow() {
    return 1;
}

void sub_StateChange_MinishCracks_CastorWildsNextToBow() {
}

u32 sub_unk3_MinishCracks_E() {
    return 1;
}

void sub_StateChange_MinishCracks_E() {
}

u32 sub_unk3_MinishCracks_F() {
    return 1;
}

void sub_StateChange_MinishCracks_F() {
}

u32 sub_unk3_MinishCracks_10() {
    return 1;
}

void sub_StateChange_MinishCracks_10() {
}

u32 sub_unk3_MinishCracks_11() {
    return 1;
}

void sub_StateChange_MinishCracks_11() {
}

u32 sub_unk3_MelarisMine_Main() {
    return 1;
}

extern EntityData gUnk_additional0_MelarisMine_Main;
extern EntityData gUnk_additional1_MelarisMine_Main;
extern EntityData gUnk_080DD294;

void sub_StateChange_MelarisMine_Main(void) {

    if (!CheckGlobalFlag(WHITE_SWORD_END)) {
        LoadRoomEntityList(&gUnk_additional0_MelarisMine_Main);
    }
    if (!CheckLocalFlag(0x7f)) {
        LoadRoomEntityList(&gUnk_additional1_MelarisMine_Main);
    } else {
        LoadRoomEntityList(&gUnk_080DD294);
    }
    SetLocalFlag(0x8e);
}

u32 sub_unk3_CloudTops_House() {
    return 1;
}

extern EntityData gUnk_080DD364;

void sub_StateChange_CloudTops_House(void) {
    if (!(gSave.windcrests & 0x4000000)) {
        LoadRoomEntityList(&gUnk_080DD364);
    }
}

void sub_unk1_CloudTops_House(void) {
    if (!(gSave.windcrests & 0x4000000)) {
        LoadRoomEntityList(&gUnk_080DD364);
    }
}

u32 sub_unk3_CloudTops_Middle() {
    return 1;
}

void sub_StateChange_CloudTops_Middle() {
}

u32 sub_unk3_CloudTops_Bottom() {
    return 1;
}

extern EntityData gUnk_080DD7E0;
extern EntityData gUnk_080DD840;

void sub_StateChange_CloudTops_Bottom(void) {

    if (CheckGlobalFlag(KUMOTATSUMAKI)) {
        sub_0809F814(0x6de);
    }
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckLocalFlag(0xf0)) {
#else
    if (CheckLocalFlag(0xf3)) {
#endif
        sub_0809F814(0xe0);
    } else {
        LoadRoomEntityList(&gUnk_080DD7E0);
    }
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckLocalFlag(0xf2)) {
#else
    if (CheckLocalFlag(0xf5)) {
#endif
        sub_0809F814(0xba3);
    } else {
        LoadRoomEntityList(&gUnk_080DD840);
    }
}

u32 sub_unk3_Ruins_Entrance() {
    return 1;
}

void sub_StateChange_Ruins_Entrance() {
    sub_080300E8();
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    SetLocalFlag(0x25);
#else
    SetLocalFlag(0x24);
#endif
}

u32 sub_unk3_Ruins_Beanstalk() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk() {
}

u32 sub_unk3_Ruins_TripleTektites() {
    return 1;
}

extern EntityData gUnk_080DDE88;

void sub_StateChange_Ruins_TripleTektites(void) {

    if (CheckKinstoneFused(0x41)) {
        LoadRoomEntityList(&gUnk_080DDE88);
    }
}

void sub_unk1_Ruins_TripleTektites(void) {
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckLocalFlagByOffset(0x100, 0x28)) {
#else
    if (CheckLocalFlagByOffset(0x100, 0x27)) {
#endif
        SetDirtTile(0x85);
    }
}

u32 sub_unk3_Ruins_LadderToTektites() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites() {
}

u32 sub_unk3_Ruins_FortressEntrance() {
    return 1;
}

extern EntityData gUnk_080DE008;

void sub_StateChange_Ruins_FortressEntrance(void) {

    sub_080300E8();
    if (CheckGlobalFlag(LV3_CLEAR) && !CheckLocalFlag(3)) {
        LoadRoomEntityList(&gUnk_080DE008);
    }
}

u32 sub_unk3_Ruins_Armos() {
    return 1;
}

extern EntityData gUnk_080DE1E0;
extern EntityData gUnk_080DE200;

void sub_StateChange_Ruins_Armos(void) {

    sub_080300E8();
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlag(0x31)) {
#else
    if (!CheckLocalFlag(0x30)) {
#endif
        LoadRoomEntityList(&gUnk_080DE1E0);
    }
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlag(0x32)) {
#else
    if (!CheckLocalFlag(0x31)) {
#endif
        LoadRoomEntityList(&gUnk_080DE200);
    }
}

u32 sub_unk3_DeepwoodShrine_Madderpillar() {
    return 1;
}

extern EntityData gUnk_080DE4C8;

void sub_StateChange_DeepwoodShrine_Madderpillar(void) {

    if ((gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY) < (gRoomControls.height >> 1)) {
        if (!CheckLocalFlag(0x17)) {
            LoadRoomEntityList(&gUnk_080DE4C8);
        }
    }
}

u32 sub_unk3_DeepwoodShrine_BluePortal() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_BluePortal() {
}

u32 sub_unk3_DeepwoodShrine_StairsToB1() {
    return 1;
}

extern EntityData gUnk_080DE814;
extern EntityData gUnk_additional0_DeepwoodShrine_StairsToB1;

void sub_StateChange_DeepwoodShrine_StairsToB1(void) {

    if (!CheckLocalFlag(0x4b)) {
        LoadRoomEntityList(&gUnk_080DE814);
    } else {
        if (!CheckLocalFlag(0x4c)) {
            LoadRoomEntityList(&gUnk_additional0_DeepwoodShrine_StairsToB1);
            SetTileType(0x79, 0x285, 1);
        } else {
            SetTileType(0x7a, 0x285, 1);
            if (!CheckLocalFlag(0x24)) {
                SetTileType(0x73, 0x205, 1);
            }
        }
    }
}

u32 sub_unk3_DeepwoodShrine_PotBridge() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_PotBridge() {
}

u32 sub_unk3_DeepwoodShrine_DoubleStatue() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_DoubleStatue() {
}

u32 sub_unk3_DeepwoodShrine_Map() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_Map() {
}

u32 sub_unk3_DeepwoodShrine_Barrel() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_Barrel(void) {
    if (gSave.unk7 == 0) {
        goto a;
    }
    if (gSave.unk7 != 2) {
    a:
        SetTileType(0x90, 0x20b, 1);
        SetTileType(0x90, 0x411, 1);
    } else {
        SetTileType(0x90, 0x211, 1);
        SetTileType(0x90, 0x40b, 1);
    }
    if (CheckLocalFlag(0x15)) {
        SetTileType(0x76, 0x304, 2);
    }
    if (CheckLocalFlag(0x16)) {
        SetTileType(0x76, 0x318, 2);
    }
}

u32 sub_unk3_DeepwoodShrine_Button() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_Button() {
}

u32 sub_unk3_DeepwoodShrine_Mulldozer() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_Mulldozer() {
}

u32 sub_unk3_DeepwoodShrine_Pillars() {
    return 1;
}
void sub_StateChange_DeepwoodShrine_Pillars() {
}

u32 sub_unk3_DeepwoodShrine_Lever() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_Lever() {
}

u32 sub_unk3_DeepwoodShrine_Entrance() {
    return 1;
}

#if defined(DEMO_USA) || defined(DEMO_JP)
void sub_StateChange_DeepwoodShrine_Entrance() {
#ifdef DEMO_USA
    if (gUnk_02000000->saveFileId != 0 && GetInventoryValue(0x40) == 0) {
#else
#ifdef DEMO_JP
    if (GetInventoryValue(0x40) == 0) {
#endif
#endif
        SetTileType(0x365, 0x349, 1);
        SetTileType(0x365, 0x34a, 1);
        SetTileType(0x365, 0x34b, 1);
    }
}
#else
void sub_StateChange_DeepwoodShrine_Entrance() {
}
#endif

u32 sub_unk3_DeepwoodShrine_Torch() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_Torch() {
}

u32 sub_unk3_DeepwoodShrine_BossKey() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_BossKey() {
}

u32 sub_unk3_DeepwoodShrine_Compass() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_Compass() {
}

u32 sub_unk3_DeepwoodShrine_13() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_13() {
}

u32 sub_unk3_DeepwoodShrine_LilyPadWest() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_LilyPadWest() {
}

u32 sub_unk3_DeepwoodShrine_LilyPadEast() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_LilyPadEast() {
}

u32 sub_unk3_DeepwoodShrineBoss_Main() {
    return 1;
}

extern EntityData gUnk_additional2_DeepwoodShrineBoss_Main;

extern u8 gUnk_02000070;
extern u32 gUsedPalettes;

void sub_StateChange_DeepwoodShrineBoss_Main(void) {

    if (!CheckLocalFlag(0x48)) {
        SetLocalFlag(0x48);
        MenuFadeIn(5, 0);
        gUnk_02000070 = 0;
        gFadeControl.active = 0;
        gUsedPalettes = 0;
        *(u16*)0x5000000 = 0x7fff;
        DispReset(1);
    }
    if (CheckGlobalFlag(LV1_CLEAR)) {
        LoadRoomEntityList(&gUnk_additional2_DeepwoodShrineBoss_Main);
    } else {
        SoundReq(SONG_STOP_BGM);
        gArea.musicIndex = gArea.pMusicIndex;
    }
}

u32 sub_unk3_DeepwoodShrine_PreBoss() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_PreBoss() {
}

u32 sub_unk3_DeepwoodShrine_InsideBarrel() {
    return 1;
}

void sub_StateChange_DeepwoodShrine_InsideBarrel(void) {
    sub_08058D34();
    gArea.areaMetadata |= 0x40;
    gMain.transition = 5;
}

u32 sub_unk3_DeepwoodShrineEntry_Main() {
    return 1;
}

extern EntityData gUnk_080DFB78;

void sub_StateChange_DeepwoodShrineEntry_Main(void) {
    if (CheckGlobalFlag(LV1_CLEAR) && !CheckLocalFlagByOffset(0x100, 1)) {
        LoadRoomEntityList(&gUnk_080DFB78);
    }
}

u32 sub_unk3_CaveOfFlames_AfterCane() {
    return 1;
}

void sub_StateChange_CaveOfFlames_AfterCane() {
}

u32 sub_unk3_CaveOfFlames_SpinyChus() {
    return 1;
}

void sub_StateChange_CaveOfFlames_SpinyChus() {
}

u32 sub_unk3_CaveOfFlames_CartToSpinyChus() {
    return 1;
}

void sub_StateChange_CaveOfFlames_CartToSpinyChus() {
}

u32 sub_unk3_CaveOfFlames_Entrance() {
    return 1;
}

#ifdef DEMO_USA
void sub_StateChange_CaveOfFlames_Entrance() {
    if (GetInventoryValue(0x41) == 0) {
        SetTileType(0x365, 0x287, 2);
        SetTileType(0x365, 0x288, 2);
        SetTileType(0x365, 0x289, 2);
    }
}
#else
void sub_StateChange_CaveOfFlames_Entrance() {
}
#endif

u32 sub_unk3_CaveOfFlames_MainCart() {
    return 1;
}

void sub_StateChange_CaveOfFlames_MainCart() {
}

u32 sub_unk3_CaveOfFlames_NorthEntrance() {
    return 1;
}

void sub_StateChange_CaveOfFlames_NorthEntrance() {
}

u32 sub_unk3_CaveOfFlames_CartWest() {
    return 1;
}

void sub_StateChange_CaveOfFlames_CartWest() {
}

u32 sub_unk3_CaveOfFlames_Helmasaur() {
    return 1;
}

void sub_StateChange_CaveOfFlames_Helmasaur() {
}

u32 sub_unk3_CaveOfFlames_Rollobite() {
    return 1;
}

void sub_StateChange_CaveOfFlames_Rollobite() {
}

u32 sub_unk3_CaveOfFlames_MinishLava() {
    return 1;
}

void sub_StateChange_CaveOfFlames_MinishLava() {
}

u32 sub_unk3_CaveOfFlames_MinishSpikes() {
    return 1;
}

void sub_StateChange_CaveOfFlames_MinishSpikes() {
}

u32 sub_unk3_CaveOfFlames_RollobiteSwitch() {
    return 1;
}

void sub_StateChange_CaveOfFlames_RollobiteSwitch() {
}

extern u32 gUnk_080E103C;

u32 sub_unk3_CaveOfFlames_BeforeGleerok(void) {
    if (CheckGlobalFlag(LV2_CLEAR)) {
        gRoomVars.field_0x70 = &gUnk_080E103C;
    }
    return 1;
}

void sub_StateChange_CaveOfFlames_BeforeGleerok() {
}

u32 sub_unk3_CaveOfFlames_PathBossKey() {
    return 1;
}

void sub_StateChange_CaveOfFlames_PathBossKey() {
}

u32 sub_unk3_CaveOfFlames_PathBossKey2() {
    return 1;
}

void sub_StateChange_CaveOfFlames_PathBossKey2() {
}

u32 sub_unk3_CaveOfFlames_Compass() {
    return 1;
}

void sub_StateChange_CaveOfFlames_Compass() {
}

u32 sub_unk3_CaveOfFlames_Bobomb() {
    return 1;
}

void sub_StateChange_CaveOfFlames_Bobomb() {
}

u32 sub_unk3_CaveOfFlames_BossDoor() {
    return 1;
}

void sub_StateChange_CaveOfFlames_BossDoor() {
}

u32 sub_unk3_CaveOfFlames_18() {
    return 1;
}

void sub_StateChange_CaveOfFlames_18() {
}

u32 sub_unk3_CaveOfFlamesBoss_Main() {
    return 1;
}

extern EntityData gUnk_additional2_CaveOfFlamesBoss_Main;

extern u32 gUnk_0200B650;

void sub_StateChange_CaveOfFlamesBoss_Main(void) {

    if (CheckGlobalFlag(LV2_CLEAR)) {
        gUnk_0200B650 = 0;
        gScreen.lcd.displayControl &= 0xfdff;
        sub_0807AABC(&gPlayerEntity);
        LoadRoomEntityList(&gUnk_additional2_CaveOfFlamesBoss_Main);
    } else {
        SoundReq(SONG_STOP_BGM);
        gArea.musicIndex = gArea.pMusicIndex;
    }
}

u32 sub_unk3_FortressOfWinds_Eyegore() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Eyegore() {
}

u32 sub_unk3_FortressOfWinds_BeforeMazaal() {
    return 1;
}

void sub_StateChange_FortressOfWinds_BeforeMazaal(void) {
    gScreenTransition.field_0x38 = 0;
    gScreenTransition.field_0x39 = 0x5a;
}

u32 sub_unk3_FortressOfWinds_EastKeyLever() {
    return 1;
}

void sub_StateChange_FortressOfWinds_EastKeyLever() {
    sub_080300E8();
}

u32 sub_unk3_FortressOfWinds_PitPlatforms() {
    return 1;
}

void sub_StateChange_FortressOfWinds_PitPlatforms() {
}

u32 sub_unk3_FortressOfWinds_WestKeyLever() {
    return 1;
}

void sub_StateChange_FortressOfWinds_WestKeyLever() {
    sub_080300E8();
}

u32 sub_unk3_FortressOfWinds_Darknut() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Darknut() {
}

u32 sub_unk3_FortressOfWinds_EyeBridge() {
    return 1;
}

void sub_StateChange_FortressOfWinds_EyeBridge() {
}

u32 sub_unk3_FortressOfWinds_Pit() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Pit() {
}

u32 sub_unk3_FortressOfWinds_Wallmaster() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Wallmaster() {
}

u32 sub_unk3_FortressOfWinds_Clone() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone() {
}

u32 sub_unk3_FortressOfWinds_SpikeTraps() {
    return 1;
}

void sub_StateChange_FortressOfWinds_SpikeTraps() {
}

u32 sub_unk3_FortressOfWinds_Mazaal() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Mazaal(void) {

    if (!CheckFlags(0x31)) {
        if (gScreenTransition.field_0x38 == 0) {
            SoundReq(SONG_STOP_BGM);
        } else {
            if (gScreenTransition.field_0x39 == 0) {
                SoundReq(SONG_STOP);
                sub_08078A90(3);
            }
        }
        gArea.musicIndex = gArea.pMusicIndex;
    }
}

u32 sub_unk3_FortressOfWinds_Stalfos() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Stalfos() {
}

u32 sub_unk3_FortressOfWinds_EntranceMoleMitts() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade0() {
}

u32 sub_unk3_FortressOfWinds_Main2F() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade1() {
}

u32 sub_unk3_FortressOfWinds_MinishHole() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade2() {
}

u32 sub_unk3_FortressOfWinds_BossKey() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade3() {
}

u32 sub_unk3_FortressOfWinds_WestStairs2F() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade4() {
}

u32 sub_unk3_FortressOfWinds_EastStairs2F() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade5() {
}

u32 sub_unk3_FortressOfWinds_WestStairs1F() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade6() {
}

u32 sub_unk3_FortressOfWinds_CenterStairs1F() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade7() {
}

u32 sub_unk3_FortressOfWinds_EastStairs1F() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade8() {
}

u32 sub_unk3_FortressOfWinds_Wizzrobe() {
    return 1;
}

void sub_StateChange_Dojos_Waveblade9() {
}

u32 sub_unk3_FortressOfWinds_HeartPiece() {
    return 1;
}

void sub_StateChange_Dojos_70() {
}

u32 sub_unk3_InnerMazaal_Main() {
    return 1;
}

void sub_StateChange_Dojos_71() {
}

u32 sub_unk3_FortressOfWindsTop_Main() {
    return 1;
}

extern EntityData gUnk_080E3850;

void sub_StateChange_FortressOfWindsTop_Main(void) {

    SetGlobalFlag(LV3_CLEAR);
    sub_080530C8();
    sub_0805B4D0(3);
    // wind ocarina
    if (!GetInventoryValue(0x17) && CheckLocalFlag(0x45)) {
        LoadRoomEntityList(&gUnk_080E3850);
    }
}

u32 sub_unk3_TempleOfDroplets_WestHole() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_WestHole() {
    sub_0804D0B4();
}

void sub_0804D0B4(void) {

    if (!CheckLocalFlag(0x29)) {
        SetLocalFlag(0x29);
        SetLocalFlag(0x4b);
        SetLocalFlag(0x4e);
    }
}

u32 sub_unk3_TempleOfDroplets_NorthSplit() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_NorthSplit() {
}

u32 sub_unk3_TempleOfDroplets_EastHole() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_EastHole() {
}

u32 sub_unk3_TempleOfDroplets_Entrance() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_Entrance() {
}

u32 sub_unk3_TempleOfDroplets_NorthwestStairs() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_NorthwestStairs() {
}

u32 sub_unk3_TempleOfDroplets_ScissorsMiniboss() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_ScissorsMiniboss() {
}

u32 sub_unk3_TempleOfDroplets_WaterfallNorthwest() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_WaterfallNorthwest() {
}

u32 sub_unk3_TempleOfDroplets_WaterfallNortheast() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_WaterfallNortheast() {
}

u32 sub_unk3_TempleOfDroplets_Element() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_Element() {
}

u32 sub_unk3_TempleOfDroplets_IceCorner() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_IceCorner() {
}

u32 sub_unk3_TempleOfDroplets_IcePitMaze() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_IcePitMaze() {
}

u32 sub_unk3_TempleOfDroplets_HoleToBlueChuchu() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_HoleToBlueChuchu() {
}

u32 sub_unk3_TempleOfDroplets_WaterfallSoutheast() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_WaterfallSoutheast() {
}

u32 sub_unk3_TempleOfDroplets_WaterfallSouthwest() {
    return 1;
}

void sub_StateChange_TempleOfDroplets_WaterfallSouthwest() {
}

u32 sub_unk3_TempleOfDroplets_BigOcto() {
    return 1;
}

extern EntityData gUnk_additional2_TempleOfDroplets_BigOcto;

void sub_StateChange_TempleOfDroplets_BigOcto(void) {
    sub_0805308C(0x100);
    if (CheckGlobalFlag(LV4_CLEAR)) {
        LoadRoomEntityList(&gUnk_additional2_TempleOfDroplets_BigOcto);
    } else {
        SoundReq(SONG_STOP_BGM);
        gArea.musicIndex = gArea.pMusicIndex;
    }
}

u32 sub_unk3_TempleOfDroplets_ToBigBlueChuchu() {
    return 1;
}

void sub_StateChange_Dojos_72() {
}

u32 sub_unk3_TempleOfDroplets_BigBlueChuchu() {
    return 1;
}

extern EntityData gUnk_080E4BD8;

void sub_StateChange_TempleOfDroplets_BigBlueChuchu(void) {
    if (!CheckLocalFlag(0x48)) {
        ClearLocalFlag(0x46);
        LoadRoomEntityList(&gUnk_080E4BD8);
    }
}

u32 sub_unk3_TempleOfDroplets_BigBlueChuchuKey() {
    return 1;
}

extern EntityData gUnk_080E4CF8;
extern EntityData gUnk_080E4CD8;

void sub_StateChange_TempleOfDroplets_BigBlueChuchuKey(void) {

    sub_0804D0B4();
    if (CheckLocalFlag(0x6c)) {
        LoadRoomEntityList(&gUnk_080E4CD8);
    } else {
        LoadRoomEntityList(&gUnk_080E4CF8);
    }
    if (!CheckLocalFlag(0x4b)) {
        ClearLocalFlag(0x49);
    }
}

u32 sub_unk3_TempleOfDroplets_BossKey() {
    return 1;
}

void sub_StateChange_Dojos_73() {
}

u32 sub_unk3_TempleOfDroplets_NorthSmallKey() {
    return 1;
}

void sub_StateChange_Dojos_74() {
}

u32 sub_unk3_TempleOfDroplets_BlockCloneButtonPuzzle() {
    return 1;
}

void sub_StateChange_Dojos_75() {
}

u32 sub_unk3_TempleOfDroplets_BlockClonePuzzle() {
    return 1;
}

void sub_StateChange_Dojos_76() {
}

u32 sub_unk3_TempleOfDroplets_BlockCloneIceBridge() {
    return 1;
}

void sub_StateChange_Dojos_77() {
}

u32 sub_unk3_TempleOfDroplets_StairsToScissorsMiniboss() {
    return 1;
}

void sub_StateChange_Dojos_78() {
}

u32 sub_unk3_TempleOfDroplets_SpikeBar() {
    return 1;
}

void sub_StateChange_Dojos_79() {
}

u32 sub_unk3_TempleOfDroplets_Lanterns() {
    return 1;
}

void sub_StateChange_Dojos_80() {
}

u32 sub_unk3_TempleOfDroplets_LilypadIceBlocks() {
    return 1;
}

extern EntityData gUnk_080E5660;
extern EntityData gUnk_080E5680;

void sub_StateChange_TempleOfDroplets_LilypadIceBlocks(void) {

    if (!CheckLocalFlag(0x59)) {
        LoadRoomEntityList(&gUnk_080E5660);
    } else {
        LoadRoomEntityList(&gUnk_080E5680);
    }
}

u32 sub_unk3_TempleOfDroplets_Pit() {
    return 1;
}

void sub_StateChange_Dojos_81() {
}

u32 sub_unk3_TempleOfDroplets_FireBars() {
    return 1;
}

void sub_StateChange_Dojos_82() {
}

u32 sub_unk3_TempleOfDroplets_LanternMaze() {
    return 1;
}

void sub_StateChange_Dojos_83() {
}

u32 sub_unk3_TempleOfDroplets_Madderpillars() {
    return 1;
}

void sub_StateChange_Dojos_84() {
}

u32 sub_unk3_TempleOfDroplets_AfterMadderpillars() {
    return 1;
}

void sub_StateChange_Dojos_85() {
}

u32 sub_unk3_TempleOfDroplets_BlueChuchuKeyLever() {
    return 1;
}

extern EntityData gUnk_080E5E3C;
extern EntityData gUnk_080E5E5C;

void sub_StateChange_TempleOfDroplets_BlueChuchuKeyLever(void) {
    sub_0804D0B4();
    if (!CheckLocalFlag(0x4b)) {
        LoadRoomEntityList(&gUnk_080E5E3C);
    } else {
        LoadRoomEntityList(&gUnk_080E5E5C);
    }
}

u32 sub_unk3_TempleOfDroplets_MulldozerKey() {
    return 1;
}

void sub_StateChange_Dojos_86() {
}

u32 sub_unk3_TempleOfDroplets_BombWall() {
    return 1;
}

void sub_StateChange_Dojos_87() {
}

u32 sub_unk3_TempleOfDroplets_LilypadWestB2() {
    return 1;
}

void sub_StateChange_Dojos_88() {
}

u32 sub_unk3_TempleOfDroplets_CompassRoom() {
    return 1;
}

void sub_StateChange_Dojos_89() {
}

u32 sub_unk3_TempleOfDroplets_LanternScissors() {
    return 1;
}

void sub_StateChange_Dojos_90() {
}

u32 sub_unk3_TempleOfDroplets_LilypadMiddleB2() {
    return 1;
}

void sub_StateChange_Dojos_91() {
}

u32 sub_unk3_TempleOfDroplets_LilypadEastB2() {
    return 1;
}

void sub_StateChange_Dojos_92() {
}

u32 sub_unk3_TempleOfDroplets_FlameBarBlockPuzzle() {
    return 1;
}

void sub_StateChange_Dojos_93() {
}

u32 sub_unk3_RoyalCrypt_KingGustaf() {
    return 1;
}

extern EntityData gUnk_080E693C;

void sub_StateChange_RoyalCrypt_KingGustaf(void) {

    if (!CheckLocalFlag(0x32)) {
        LoadRoomEntityList(&gUnk_080E693C);
    }
}

u32 sub_unk3_RoyalCrypt_WaterRope() {
    return 1;
}

void sub_StateChange_Dojos_94() {
}

u32 sub_unk3_RoyalCrypt_Gibdo() {
    return 1;
}

void sub_StateChange_Dojos_95() {
}

u32 sub_unk3_RoyalCrypt_3() {
    return 1;
}

void sub_StateChange_Dojos_96() {
}

u32 sub_unk3_RoyalCrypt_KeyBlock() {
    return 1;
}

void sub_StateChange_Dojos_97() {
}

u32 sub_unk3_RoyalCrypt_5() {
    return 1;
}

void sub_StateChange_Dojos_98() {
}

u32 sub_unk3_RoyalCrypt_6() {
    return 1;
}

void sub_StateChange_Dojos_99() {
}

u32 sub_unk3_RoyalCrypt_MushroomPit() {
    return 1;
}

void sub_StateChange_RoyalCrypt_MushroomPit() {
    sub_08054570();
}

u32 sub_unk3_RoyalCrypt_Entrance() {
    return 1;
}

extern EntityData gUnk_080E718C;
extern EntityData gUnk_080E71AC;

void sub_StateChange_RoyalCrypt_Entrance(void) {

    SetTileType(0x312, 0x108, 1);
    sub_08054570();
    if (!CheckLocalFlag(0xc4)) {
        LoadRoomEntityList(&gUnk_080E718C);
    }
    if (!CheckLocalFlag(0xc5)) {
        LoadRoomEntityList(&gUnk_080E71AC);
    }
}

u32 sub_unk3_PalaceOfWinds_0() {
    return 1;
}

extern EntityData gUnk_additional1_PalaceOfWinds_0;
extern EntityData gUnk_080E72C4;
extern EntityData gUnk_additional0_PalaceOfWinds_0;

void sub_StateChange_PalaceOfWinds_0(void) {

    Manager19_Main(0);
    if (CheckGlobalFlag(LV5_CLEAR)) {
        LoadRoomEntityList(&gUnk_additional1_PalaceOfWinds_0);
    }
    if (!CheckLocalFlag(0x7b)) {
        LoadRoomEntityList(&gUnk_080E72C4);
    } else {
        SetGlobalFlag(LV5_CLEAR);
        // wind element
        if (!GetInventoryValue(0x43)) {
            sub_08078A90(3);
            LoadRoomEntityList(&gUnk_additional0_PalaceOfWinds_0);
            gArea.musicIndex = gArea.pMusicIndex;
            SoundReq(SONG_STOP_BGM);
        }
    }
}

u32 sub_unk3_PalaceOfWinds_1() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_1() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_2() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_2() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_3() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_3() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_4() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_4() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_5() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_5() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_6() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_6() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_7() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_7() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_8() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_8() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_9() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_9() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_10() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_10() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_11() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_11() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_12() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_12() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_13() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_13() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_14() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_14() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_15() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_15() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_16() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_16() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_17() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_17() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_18() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_18() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_19() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_19() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_20() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_20() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_21() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_21() {
}

u32 sub_unk3_PalaceOfWinds_22() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_22() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_23() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_23() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_24() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_24() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_25() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_25() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_26() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_26() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_27() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_27() {
}

u32 sub_unk3_PalaceOfWinds_28() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_28() {
}

u32 sub_unk3_PalaceOfWinds_29() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_29() {
}

u32 sub_unk3_PalaceOfWinds_30() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_30() {
}

u32 sub_unk3_PalaceOfWinds_31() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_31() {
}

u32 sub_unk3_PalaceOfWinds_32() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_32() {
}

u32 sub_unk3_PalaceOfWinds_33() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_33() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_34() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_34() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_35() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_35() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_36() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_36() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_37() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_37() {
}

u32 sub_unk3_PalaceOfWinds_38() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_38() {
}

u32 sub_unk3_PalaceOfWinds_39() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_39() {
}

u32 sub_unk3_PalaceOfWinds_40() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_40() {
}

u32 sub_unk3_PalaceOfWinds_41() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_41() {
}

u32 sub_unk3_PalaceOfWinds_42() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_42() {
}

u32 sub_unk3_PalaceOfWinds_43() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_43() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_44() {
    return 1;
}

extern EntityData gUnk_080EA09C;

void sub_StateChange_PalaceOfWinds_44(void) {
    Manager19_Main(0);
    if (!CheckLocalFlag(0x70)) {
        LoadRoomEntityList(&gUnk_080EA09C);
    }
}

u32 sub_unk3_PalaceOfWinds_45() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_45() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_46() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_46() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_47() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_47() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_48() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_48() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_49() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_49() {
    Manager19_Main(0);
}

u32 sub_unk3_PalaceOfWinds_50() {
    return 1;
}

void sub_StateChange_PalaceOfWinds_50() {
}

u32 sub_unk3_PalaceOfWindsBoss_Main() {
    return 1;
}

void sub_StateChange_PalaceOfWindsBoss_Main() {
}

u32 sub_unk3_Vaati2_Main() {
    return 1;
}

void sub_StateChange_Vaati2_Main(void) {
    SoundReq(SONG_STOP_BGM);
    gArea.musicIndex = gArea.pMusicIndex;
}

u32 sub_unk3_Vaati3_Main() {
    return 1;
}

void sub_StateChange_Vaati3_Main(void) {
    Manager2F_Main(0);

    if ((gScreenTransition.field_0x38 & 1) && gScreenTransition.field_0x39) {
        if (gScreenTransition.field_0x3c == 1) {
            gPlayerEntity.x.HALF.HI = gScreenTransition.field_0x48;
            gPlayerEntity.y.HALF.HI = gScreenTransition.field_0x4a + 8;
        } else {
            if (gScreenTransition.field_0x3c) {
                return;
            }
            gPlayerEntity.x.HALF.HI = gScreenTransition.field_0x44;
            gPlayerEntity.y.HALF.HI = gScreenTransition.field_0x46 + 8;
        }
    }
}

u32 sub_unk3_DarkHyruleCastleBridge_Main() {
    return 1;
}

void sub_StateChange_DarkHyruleCastleBridge_Main() {
    sub_0805B4D0(6);
}

u32 sub_unk3_VaatisArms_First() {
    return 1;
}

void sub_StateChange_VaatisArms_First() {
}

u32 sub_unk3_VaatisArms_Second() {
    return 1;
}

void sub_StateChange_VaatisArms_Second() {
}

u32 sub_unk3_DarkHyruleCastleOutside_ZeldaStatuePlatform() {
    sub_080534AC();
    return 1;
}

extern EntityData gUnk_080EAD68;
extern EntityData gUnk_080EADB8;

void sub_StateChange_DarkHyruleCastleOutside_ZeldaStatuePlatform(void) {

    sub_0805B4D0(4);
    if (!CheckLocalFlag(0x77)) {
        LoadRoomEntityList(&gUnk_080EAD68);
    } else if (!CheckLocalFlag(0x79)) {
        LoadRoomEntityList(&gUnk_080EADB8);
        SetTileType(0x4072, 0x145, 1);
        SetTileType(0x4072, 0x149, 1);
        gArea.pMusicIndex = 0;
    }
}

extern u16 gUnk_080EAE00;

void sub_0804D7EC(void) {
    u16 temp;
    u16* tilePos;

    tilePos = &gUnk_080EAE00;
    while (*tilePos != 0) {
        temp = *tilePos;
        tilePos++;
        SetTileType(0x4072, temp, 1);
    }
}

void sub_0804D810(void) {
    u16 uVar1;
    u16* puVar2;

    puVar2 = &gUnk_080EAE00;
    while (*puVar2 != 0) {
        uVar1 = *puVar2;
        puVar2++;
        sub_0807BA8C(uVar1, 1);
    }
}

u32 sub_unk3_DarkHyruleCastleOutside_Garden() {
    return 1;
}

extern EntityData gUnk_080EAE60;
extern EntityData gUnk_080EAEC0;
extern EntityData gUnk_080EAF20;

void sub_StateChange_DarkHyruleCastleOutside_Garden(void) {
    gArea.areaMetadata = 0x40;
    gArea.locationIndex = 0;
    if (CheckGlobalFlag(ENDING)) {
        if (!CheckLocalFlag(0x7f)) {
            LoadRoomEntityList(&gUnk_080EAEC0);
            SetLocalFlag(0x7f);
            gArea.pMusicIndex = 0x11;
        } else {
            LoadRoomEntityList(&gUnk_080EAF20);
            gArea.pMusicIndex = gArea.musicIndex;
        }
    } else {
        if (CheckLocalFlag(0x79)) {
            gArea.pMusicIndex = gArea.musicIndex;
        }
        if (!CheckLocalFlag(1)) {
            LoadRoomEntityList(&gUnk_080EAE60);
        }
    }
    ClearGlobalFlag(0x5d);
}

u32 sub_unk3_DarkHyruleCastleOutside_OutsideNorthwest() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade0() {
}

u32 sub_unk3_DarkHyruleCastleOutside_OutsideNortheast() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade1() {
}

u32 sub_unk3_DarkHyruleCastleOutside_OutsideEast() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade2() {
}

u32 sub_unk3_DarkHyruleCastleOutside_OutsideSouthwest() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade3() {
}

u32 sub_unk3_DarkHyruleCastleOutside_OutsideSouth() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade4() {
}

u32 sub_unk3_DarkHyruleCastleOutside_OutsideSoutheast() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade5() {
}

u32 sub_unk3_DarkHyruleCastleOutside_8() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade6() {
}

extern u32 gUnk_080EB604;
extern u32 gUnk_080EB5D4;

u32 sub_unk3_DarkHyruleCastle_0(void) {

    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080EB604;
        gRoomVars.field_0x74 = 0;
        gArea.musicIndex = gArea.pMusicIndex = 0x11;
    } else if (CheckLocalFlag(0x79)) {
        gRoomVars.field_0x6c = NULL;
        if (!CheckLocalFlag(0x7a)) {
            SetGlobalFlag(ZELDA_CHASE);
            gRoomVars.field_0x6c = &gUnk_080EB5D4;
            gRoomVars.field_0x88 = sub_0804D9B0;
            gRoomVars.field_0x74 = 0;
        }
    }
    return 1;
}

void sub_StateChange_DarkHyruleCastle_0(void) {
    if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }

    if (CheckLocalFlag(0x79)) {
        sub_0804D9B0();
    }
}

extern EntityData gUnk_080EB684;

void sub_0804D9B0(void) {
    sub_0807BB98(0x797, 1, 5, 1);
    sub_0807BB98(0x357, 1, 5, 1);
    sub_0807BB98(0x55f, 1, 2, 1);
    LoadRoomEntityList(&gUnk_080EB684);
    gArea.pMusicIndex = gArea.musicIndex;
}

u32 sub_unk3_DarkHyruleCastle_1() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade7() {
}

u32 sub_unk3_DarkHyruleCastle_2() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade8() {
}

u32 sub_unk3_DarkHyruleCastle_3() {
    return 1;
}

void sub_StateChange_Dojos_ToGrimblade9() {
}

u32 sub_unk3_DarkHyruleCastle_4() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade0() {
}

u32 sub_unk3_DarkHyruleCastle_5() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade1() {
}

u32 sub_unk3_DarkHyruleCastle_6(void) {
    if (!CheckLocalFlag(0x77)) {
        gRoomVars.field_0x6c = 0;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080EB9F4;
extern EntityData gUnk_080EBAA4;
extern EntityData gUnk_080EBAF4;

void sub_StateChange_DarkHyruleCastle_6(void) {
    if (!CheckLocalFlag(0x77)) {
        LoadRoomEntityList(&gUnk_080EB9F4);
    } else {
        if (!CheckLocalFlag(0x78)) {
            LoadRoomEntityList(&gUnk_080EBAA4);
            SetLocalFlag(0x75);
        }
        if (CheckLocalFlag(0x7b)) {
            LoadRoomEntityList(&gUnk_080EBAF4);
            SetLocalFlag(0x76);
        }
    }
}

u32 sub_unk3_DarkHyruleCastle_7() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade2() {
}

u32 sub_unk3_DarkHyruleCastle_8() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade3() {
}

u32 sub_unk3_DarkHyruleCastle_9() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade4() {
}

u32 sub_unk3_DarkHyruleCastle_10() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade5() {
}

u32 sub_unk3_DarkHyruleCastle_11() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade6() {
}

u32 sub_unk3_DarkHyruleCastle_12() {
    return 1;
}
void sub_StateChange_Dojos_ToSplitblade7() {
}

u32 sub_unk3_DarkHyruleCastle_13() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade8() {
}

u32 sub_unk3_DarkHyruleCastle_14() {
    return 1;
}

extern EntityData gUnk_080EC2CC;

void sub_StateChange_DarkHyruleCastle_14(void) {
    if (CheckLocalFlag(0x86) && !CheckLocalFlag(0x4c)) {
        LoadRoomEntityList(&gUnk_080EC2CC);
    }
}

u32 sub_unk3_DarkHyruleCastle_15() {
    return 1;
}

void sub_StateChange_Dojos_ToSplitblade9() {
}

u32 sub_unk3_DarkHyruleCastle_16() {
    return 1;
}

extern EntityData gUnk_080EC4E8;

void sub_StateChange_DarkHyruleCastle_16(void) {
    if (CheckLocalFlag(0x86) && !CheckLocalFlag(0x4d)) {
        LoadRoomEntityList(&gUnk_080EC4E8);
    }
}

u32 sub_unk3_DarkHyruleCastle_17() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade0() {
}

u32 sub_unk3_DarkHyruleCastle_18() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade1() {
}

u32 sub_unk3_DarkHyruleCastle_19() {
    return 1;
}

extern EntityData gUnk_080EC820;

void sub_StateChange_DarkHyruleCastle_19(void) {
    if (CheckLocalFlag(0x86) && !CheckLocalFlag(0x53)) {
        LoadRoomEntityList(&gUnk_080EC820);
    }
}

u32 sub_unk3_DarkHyruleCastle_20() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade2() {
}

u32 sub_unk3_DarkHyruleCastle_21() {
    return 1;
}

extern EntityData gUnk_080ECA60;

void sub_StateChange_DarkHyruleCastle_21(void) {
    if (CheckLocalFlag(0x86) && !CheckLocalFlag(0x56)) {
        LoadRoomEntityList(&gUnk_080ECA60);
    }
}

u32 sub_unk3_DarkHyruleCastle_22() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade3() {
}

u32 sub_unk3_DarkHyruleCastle_23() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade4() {
}

u32 sub_unk3_DarkHyruleCastle_24() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade5() {
}

u32 sub_unk3_DarkHyruleCastle_25() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade6() {
}

u32 sub_unk3_DarkHyruleCastle_26() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade7() {
}

u32 sub_unk3_DarkHyruleCastle_27() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade8() {
}

u32 sub_unk3_DarkHyruleCastle_28(void) {
    if (CheckLocalFlag(0x79)) {
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080ECFCC;

void sub_StateChange_DarkHyruleCastle_28(void) {
    if (CheckLocalFlag(0x79)) {
        sub_0807BB98(0x90, 1, 1, 5);
        LoadRoomEntityList(&gUnk_080ECFCC);
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_unk3_DarkHyruleCastle_29() {
    return 1;
}

void sub_StateChange_Dojos_ToGreatblade9() {
}

u32 sub_unk3_DarkHyruleCastle_30() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade0() {
}

extern u32 gUnk_080ED1E4;

u32 sub_unk3_DarkHyruleCastle_31(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080ED1E4;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

void sub_StateChange_DarkHyruleCastle_31(void) {
    if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_unk3_DarkHyruleCastle_32() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade1() {
}

u32 sub_unk3_DarkHyruleCastle_33() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade2() {
}

u32 sub_unk3_DarkHyruleCastle_34() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade3() {
}

u32 sub_unk3_DarkHyruleCastle_35() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade4() {
}

u32 sub_unk3_DarkHyruleCastle_36() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade5() {
}

u32 sub_unk3_DarkHyruleCastle_37() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade6() {
}

u32 sub_unk3_DarkHyruleCastle_38() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade7() {
}

u32 sub_unk3_DarkHyruleCastle_39() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade8() {
}

u32 sub_unk3_DarkHyruleCastle_40() {
    return 1;
}

void sub_StateChange_Dojos_ToScarblade9() {
}

u32 sub_unk3_DarkHyruleCastle_41() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave0() {
}

u32 sub_unk3_DarkHyruleCastle_42() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave1() {
}

u32 sub_unk3_DarkHyruleCastle_43() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave2() {
}

u32 sub_unk3_DarkHyruleCastle_44() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave3() {
}

u32 sub_unk3_DarkHyruleCastle_45() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave4() {
}

u32 sub_unk3_DarkHyruleCastle_46() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave5() {
}

u32 sub_unk3_DarkHyruleCastle_47() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave6() {
}

u32 sub_unk3_DarkHyruleCastle_48() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave7() {
}

u32 sub_unk3_DarkHyruleCastle_49() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave8() {
}

u32 sub_unk3_DarkHyruleCastle_50() {
    return 1;
}

void sub_StateChange_GoronCave_StairsToCave9() {
}

u32 sub_unk3_DarkHyruleCastle_51() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk0() {
}

u32 sub_unk3_DarkHyruleCastle_52() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk1() {
}

u32 sub_unk3_DarkHyruleCastle_53(void) {
    if (CheckLocalFlag(0x79)) {
        gRoomVars.field_0x74 = 0;
        gRoomVars.field_0x6c = 0;
    }
    return 1;
}

extern EntityData gUnk_080EE314;

void sub_StateChange_DarkHyruleCastle_53(void) {
    if (CheckLocalFlag(0x79)) {
        sub_0807BB98(3, 2, 5, 1);
        LoadRoomEntityList(&gUnk_080EE314);
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_unk3_DarkHyruleCastle_54() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk2() {
}

u32 sub_unk3_DarkHyruleCastle_55(void) {
    if (CheckLocalFlag(0x79)) {
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080EE5DC;

void sub_StateChange_DarkHyruleCastle_55(void) {
    if (CheckLocalFlag(0x79)) {
        sub_0807BB98(0x392, 2, 2, 5);
        LoadRoomEntityList(&gUnk_080EE5DC);
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_unk3_DarkHyruleCastle_56() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk3() {
}

u32 sub_unk3_DarkHyruleCastle_57() {
    return 1;
}

extern EntityData gUnk_080EE71C;

void sub_StateChange_DarkHyruleCastle_57(void) {
    if (CheckLocalFlag(1)) {
        LoadRoomEntityList(&gUnk_080EE71C);
    }
}

u32 sub_unk3_DarkHyruleCastle_58() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk4() {
}

ASM_FUNC("asm/non_matching/sub_unk3_HyruleTown_0.inc", u32 sub_unk3_HyruleTown_0(void))

extern EntityData gUnk_080EEB6C;
extern EntityData gUnk_080EEB8C;
extern EntityData gUnk_080EE88C;
extern EntityData gUnk_080EE8FC;
extern EntityData gUnk_080EE91C;
extern EntityData gUnk_080EECBC;
extern EntityData gUnk_080EE93C;
extern EntityData gUnk_080EE95C;
extern EntityData gUnk_080EE97C;
extern EntityData gUnk_080EE9BC;
extern EntityData gUnk_080EE99C;
extern EntityData gUnk_080EE9DC;
extern EntityData gUnk_080EEA3C;
extern EntityData gUnk_080EEA1C;
extern EntityData gUnk_080EE9FC;
extern EntityData gUnk_080EEA5C;
extern EntityData gUnk_080EEABC;
extern EntityData gUnk_080EEA7C;
extern EntityData gUnk_080EEA9C;
extern EntityData gUnk_080EEBAC;

void sub_StateChange_HyruleTown_0(void) {

    sub_08054570();
    TryLoadPrologueHyruleTown();
#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
    SetTileType(0x176, 0x66b, 1);
#endif
    if (gSave.unk8 == 1) {
        sub_0801D000(0);
    } else {
        sub_08018C58(0xdb4);
        if (!CheckLocalFlagByOffset(0x200, 0x84)) {
            LoadRoomEntityList(&gUnk_080EEB6C);
        }
        if (!CheckLocalFlagByOffset(0x200, 0x85)) {
            LoadRoomEntityList(&gUnk_080EEB8C);
        }
        // kinstone bag
        if ((!GetInventoryValue(0x67)) && CheckGlobalFlag(LV1_CLEAR)) {
            LoadRoomEntityList(&gUnk_080EE88C);
        }
        if (!CheckKinstoneFused(0x28)) {
            LoadRoomEntityList(&gUnk_080EE8FC);
        }
        if (CheckKinstoneFused(0x33)) {
            LoadRoomEntityList(&gUnk_080EE91C);
        }
        if (CheckGlobalFlag(MACHI_MACHIHOKORI)) {
            LoadRoomEntityList(&gUnk_080EE93C);
        } else {
            LoadRoomEntityList(&gUnk_080EECBC);
        }
        if (CheckKinstoneFused(0x1b) && (gSave.unk8 > 3)) {
            if (!CheckGlobalFlag(NEW_HOUSE_DIN) && !CheckGlobalFlag(NEW_HOUSE_NAYRU) &&
                !CheckGlobalFlag(NEW_HOUSE_FARORE)) {
                if (!CheckGlobalFlag(RENTED_HOUSE_DIN) && !CheckGlobalFlag(RENTED_HOUSE_NAYRU) &&
                    !CheckGlobalFlag(RENTED_HOUSE_FARORE)) {
                    LoadRoomEntityList(&gUnk_080EE95C);
                } else {
                    if (!CheckGlobalFlag(TATEKAKE_HOUSE)) {
                        LoadRoomEntityList(&gUnk_080EE97C);
                    } else {
                        LoadRoomEntityList(&gUnk_080EE9BC);
                    }
                }
            } else {
                LoadRoomEntityList(&gUnk_080EE99C);
            }
        }
        if (CheckGlobalFlag(RENTED_HOUSE_DIN)) {
            LoadRoomEntityList(&gUnk_080EE9FC);
        } else if (CheckGlobalFlag(RENTED_HOUSE_NAYRU)) {
            LoadRoomEntityList(&gUnk_080EEA1C);
        } else if (CheckGlobalFlag(RENTED_HOUSE_FARORE)) {
            LoadRoomEntityList(&gUnk_080EEA3C);
        } else {
            LoadRoomEntityList(&gUnk_080EE9DC);
        }
        if ((gSave.unk8 > 4) && !CheckKinstoneFused(0xb) &&
            (CheckGlobalFlag(RENTED_HOUSE_DIN) || CheckGlobalFlag(RENTED_HOUSE_NAYRU) ||
             CheckGlobalFlag(RENTED_HOUSE_FARORE))) {
            LoadRoomEntityList(&gUnk_080EEA5C);
        }
        // rocs cape
#if defined(JP) || defined(EU) || defined(DEMO_JP)
        if (!CheckLocalFlag(0xcd) && GetInventoryValue(0x14)) {
#else
        if (!CheckLocalFlag(0xd0) && GetInventoryValue(0x14)) {
#endif
            LoadRoomEntityList(&gUnk_080EEABC);
        }
        if ((gSave.unk8 > 3) && CheckGlobalFlag(INLOCK)) {
            LoadRoomEntityList(&gUnk_080EEA7C);
        }
        if ((gSave.unk8 < 6) && !CheckGlobalFlag(MIZUKAKI_START)) {
            LoadRoomEntityList(&gUnk_080EEA9C);
        }
        if ((gSave.windcrests & 0x8000000) == 0) {
            LoadRoomEntityList(&gUnk_080EEBAC);
        }
        sub_0804E150();
    }
}

void sub_unk1_HyruleTown_8(void) {
    if ((gSave.windcrests & 0x8000000) == 0) {
        LoadRoomEntityList(&gUnk_080EEBAC);
    }
}

ASM_FUNC("asm/non_matching/sub_0804E150.inc", void sub_0804E150(void))

u32 sub_unk3_HyruleTownMinishCaves_Entrance() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_Entrance() {
}

u32 sub_unk3_HyruleTownMinishCaves_NorthRoom() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_NorthRoom() {
}

u32 sub_unk3_HyruleTownMinishCaves_PacciJump() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_PacciJump() {
}

u32 sub_unk3_HyruleTownMinishCaves_MulldozerFight() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_MulldozerFight() {
}

u32 sub_unk3_HyruleTownMinishCaves_WestChest() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_WestChest() {
}

u32 sub_unk3_HyruleTownMinishCaves_Flippers() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_Flippers() {
}

u32 sub_unk3_HyruleTownMinishCaves_Librari() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_Librari() {
}

u32 sub_unk3_HyruleTownMinishCaves_WestFrozenChest() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_WestFrozenChest() {
}

u32 sub_unk3_HyruleTownMinishCaves_CrossIntersection() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_CrossIntersection() {
}

u32 sub_unk3_HyruleTownMinishCaves_SoutheastCorner() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_SoutheastCorner() {
}

u32 sub_unk3_HyruleTownMinishCaves_Entrance2() {
    return 1;
}

void sub_StateChange_HyruleTownMinishCaves_Entrance2() {
}

u32 sub_unk3_HyruleTownUnderground_Main() {
    return 1;
}

void sub_StateChange_HyruleTownUnderground_Main() {
}

u32 sub_unk3_HyruleTownUnderground_Well() {
    return 1;
}

void sub_StateChange_HyruleTownUnderground_Well() {
}

extern u32 gUnk_080F09A0;

u32 sub_unk3_CastleGarden_Main(void) {

    // four sword
    if (GetInventoryValue(0x6)) {
        gRoomVars.field_0x70 = &gUnk_080F09A0;
    }
    return 1;
}

extern EntityData gUnk_080F0650;
extern EntityData gUnk_080F0800;
extern EntityData gUnk_080F08F0;
extern EntityData gUnk_080F0850;
extern EntityData gUnk_080F0870;
extern EntityData gUnk_080F0890;
extern EntityData gUnk_080F0920;

void sub_StateChange_CastleGarden_Main(void) {

    if (!CheckGlobalFlag(TABIDACHI)) {
        LoadRoomEntityList(&gUnk_080F0650);
#ifdef EU
        gArea.pMusicIndex = 0x10;
#else
        gArea.pMusicIndex = 0x13;
        SetGlobalFlag(CASTLE_BGM);
    } else {
        if (CheckGlobalFlag(CASTLE_BGM)) {
#if defined(JP) || defined(DEMO_JP)
            gArea.pMusicIndex = gArea.musicIndex;
#else
            gArea.pMusicIndex = 0x1b;
#endif
        }
#endif
    }
#if defined(JP) || defined(DEMO_JP) || defined(EU)
    if (!CheckLocalFlag(0x9b)) {
#else
    if (!CheckLocalFlag(0x9c)) {
#endif
        LoadRoomEntityList(&gUnk_080F0800);
        SetTileType(0x4072, 600, 1);
        SetTileType(0x4072, 0x298, 1);
        SetTileType(0x4072, 0x266, 1);
        SetTileType(0x4072, 0x2a6, 1);
    } else {
        // four sword
        if (!GetInventoryValue(0x6)) {
            LoadRoomEntityList(&gUnk_080F08F0);
            SetTileType(0x4072, 0x9e, 1);
            SetTileType(0x4072, 0x9f, 1);
            SetTileType(0x4072, 0xa0, 1);
        }
        LoadRoomEntityList(&gUnk_080F0850);
        // water element
        if (!GetInventoryValue(0x42)) {
            LoadRoomEntityList(&gUnk_080F0870);
        } else {
            LoadRoomEntityList(&gUnk_080F0890);
        }
        SetTileType(0x4072, 600, 1);
        SetTileType(0x4072, 0x298, 1);
#if defined(JP) || defined(DEMO_JP) || defined(EU)
        if (CheckLocalFlag(0x11)) {
#else
        if (CheckLocalFlag(0x10)) {
#endif
            LoadRoomEntityList(&gUnk_080F0920);
#if defined(JP) || defined(DEMO_JP) || defined(EU)
            ClearLocalFlag(0x11);
#else
            ClearLocalFlag(0x10);
#endif
        }
    }
    sub_080AF284();
}

u32 sub_unk3_SimonsSimulation_Main() {
    ClearLocalFlag(1);
    return 1;
}

extern u8* gUnk_080F0D58[4];
extern Entity* gUnk_080F0CB8[15];
extern u8* gUnk_080F0E08[];
extern struct {
    u32 unk_00;
    u32 unk_04;
} gUnk_080F0E1C[];

void sub_StateChange_SimonsSimulation_Main() {
    u32 r;
    u32 index;
    u32 tmp;
    tmp = CheckGlobalFlag(LV4_CLEAR);
    index = BOOLCAST(tmp);
    if (CheckGlobalFlag(LV5_CLEAR)) {
        index = 2;
    }
    if (CheckGlobalFlag(GAMECLEAR)) {
        index = 3;
    }
    r = Random();
    index = gUnk_080F0D58[index][r & 0x1f];
    LoadRoomEntityList((EntityData*)gUnk_080F0CB8[index & 0xF]);
    index >>= 4;
    r >>= 8;
    index = gUnk_080F0E08[index][r & 0x1F];
    if (!CheckLocalFlag(0xC6)) {
        SetLocalFlag(0xC6);
        index = 0xE;
    }
    sub_0804B3C4(&gUnk_080F0E1C[index]);
    SoundReq(SONG_STOP_BGM);
}

u32 sub_unk3_HouseInteriors2_Stranger() {
    return 1;
}

extern EntityData gUnk_080F1C68;
extern EntityData gUnk_080F1C88;

void sub_StateChange_HouseInteriors2_Stranger(void) {
    if (!CheckGlobalFlag(POWERGLOVE_HINT)) {
        LoadRoomEntityList(&gUnk_080F1C68);
    } else {
        LoadRoomEntityList(&gUnk_080F1C88);
    }
}

u32 sub_unk3_HouseInteriors2_WestOracle() {
    return 1;
}

extern EntityData gUnk_080F1D90;
extern EntityData gUnk_080F1DB0;
extern EntityData gUnk_080F1DD0;

void sub_StateChange_HouseInteriors2_WestOracle(void) {
    if (CheckGlobalFlag(NEW_HOUSE_DIN)) {
        LoadRoomEntityList(&gUnk_080F1D90);
    } else if (CheckGlobalFlag(NEW_HOUSE_NAYRU)) {
        LoadRoomEntityList(&gUnk_080F1DB0);
    } else if (CheckGlobalFlag(NEW_HOUSE_FARORE)) {
        LoadRoomEntityList(&gUnk_080F1DD0);
    }
}

u32 sub_unk3_HouseInteriors2_2() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk5() {
}

u32 sub_unk3_HouseInteriors2_3() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk6() {
}

u32 sub_unk3_HouseInteriors2_DrLeft() {
    return 1;
}

extern EntityData gUnk_080F2174;
extern EntityData gUnk_080F2194;
extern EntityData gUnk_080F21B4;

void sub_StateChange_HouseInteriors2_DrLeft(void) {

    LoadRoomEntityList(&gUnk_080F2174);
    // picori legend book
    if (!GetInventoryValue(0x3a) && CheckGlobalFlag(MIZUKAKI_HARIFALL)) {
        LoadRoomEntityList(&gUnk_080F2194);
    }
    if (gScreenTransition.field_0xf == 1) {
        LoadRoomEntityList(&gUnk_080F21B4);
    }
}

u32 sub_unk3_HouseInteriors2_Romio() {
    return 1;
}

extern EntityData gUnk_080F23BC;
extern EntityData gUnk_080F238C;
extern EntityData gUnk_additional4_HouseInteriors2_Romio;

void sub_StateChange_HouseInteriors2_Romio(void) {

    if (gSave.unk8 > 7) {
        LoadRoomEntityList(&gUnk_080F23BC);
    }
    // flippers
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(MIZUKAKI_START)) {
        LoadRoomEntityList(&gUnk_080F238C);
    } else {
        LoadRoomEntityList(&gUnk_additional4_HouseInteriors2_Romio);
    }
}

u32 sub_unk3_HouseInteriors2_Julietta() {
    return 1;
}

extern EntityData gUnk_080F2570;
extern EntityData gUnk_080F2590;
extern EntityData gUnk_080F25C0;
extern EntityData gUnk_080F2600;

void sub_StateChange_HouseInteriors2_Julietta(void) {
    switch (gSave.unk8) {
        case 0:
        case 2:
        case 4:
            LoadRoomEntityList(&gUnk_080F2570);
            break;
        case 1:
        case 3:
            break;
        case 5:
            // flippers
            if (!GetInventoryValue(0x46)) {
                if (!CheckGlobalFlag(MIZUKAKI_START)) {
                    LoadRoomEntityList(&gUnk_080F2570);
                    break;
                }
                if (!GetInventoryValue(0x39)) {
                    LoadRoomEntityList(&gUnk_080F25C0);
                }
            } else {
                LoadRoomEntityList(&gUnk_080F2590);
            }
            break;
        case 8:
        case 9:
            LoadRoomEntityList(&gUnk_080F2600);
        case 6:
        case 7:
            LoadRoomEntityList(&gUnk_080F2590);
    }
}

u32 sub_unk3_HouseInteriors2_Percy() {
    return 1;
}

extern EntityData gUnk_additional1_HouseInteriors2_Percy;
extern EntityData gUnk_080F2860;
extern EntityData gUnk_additional2_HouseInteriors2_Percy;
extern EntityData gUnk_080F27D8;
extern EntityData gUnk_080F2798;

void sub_StateChange_HouseInteriors2_Percy(void) {
    if (CheckKinstoneFused(0x21)) {
        if (!CheckLocalFlag(0x42)) {
            if (!CheckLocalFlag(0x43)) {
                LoadRoomEntityList(&gUnk_additional1_HouseInteriors2_Percy);
                LoadRoomTileEntities(&gUnk_080F2860);
            } else {
                LoadRoomEntityList(&gUnk_additional2_HouseInteriors2_Percy);
            }
        } else if (!CheckLocalFlag(0x3f)) {
            LoadRoomEntityList(&gUnk_080F27D8);
        } else {
            LoadRoomEntityList(&gUnk_080F2798);
        }
    }
}

u32 sub_unk3_HouseInteriors2_EastOracle() {
    return 1;
}

extern EntityData gUnk_080F28D4;
extern EntityData gUnk_080F28F4;
extern EntityData gUnk_080F2914;

void sub_StateChange_HouseInteriors2_EastOracle(void) {
    if (CheckGlobalFlag(RENTED_HOUSE_DIN)) {
        LoadRoomEntityList(&gUnk_080F28D4);
    } else if (CheckGlobalFlag(RENTED_HOUSE_NAYRU)) {
        LoadRoomEntityList(&gUnk_080F28F4);
    } else if (CheckGlobalFlag(RENTED_HOUSE_FARORE)) {
        LoadRoomEntityList(&gUnk_080F2914);
    }
}

u32 sub_unk3_HouseInteriors2_A() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk7() {
}

u32 sub_unk3_HouseInteriors2_B() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk8() {
}

u32 sub_unk3_HouseInteriors2_Cucco() {
    return 1;
}

void sub_StateChange_Ruins_Beanstalk9() {
}

u32 sub_unk3_HouseInteriors2_LinksHouseEntrance() {
    return 1;
}

extern EntityData gUnk_080F2E2C;

void sub_StateChange_HouseInteriors2_LinksHouseEntrance(void) {
    if (!CheckGlobalFlag(OUTDOOR)) {
        gArea.musicIndex = gArea.pMusicIndex;
        SoundReq(SONG_PLAY_VOL_RESET | BGM_MINISH_CAP);
    }
    if (!CheckGlobalFlag(START)) {
        LoadRoomEntityList(&gUnk_080F2E2C);
    }
}

u32 sub_unk3_HouseInteriors2_LinksHouseSmith() {
    return 1;
}

extern EntityData gUnk_080F2E94;
extern EntityData gUnk_080F2EC4;

void sub_StateChange_HouseInteriors2_LinksHouseSmith(void) {
    if (!CheckGlobalFlag(OUTDOOR)) {
        gArea.musicIndex = gArea.pMusicIndex;
        SoundReq(SONG_PLAY_VOL_RESET | BGM_MINISH_CAP);
    }
    if (!CheckGlobalFlag(START)) {
        LoadRoomEntityList(&gUnk_080F2E94);
    } else {
        LoadRoomEntityList(&gUnk_080F2EC4);
    }
}

u32 sub_unk3_HouseInteriors2_Dampe() {
    return 1;
}

extern EntityData gUnk_080F2FD4;

void sub_StateChange_HouseInteriors2_Dampe(void) {
    // graveyard key
    if (!CheckLocalFlag(0x69) || GetInventoryValue(0x3c) > 1) {
        LoadRoomEntityList(&gUnk_080F2FD4);
    }
}

u32 sub_unk3_HouseInteriors2_Stockwell() {
    return 1;
}

extern EntityData gUnk_080F30CC;

void sub_StateChange_HouseInteriors2_Stockwell(void) {
    // dog food
    if ((GetInventoryValue(0x36) == 1) && !CheckGlobalFlag(BIN_DOGFOOD) && (gPlayerState.flags.all & 0x80) == 0) {
        LoadRoomEntityList(&gUnk_080F30CC);
    }
}

u32 sub_unk3_HouseInteriors2_LinksHouseBedroom() {
    return 1;
}

extern EntityData gUnk_080F31D8;
extern u32 script_08009B30;

void sub_StateChange_HouseInteriors2_LinksHouseBedroom(void) {

    if (!CheckGlobalFlag(START) && !CheckLocalFlag(0x46)) {
        sub_080A71C4(5, 1, 4, 4);
        gUnk_02000070 = 0;
        DoFade(5, 0x100);
        sub_080751E8(0, 6, &script_08009B30);
    }
    if (!CheckGlobalFlag(OUTDOOR)) {
        gArea.musicIndex = gArea.pMusicIndex;
        SoundReq(SONG_PLAY_VOL_RESET | BGM_MINISH_CAP);
    }
    if ((gPlayerState.flags.all & 8) == 0) {
        LoadRoomEntityList(&gUnk_080F31D8);
    }
}

extern u32 script_08009E58;

void sub_0804E864(void) {
    gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x90;
    gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
    sub_080751E8(1, 6, &script_08009E58);
    ModHealth(0xa0);
}

u32 sub_unk3_HouseInteriors4_Carpenter() {
    return 1;
}

extern EntityData gUnk_080F3260;

void sub_StateChange_HouseInteriors4_Carpenter(void) {
    // pacci cane
    if (GetInventoryValue(0x12)) {
        LoadRoomEntityList(&gUnk_080F3260);
        SetTileType(0x4072, 0x202, 1);
        SetTileType(0x4072, 0x242, 1);
        SetTileType(0x4072, 0x204, 1);
        SetTileType(0x4072, 0x244, 1);
    }
}

u32 sub_unk3_HouseInteriors4_Swiftblade() {
    return 1;
}

void sub_StateChange_HouseInteriors4_Swiftblade() {
    sub_08054564();
}

u32 sub_unk3_HouseInteriors4_RanchHouseWest() {
    return 1;
}

extern EntityData gUnk_080F36FC;
extern EntityData gUnk_080F3604;

void sub_StateChange_HouseInteriors4_RanchHouseWest(void) {
    if (!CheckGlobalFlag(INLOCK)) {
        LoadRoomEntityList(&gUnk_080F36FC);
    } else if (gSave.unk8 < 4) {
        LoadRoomEntityList(&gUnk_080F3604);
    }
}

u32 sub_unk3_HouseInteriors4_RanchHouseEast() {
    return 1;
}

extern EntityData gUnk_080F37D0;

void sub_StateChange_HouseInteriors4_RanchHouseEast(void) {
    if (CheckGlobalFlag(INLOCK)) {
        LoadRoomEntityList(&gUnk_080F37D0);
    }
}

u32 sub_unk3_HouseInteriors4_FarmHouse() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites0() {
}

u32 sub_unk3_HouseInteriors4_Mayor() {
    return 1;
}

extern EntityData gUnk_080F3A48;

void sub_StateChange_HouseInteriors4_Mayor(void) {
    // flippers, history of masks
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(MIZUKAKI_START) && !GetInventoryValue(0x3b)) {
        LoadRoomEntityList(&gUnk_080F3A48);
    }
    gScreenTransition.field_0x20 = 0xf28;
    gScreenTransition.field_0x22 = 0x82d;
}

extern u32 Enemies_LakeHylia_Main;
extern u32 gUnk_080F3EA4;

u32 sub_unk3_LakeHylia_Main(void) {
    if (CheckGlobalFlag(LV4_CLEAR) && !CheckLocalFlag(4)) {
        gRoomVars.field_0x74 = &gUnk_080F3EA4;
    } else {
        gRoomVars.field_0x74 = &Enemies_LakeHylia_Main;
    }
    return 1;
}

extern EntityData gUnk_080F3C64;
extern EntityData gUnk_080F3C94;
extern EntityData gUnk_080F3C44;

void sub_StateChange_LakeHylia_Main(void) {
    if (CheckGlobalFlag(LV4_CLEAR) && !CheckLocalFlag(4)) {
        LoadRoomEntityList(&gUnk_080F3C64);
    }
    if (CheckKinstoneFused(0x12)) {
        LoadRoomEntityList(&gUnk_080F3C94);
    }
    if ((gSave.unk8 > 3) && CheckGlobalFlag(TINGLE_TALK1ST)) {
        LoadRoomEntityList(&gUnk_080F3C44);
    }
    SetTile(0x4091, 0x590, 1);
    SetTile(0x4091, 0x591, 1);
    SetTile(0x4091, 0x592, 1);
    SetTile(0x4091, 0x593, 1);
    SetTile(0x4091, 0x594, 1);
    SetTile(0x4091, 0x5d0, 1);
    SetTile(0x4091, 0x610, 1);
    SetTile(0x4091, 0x650, 1);
    SetTile(0x4091, 0x5d4, 1);
    SetTile(0x4091, 0x614, 1);
    SetTile(0x4091, 0x654, 1);
    SetTile(0x4091, 0x690, 1);
    SetTile(0x4091, 0x691, 1);
    SetTile(0x4091, 0x692, 1);
    SetTile(0x4091, 0x693, 1);
    SetTile(0x4091, 0x694, 1);
}

u32 sub_unk3_LakeHylia_Beanstalk() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites1() {
}

u32 sub_unk3_LakeWoodsCave_Main() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites2() {
}

u32 sub_unk3_HyliaDigCaves_Middle() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites3() {
}

u32 sub_unk3_HyliaDigCaves_North() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites4() {
}

u32 sub_unk3_CastorWildsDigCave_Main() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites5() {
}

u32 sub_unk3_HyruleDigCaves_Main() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites6() {
}

u32 sub_unk3_CrenelDigCave_Main() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites7() {
}

u32 sub_unk3_DigCaves1_HyruleFieldFarm() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites8() {
}

u32 sub_unk3_DigCaves1_TrilbyHighlands() {
    return 1;
}

void sub_StateChange_Ruins_LadderToTektites9() {
}

u32 sub_unk3_VeilFallsDigCave_Main() {
    return 1;
}

void sub_StateChange_VeilFallsDigCave_Main() {
}

u32 sub_unk3_OuterFortressOfWinds_EntranceHall(void) {
    gArea.areaMetadata |= 0x48;
    return 1;
}

void sub_StateChange_OuterFortressOfWinds_EntranceHall() {
}

u32 sub_unk3_OuterFortressOfWinds_2F(void) {
    gArea.areaMetadata |= 0x48;
    return 1;
}

void sub_StateChange_OuterFortressOfWinds_2F() {
}

u32 sub_unk3_OuterFortressOfWinds_3F(void) {
    gArea.areaMetadata |= 0x48;
    return 1;
}

void sub_StateChange_OuterFortressOfWinds_3F() {
}

u32 sub_unk3_OuterFortressOfWinds_MoleMitts(void) {
    sub_0801DD58(0x58, 5);
    gArea.areaMetadata |= 0x48;
    return 1;
}

void sub_StateChange_OuterFortressOfWinds_MoleMitts() {
}

u32 sub_unk3_OuterFortressOfWinds_SmallKey(void) {
    sub_0801DD58(0x58, 6);
    gArea.areaMetadata |= 0x48;
    return 1;
}

void sub_StateChange_OuterFortressOfWinds_SmallKey() {
}

extern u32 gUnk_080F4EB0;

u32 sub_unk3_MinishWoods_Main(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080F4EB0;
        gRoomVars.field_0x74 = NULL;
    }
    return 1;
}

extern EntityData gUnk_080F4D50;
extern EntityData gUnk_080F4DB0;
extern EntityData gUnk_080F4DD0;
extern EntityData gUnk_080F4DF0;
extern EntityData gUnk_080F4F10;
extern EntityData gUnk_080F4E10;

void sub_StateChange_MinishWoods_Main(void) {
    if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }
    if (!CheckGlobalFlag(EZERO_1ST)) {
        LoadRoomEntityList(&gUnk_080F4D50);
    }
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlag(0x3d)) {
        if (!CheckLocalFlag(0x3a)) {
#else
    if (!CheckLocalFlag(0x3e)) {
        if (!CheckLocalFlag(0x3b)) {
#endif
            LoadRoomEntityList(&gUnk_080F4DB0);
        } else {
            LoadRoomEntityList(&gUnk_080F4DD0);
        }
        LoadRoomEntityList(&gUnk_080F4DF0);
    }
    if (CheckKinstoneFused(0x4e)) {
        LoadRoomEntityList(&gUnk_080F4F10);
    }
    if ((s32)gSave.windcrests > -1) {
        LoadRoomEntityList(&gUnk_080F4E10);
    }
#ifdef DEMO_USA
    SetTileType(0x177, 0x5b4, 1);
    SetTileType(0x177, 0x5f4, 1);
#endif
}

void sub_unk1_MinishWoods_Main(void) {
    if ((s32)gSave.windcrests > -1) {
        LoadRoomEntityList(&gUnk_080F4E10);
    }
}

u32 sub_unk3_Empty_Main() {
    return 1;
}

void sub_StateChange_Empty_Main() {
}

extern u32 gUnk_080F5348;

u32 sub_unk3_SanctuaryEntrance_Main(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080F5348;
        gRoomVars.field_0x88 = sub_0804ED18;
        gRoomVars.field_0x74 = NULL;
    }
    return 1;
}

extern EntityData gUnk_080F5328;
extern EntityData gUnk_080F5308;

void sub_StateChange_SanctuaryEntrance_Main(void) {
    // white sword
    if (GetInventoryValue(0x2)) {
        LoadRoomEntityList(&gUnk_080F5328);
#if defined(JP) || defined(EU) || defined(DEMO_JP)
        if (!CheckLocalFlag(0x15)) {
#else
        if (!CheckLocalFlag(0x14)) {
#endif
            LoadRoomEntityList(&gUnk_080F5308);
        }
    }
}

void sub_0804ED18(void) {
    gArea.pMusicIndex = gArea.musicIndex;
}

u32 sub_unk3_Sanctuary_Hall() {
    return 1;
}

void sub_StateChange_Sanctuary_Hall(void) {
    sub_080AF2E4();
    if (CheckGlobalFlag(SEIIKI_BGM)) {
        gArea.pMusicIndex = 0x31;
    }
}

u32 sub_unk3_Sanctuary_Main() {
    return 1;
}

extern EntityData gUnk_080F54E8;
extern EntityData gUnk_080F5508;
extern EntityData gUnk_080F5558;
extern EntityData gUnk_080F5598;
extern EntityData gUnk_080F55D8;
extern EntityData gUnk_080F5528;
extern EntityData gUnk_080F5578;
extern EntityData gUnk_080F55B8;

void sub_StateChange_Sanctuary_Main(void) {
    if (!CheckLocalFlag(0x79)) {
        LoadRoomEntityList(&gUnk_080F54E8);
    }
    if (!CheckLocalFlag(0x7a)) {
        // white sword, white sword 2, earth element, fire element
        if (GetInventoryValue(0x2) && !GetInventoryValue(0x3) && GetInventoryValue(0x40) && GetInventoryValue(0x41)) {
            LoadRoomEntityList(&gUnk_080F5508);
        }
    } else {
        if (!CheckLocalFlag(0x7b)) {
            if (GetInventoryValue(0x3) && !GetInventoryValue(0x4) && GetInventoryValue(0x42)) {
                LoadRoomEntityList(&gUnk_080F5558);
            }
        } else {
            if (!CheckLocalFlag(0x7c)) {
                if (!GetInventoryValue(0x6) && GetInventoryValue(0x43)) {
                    LoadRoomEntityList(&gUnk_080F5598);
                }
            } else {
                LoadRoomEntityList(&gUnk_080F55D8);
            }
        }
    }
    if (CheckLocalFlag(0x7a)) {
        LoadRoomEntityList(&gUnk_080F5528);
    }
    if (CheckLocalFlag(0x7b)) {
        LoadRoomEntityList(&gUnk_080F5578);
    }
    if (CheckLocalFlag(0x7c)) {
        LoadRoomEntityList(&gUnk_080F55B8);
    }
    if (CheckGlobalFlag(SEIIKI_BGM)) {
        gArea.pMusicIndex = 0x31;
    }
}

u32 sub_unk3_Sanctuary_StainedGlass() {
    return 1;
}

extern EntityData gUnk_080F5660;

void sub_StateChange_Sanctuary_StainedGlass(void) {
    if (!CheckLocalFlag(0x78) && CheckLocalFlag(0x7c)) {
        LoadRoomEntityList(&gUnk_080F5660);
    }
    if (CheckGlobalFlag(SEIIKI_BGM)) {
        gArea.pMusicIndex = 0x31;
    }
}

u32 sub_unk3_HouseInteriors3_StockwellShop() {
    return 1;
}

extern EntityData gUnk_080F5758;
extern EntityData gUnk_080F57E8;
extern EntityData gUnk_080F57A8;
extern EntityData gUnk_080F57C8;
extern EntityData gUnk_080F5888;
extern EntityData gUnk_080F58A8;
extern EntityData gUnk_080F5868;
extern EntityData gUnk_080F5828;
extern EntityData gUnk_080F5848;
extern EntityData gUnk_080F5788;

void sub_StateChange_HouseInteriors3_StockwellShop(void) {
    LoadRoomEntityList(&gUnk_080F5758);
    if (!GetInventoryValue(0x36) && CheckLocalFlagByOffset(0x200, 0x8f)) {
        LoadRoomEntityList(&gUnk_080F57E8);
    }
    if (!CheckLocalFlag(0x55)) {
        LoadRoomEntityList(&gUnk_080F57A8);
    } else {
        if (gBombBagSizes[gSave.stats.bombBagType] > 0x1d) {
            LoadRoomEntityList(&gUnk_080F57C8);
        }
        if (!GetInventoryValue(0xb) && !GetInventoryValue(0xc)) {
            LoadRoomEntityList(&gUnk_080F5888);
#ifndef EU
        } else {
            if (!CheckLocalFlag(0xcd)) {
                LoadRoomEntityList(&gUnk_080F58A8);
            }
#endif
        }
    }
    if (GetInventoryValue(0x9) || CheckGlobalFlag(LV3_CLEAR)) {
        LoadRoomEntityList(&gUnk_080F5868);
        if (!CheckLocalFlag(0x56)) {
            LoadRoomEntityList(&gUnk_080F5828);
        } else {
            LoadRoomEntityList(&gUnk_080F5848);
        }
    }
    if (gSave.stats.filler3[0] == 0) {
        LoadRoomEntityList(&gUnk_080F5788);
    }
}

u32 sub_unk3_HouseInteriors3_Cafe() {
    return 1;
}

void sub_StateChange_HouseInteriors3_Cafe() {
}

u32 sub_unk3_HouseInteriors3_RemShoeShop() {
    return 1;
}

extern EntityData gUnk_080F5B3C;

void sub_StateChange_HouseInteriors3_RemShoeShop(void) {
#ifndef EU
    if (GetInventoryValue(0x38) == 1) {
        LoadRoomEntityList(&gUnk_080F5B3C);
    }
#endif
}

u32 sub_unk3_HouseInteriors3_Bakery() {
    return 1;
}
void sub_StateChange_HouseInteriors3_Bakery() {
}

u32 sub_unk3_HouseInteriors3_Simon(void) {
    if (CheckGlobalFlag(MAROYA_WAKEUP)) {
        gScreenTransition.field_0xf = 5;
    }
    return 1;
}

extern EntityData gUnk_080F5DD0;
extern u32 script_08011C50;

void sub_StateChange_HouseInteriors3_Simon(void) {
    if (gSave.unk8 > 7) {
        LoadRoomEntityList(&gUnk_080F5DD0);
    }
    if (CheckGlobalFlag(MAROYA_WAKEUP)) {
        sub_080751E8(1, 2, &script_08011C50);
    }
}

u32 sub_unk3_HouseInteriors3_FigurineHouse() {
    return 1;
}

extern EntityData gUnk_080F5E68;

void sub_StateChange_HouseInteriors3_FigurineHouse(void) {
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlagByOffset(0x100, 0xce)) {
#else
    if (!CheckLocalFlagByOffset(0x100, 0xd1)) {
#endif
        LoadRoomEntityList(&gUnk_080F5E68);
    }
}

u32 sub_unk3_HouseInteriors3_BorlovEntrance() {
    return 1;
}

extern EntityData gUnk_additional0_HouseInteriors3_BorlovEntrance;
extern EntityData gUnk_additional1_HouseInteriors3_BorlovEntrance;
extern EntityData gUnk_additional2_HouseInteriors3_BorlovEntrance;

void sub_StateChange_HouseInteriors3_BorlovEntrance(void) {

    if (gSave.unk8 > 4) {
        LoadRoomEntityList(&gUnk_additional0_HouseInteriors3_BorlovEntrance);
    }
    if (!CheckLocalFlag(0x92)) {
        LoadRoomEntityList(&gUnk_additional1_HouseInteriors3_BorlovEntrance);
    } else {
        LoadRoomEntityList(&gUnk_additional2_HouseInteriors3_BorlovEntrance);
    }
}

u32 sub_unk3_HouseInteriors3_Carlov() {
    return 1;
}

void sub_StateChange_HouseInteriors3_Carlov() {
}

u32 sub_unk3_HouseInteriors3_Borlov() {
    return 1;
}

void sub_StateChange_HouseInteriors3_Borlov() {
}

u32 sub_unk3_WindTribeTower_Entrance(void) {
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckGlobalFlag(KUMOTATSUMAKI) && CheckLocalFlagByOffset(0x100, 0xd9)) {
#else
    if (CheckGlobalFlag(KUMOTATSUMAKI) && CheckLocalFlagByOffset(0x100, 0xdc)) {
#endif
        SetGlobalFlag(WARP_EVENT_END);
    }
    return 1;
}

extern EntityData gUnk_080F61BC;

void sub_StateChange_WindTribeTower_Entrance(void) {
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckLocalFlagByOffset(0x100, 0xd9)) {
#else
    if (CheckLocalFlagByOffset(0x100, 0xdc)) {
#endif
        SetLocalFlag(0x90);
    }
    if (CheckKinstoneFused(0xf)) {
        LoadRoomEntityList(&gUnk_080F61BC);
    }
    if (!CheckGlobalFlag(WARP_EVENT_END)) {
        SetTileType(0x4072, 0x4c7, 1);
        SetTileType(0x4072, 0x507, 1);
    }
    sub_08052CA4(8, 0, 0x1e8, 0x158);
}

u32 sub_unk3_WindTribeTower_Floor2() {
    return 1;
}

extern EntityData gUnk_080F62E4;
extern EntityData gUnk_080F6324;

void sub_StateChange_WindTribeTower_Floor2(void) {
    if (!CheckGlobalFlag(WARP_EVENT_END)) {
        LoadRoomEntityList(&gUnk_080F62E4);
    } else {
        if (CheckLocalFlag(99)) {
            LoadRoomEntityList(&gUnk_080F6324);
        }
    }
}

u32 sub_unk3_WindTribeTower_Floor3() {
    return 1;
}

void sub_StateChange_WindTribeTower_Floor3() {
}

u32 sub_unk3_WindTribeTower_Floor4() {
    return 1;
}

extern EntityData gUnk_080F6564;
extern EntityData gUnk_080F6584;

void sub_StateChange_WindTribeTower_Floor4(void) {

    if (!CheckLocalFlag(0xb1)) {
        LoadRoomEntityList(&gUnk_080F6564);
    } else {
        LoadRoomEntityList(&gUnk_080F6584);
    }
}

u32 sub_unk3_WindTribeTowerRoof_Main() {
    return 1;
}

extern EntityData gUnk_080F66AC;

void sub_StateChange_WindTribeTowerRoof_Main(void) {
    sub_0805B4D0(5);
    if (CheckGlobalFlag(LV5_CLEAR) && !CheckLocalFlagByOffset(0x100, 5)) {
        LoadRoomEntityList(&gUnk_080F66AC);
    }
    sub_08052CA4(8, 0, 0x1e8, 0x158);
#ifndef EU
    gArea.areaMetadata |= 0x80;
#endif
}

u32 sub_unk3_Beanstalks_MountCrenel() {
    return 1;
}

void sub_StateChange_Beanstalks_MountCrenel() {
}

u32 sub_unk3_Beanstalks_LakeHylia() {
    return 1;
}

void sub_StateChange_Beanstalks_LakeHylia() {
}

u32 sub_unk3_Beanstalks_Ruins() {
    return 1;
}

void sub_StateChange_Beanstalks_Ruins() {
}

u32 sub_unk3_Beanstalks_EasternHills() {
    return 1;
}

void sub_StateChange_Beanstalks_EasternHills() {
}

u32 sub_unk3_Beanstalks_WesternWoods() {
    return 1;
}

void sub_StateChange_Beanstalks_WesternWoods() {
}

u32 sub_unk3_Beanstalks_MountCrenelClimb() {
    return 1;
}

void sub_StateChange_Beanstalks_MountCrenelClimb() {
}

u32 sub_unk3_Beanstalks_LakeHyliaClimb() {
    return 1;
}

void sub_StateChange_Beanstalks_LakeHyliaClimb() {
}

u32 sub_unk3_Beanstalks_RuinsClimb() {
    return 1;
}

void sub_StateChange_Beanstalks_RuinsClimb() {
}

u32 sub_unk3_Beanstalks_EasternHillsClimb() {
    return 1;
}

void sub_StateChange_Beanstalks_EasternHillsClimb() {
}

u32 sub_unk3_Beanstalks_WesternWoodsClimb() {
    return 1;
}

void sub_StateChange_Beanstalks_WesternWoodsClimb() {
}

u32 sub_unk3_HyruleField_WesternWoodSouth() {
    return 1;
}

void sub_StateChange_HyruleField_WesternWoodSouth() {
    Manager18_Main(0);
}

u32 sub_unk3_HyruleField_LinksHouseExterior(void) {
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlag(0x6b)) {
#else
    if (!CheckLocalFlag(0x6d)) {
#endif
        DoFade(7, 0x100);
    }
    SetGlobalFlag(OUTDOOR);
    return 1;
}

extern EntityData gUnk_080F70A8;
extern EntityData gUnk_080F70D8;
extern EntityData gUnk_080F7088;

void sub_StateChange_HyruleField_LinksHouseExterior(void) {
    Manager18_Main(0);
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlag(0x6b)) {
#else
    if (!CheckLocalFlag(0x6d)) {
#endif
        LoadRoomEntityList(&gUnk_080F70A8);
        ClearGlobalFlag(ZELDA_CHASE);
    }
    if (!CheckGlobalFlag(TABIDACHI)) {
        gArea.pMusicIndex = 0x10;
    }
    if ((gSave.windcrests & 0x40000000) == 0) {
        LoadRoomEntityList(&gUnk_080F70D8);
    }
    if (gSave.unk8 > 3) {
        LoadRoomEntityList(&gUnk_080F7088);
    }
}

void sub_unk1_HyruleField_LinksHouseExterior(void) {
    if ((gSave.windcrests & 0x40000000) == 0) {
        LoadRoomEntityList(&gUnk_080F70D8);
    }
}

u32 sub_unk3_HyruleField_FromMinishWoods() {
    return 1;
}

void sub_StateChange_HyruleField_FromMinishWoods() {
    Manager18_Main(0);
}

u32 sub_unk3_HyruleField_FromMinishWoodsNorth() {
    return 1;
}

void sub_StateChange_HyruleField_FromMinishWoodsNorth() {
    Manager18_Main(0);
}

extern u32 gUnk_080F7680;

u32 sub_unk3_HyruleField_Farmers(void) {
    if (GetInventoryValue(0x11) && !GetInventoryValue(0x12)) {
        gRoomVars.field_0x74 = &gUnk_080F7680;
    }
    return 1;
}

extern EntityData gUnk_080F7500;
extern EntityData gUnk_080F7550;

void sub_StateChange_HyruleField_Farmers(void) {
    Manager18_Main(0);
    if (gSave.unk8 > 3) {
        LoadRoomEntityList(&gUnk_080F7500);
    }
    if (GetInventoryValue(0x11) && !GetInventoryValue(0x12)) {
        LoadRoomEntityList(&gUnk_080F7550);
        SetTileType(0x4072, 0x311, 1);
        SetTileType(0x4072, 0x351, 1);
        SetTileType(0x4072, 0x3d9, 1);
        SetTileType(0x4072, 0x419, 1);
    }
}

u32 sub_unk3_HyruleField_LonLonRanch() {
    return 1;
}

extern EntityData gUnk_080F77F0;
extern EntityData gUnk_080F77C0;
extern EntityData gUnk_080F7810;
extern EntityData gUnk_080F7860;
extern EntityData gUnk_080F78A0;

void sub_StateChange_HyruleField_LonLonRanch(void) {

    Manager18_Main(0);
    if (CheckLocalFlagByOffset(0x200, 0x8f)) {
        if (!CheckGlobalFlag(INLOCK)) {
            LoadRoomEntityList(&gUnk_080F77C0);
        }
    } else if (GetInventoryValue(0x40)) {
        LoadRoomEntityList(&gUnk_080F77F0);
    }
    if (CheckGlobalFlag(TABIDACHI) && !GetInventoryValue(0x40)) {
        LoadRoomEntityList(&gUnk_080F7810);
    }
    if (!CheckKinstoneFused(0x29)) {
        LoadRoomEntityList(&gUnk_080F7860);
        SetTile(0x4072, 0xd88, 1);
        SetTile(0x4096, 0xdc8, 1);
    }
    if ((gSave.unk8 > 3) && CheckGlobalFlag(TINGLE_TALK1ST)) {
        LoadRoomEntityList(&gUnk_080F78A0);
    }
}

extern u32 gUnk_080F7CD0;
extern void sub_0804F5E8();
extern u32 gUnk_080F7C80;
extern void sub_0804F4E4();

u32 sub_unk3_HyruleField_OutsideCastle(void) {
    if (CheckGlobalFlag(TABIDACHI) && !GetInventoryValue(0x11)) {
        gRoomVars.field_0x6c = &gUnk_080F7CD0;
        gRoomVars.field_0x88 = sub_0804F5E8;
    }
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckGlobalFlag(LV2_CLEAR) && GetInventoryValue(0x3) && !CheckLocalFlag(0x8a)) {
#else
    if (CheckGlobalFlag(LV2_CLEAR) && GetInventoryValue(0x3) && !CheckLocalFlag(0x8c)) {
#endif
        gRoomVars.field_0x6c = &gUnk_080F7C80;
        gRoomVars.field_0x88 = sub_0804F4E4;
        gRoomVars.field_0x74 = NULL;
    }
#ifndef EU
    if (CheckGlobalFlag(TABIDACHI)) {
        ClearGlobalFlag(CASTLE_BGM);
    }
#endif
    return 1;
}

void sub_0804F4E4() {
    Manager18_Main(0);
    sub_0804F578();
}

extern EntityData gUnk_080F7D70;

void sub_StateChange_HyruleField_OutsideCastle(void) {
    sub_0804F4E4();
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlag(0x89)) {
#else
    if (!CheckLocalFlag(0x8b)) {
#endif
        LoadRoomEntityList(&gUnk_080F7D70);
        SetTileType(0x174, 0x7a2, 1);
        SetTileType(0x174, 0x7a3, 1);
        SetTileType(0x174, 0x7a5, 1);
        SetTileType(0x174, 0x7a6, 1);
        SetTileType(0x174, 0x7a7, 1);
    }
    if (!CheckGlobalFlag(TABIDACHI)) {
#ifdef EU
        gArea.pMusicIndex = 0x10;
#else
        gArea.pMusicIndex = 0x13;
#endif
    }
}

extern EntityData gUnk_080F7DC0;

void sub_0804F578(void) {
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (!CheckLocalFlag(0x8c)) {
#else
    if (!CheckLocalFlag(0x8e)) {
#endif
        LoadRoomEntityList(&gUnk_080F7DC0);
    } else {
        SetTileType(0x37, 0x94a, 1);
        SetTileType(0x37, 0x94b, 1);
        SetTileType(0x37, 0x94c, 1);
        SetTileType(0x37, 0x98a, 1);
        SetTileType(0x37, 0x98b, 1);
        SetTileType(0x37, 0x98c, 1);
    }
}

void sub_0804F5E8(void) {
    sub_0804F4E4();
    SetTileType(0x1d3, 0xbde, 1);
    SetTileType(0x1d6, 0xbe2, 1);
    SetTileType(0x1d4, 0xc1f, 1);
    SetTileType(0x1d5, 0xc20, 1);
    SetTileType(0x1d6, 0xc5e, 1);
    SetTileType(0x4072, 0xb9b, 1);
    SetTileType(0x4072, 0xbdb, 1);
    SetTileType(0x4072, 0xaa4, 1);
    SetTileType(0x4072, 0xae4, 1);
}

void sub_0804F680(Entity* parent, s32 x, s32 y) {
    Entity* fx;

    fx = CreateFx(parent, 2, 0);
    if (fx != NULL) {
        fx->x.HALF.HI = gRoomControls.roomOriginX + x;
        fx->y.HALF.HI = gRoomControls.roomOriginY + y;
    }
}

void sub_0804F6A8(Entity* this) {
    sub_0804F680(this, 0x1d8, 0x108);
    sub_0804F680(this, 0x218, 0x188);
}

void sub_0804F6C8(Entity* this) {
    sub_0804F680(this, 0x1e8, 0x108);
    sub_0804F680(this, 0x208, 0x188);
}

void sub_0804F6E8(Entity* this) {
    sub_0804F680(this, 0x1f8, 0x108);
    sub_0804F680(this, 0x258, 0x138);
    sub_0804F680(this, 0x1f8, 0x188);
    sub_0804F680(this, 0x198, 0x158);
}

void sub_0804F724(Entity* this) {
    sub_0804F680(this, 0x208, 0x108);
    sub_0804F680(this, 0x258, 0x148);
    sub_0804F680(this, 0x1e8, 0x188);
    sub_0804F680(this, 0x198, 0x148);
}

void sub_0804F760(Entity* this) {
    sub_0804F680(this, 0x218, 0x108);
    sub_0804F680(this, 0x258, 0x158);
    sub_0804F680(this, 0x1d8, 0x188);
    sub_0804F680(this, 0x198, 0x138);
}

void sub_0804F79C(Entity* parent) {
    Entity* fx;

    fx = CreateFx(parent, 0x35, 0);
    if (fx != NULL) {
        fx->spriteRendering.b3 = 0;
        fx->x.HALF.HI = gRoomControls.roomOriginX + 0x1b8;
        fx->y.HALF.HI = gRoomControls.roomOriginY + 0x148;
    }
    fx = CreateFx(parent, 0x35, 0);
    if (fx != NULL) {
        fx->spriteRendering.b3 = 0;
        fx->x.HALF.HI = gRoomControls.roomOriginX + 0x238;
        fx->y.HALF.HI = gRoomControls.roomOriginY + 0x148;
    }
}

void sub_0804F808(void) {
    SetTileType(0x1d3, 0x41d, 1);
    SetTileType(0x1d3, 0x621, 1);
}

void sub_0804F830(void) {
    SetTileType(0x1d4, 0x41e, 1);
    SetTileType(0x1d4, 0x620, 1);
}

void sub_0804F854(void) {
    SetTileType(0x1d5, 0x41f, 1);
    SetTileType(0x1d4, 0x4e5, 1);
    SetTileType(0x1d5, 0x61f, 1);
    SetTileType(0x1d4, 0x559, 1);
}

void sub_0804F89C(void) {
    SetTileType(0x1d6, 0x420, 1);
    SetTileType(0x1d5, 0x525, 1);
    SetTileType(0x1d6, 0x61e, 1);
    SetTileType(0x1d5, 0x519, 1);
}

void sub_0804F8E0(void) {
    SetTileType(0x1d3, 0x421, 1);
    SetTileType(0x1d6, 0x565, 1);
    SetTileType(0x1d3, 0x61d, 1);
    SetTileType(0x1d6, 0x4d9, 1);
}

void sub_0804F928(void) {
    sub_0807BA8C(0x41d, 1);
    sub_0807BA8C(0x621, 1);
}

void sub_0804F944(void) {
    sub_0807BA8C(0x41e, 1);
    sub_0807BA8C(0x620, 1);
}

void sub_0804F960(void) {
    sub_0807BA8C(0x41f, 1);
    sub_0807BA8C(0x4e5, 1);
    sub_0807BA8C(0x61f, 1);
    sub_0807BA8C(0x559, 1);
}

void sub_0804F994(void) {
    sub_0807BA8C(0x420, 1);
    sub_0807BA8C(0x525, 1);
    sub_0807BA8C(0x61e, 1);
    sub_0807BA8C(0x519, 1);
}

void sub_0804F9C8(void) {
    sub_0807BA8C(0x421, 1);
    sub_0807BA8C(0x565, 1);
    sub_0807BA8C(0x61d, 1);
    sub_0807BA8C(0x4d9, 1);
}

u32 sub_unk3_HyruleField_OutsideCastleWest() {
    return 1;
}

extern EntityData gUnk_080F806C;

void sub_StateChange_HyruleField_OutsideCastleWest(void) {

    Manager18_Main(0);
    if ((gSave.unk8 > 3) && CheckGlobalFlag(TINGLE_TALK1ST)) {
        LoadRoomEntityList(&gUnk_080F806C);
    }
}

u32 sub_unk3_HyruleField_TrilbyHighlands() {
    return 1;
}

extern EntityData gUnk_080F82E0;

void sub_StateChange_HyruleField_TrilbyHighlands(void) {
    Manager18_Main(0);
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    if (CheckGlobalFlag(LV2_CLEAR) && GetInventoryValue(0x3) && !CheckLocalFlag(0x9b)) {
#else
    if (CheckGlobalFlag(LV2_CLEAR) && GetInventoryValue(0x3) && !CheckLocalFlag(0x9c)) {
#endif
        LoadRoomEntityList(&gUnk_080F82E0);
    }
}

u32 sub_unk3_HyruleField_PercysHouse() {
    return 1;
}

extern EntityData gUnk_080F8430;

void sub_StateChange_HyruleField_PercysHouse(void) {

    Manager18_Main(0);
    if (CheckKinstoneFused(0x21) && !CheckLocalFlagByOffset(0x200, 0x42)) {
        LoadRoomEntityList(&gUnk_080F8430);
    }
}

u32 sub_unk3_Caves_Boomerang() {
    return 1;
}

extern EntityData gUnk_080F85F8;
extern EntityData gUnk_080F85D8;

void sub_StateChange_Caves_Boomerang(void) {

    if (CheckGlobalFlag(SOUGEN_06_HASHIGO)) {
        LoadRoomEntityList(&gUnk_080F85D8);
    } else {
        LoadRoomEntityList(&gUnk_080F85F8);
    }
    if (!GetInventoryValue(0xc)) {
        ClearLocalFlag(8);
    }
}

u32 sub_unk3_Caves_ToGraveyard() {
    return 1;
}

void sub_StateChange_Caves_ToGraveyard() {
}

u32 sub_unk3_Caves_2() {
    return 1;
}

void sub_StateChange_Caves_2() {
}

u32 sub_unk3_Caves_3() {
    return 1;
}

void sub_StateChange_Caves_3() {
}

u32 sub_unk3_Caves_4() {
    return 1;
}

void sub_StateChange_Caves_4() {
}

u32 sub_unk3_Caves_5() {
    return 1;
}

void sub_StateChange_Caves_5() {
}

u32 sub_unk3_Caves_6() {
    return 1;
}

void sub_StateChange_Caves_6() {
}

u32 sub_unk3_Caves_KeeseChest() {
    return 1;
}

void sub_StateChange_Caves_KeeseChest() {
}

u32 sub_unk3_Caves_FairyFountainTrilbyHighlands() {
    return 1;
}

void sub_StateChange_Caves_FairyFountainTrilbyHighlands() {
}

u32 sub_unk3_Caves_FairyFountainLinksHouse() {
    return 1;
}

void sub_StateChange_Caves_FairyFountainLinksHouse() {
}

u32 sub_unk3_Caves_A() {
    return 1;
}

void sub_StateChange_Caves_A() {
}

u32 sub_unk3_Caves_HyruleTownWaterfall() {
    return 1;
}

void sub_StateChange_Caves_HyruleTownWaterfall() {
}

u32 sub_unk3_Caves_LonLonRanch() {
    return 1;
}

void sub_StateChange_Caves_LonLonRanch() {
}

u32 sub_unk3_Caves_LonLonRanchSecret() {
    return 1;
}

void sub_StateChange_Caves_LonLonRanchSecret(void) {
    if (CheckLocalFlag(0x11)) {
        SetRoomFlag(0);
        SetRoomFlag(1);
        sub_0805308C(0x100);
        if (!CheckLocalFlag(0x12)) {
            SetTileType(0x73, 0xcb, 1);
        }
    }
}

u32 sub_unk3_Caves_TrilbyHighlands() {
    return 1;
}

void sub_StateChange_Caves_TrilbyHighlands() {
}

u32 sub_unk3_Caves_LonLonRanchWallet() {
    return 1;
}

void sub_StateChange_Caves_LonLonRanchWallet() {
}

u32 sub_unk3_Caves_RupeeLinksHouse() {
    return 1;
}

void sub_StateChange_Caves_RupeeLinksHouse() {
}

u32 sub_unk3_Caves_RupeeTrilbyHighlands() {
    return 1;
}

void sub_StateChange_Caves_RupeeTrilbyHighlands() {
}

u32 sub_unk3_Caves_FairyFountainMoleMitts() {
    return 1;
}

void sub_StateChange_Caves_FairyFountainMoleMitts() {
}

u32 sub_unk3_Caves_KeeseChestSoutheastHyrule() {
    return 1;
}
void sub_StateChange_Caves_KeeseChestSoutheastHyrule() {
}

u32 sub_unk3_Caves_BottleBusinessScrub() {
    return 1;
}

void sub_StateChange_Caves_BottleBusinessScrub() {
}

u32 sub_unk3_Caves_HeartPieceHallway() {
    return 1;
}

void sub_StateChange_Caves_HeartPieceHallway() {
}

u32 sub_unk3_Caves_FairyFountainBoomerang() {
    return 1;
}

void sub_StateChange_Caves_FairyFountainBoomerang() {
}

u32 sub_unk3_Caves_KinstoneBusinessScrub() {
    return 1;
}

void sub_StateChange_Caves_KinstoneBusinessScrub() {
}

u32 sub_unk3_VeilFalls_Main() {
    return 1;
}

extern EntityData gUnk_080F9304;

void sub_StateChange_VeilFalls_Main(void) {
    if ((gSave.windcrests & 0x2000000) == 0) {
        LoadRoomEntityList(&gUnk_080F9304);
    }
}

void sub_unk1_VeilFalls_Main(void) {
    if ((gSave.windcrests & 0x2000000) == 0) {
        LoadRoomEntityList(&gUnk_080F9304);
    }
}

u32 sub_unk3_VeilFallsCaves_Hallway2F() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_Hallway2F() {
}

u32 sub_unk3_VeilFallsCaves_Hallway1F() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_Hallway1F() {
}

u32 sub_unk3_VeilFallsCaves_SecretRoom() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_SecretRoom() {
}

u32 sub_unk3_VeilFallsCaves_Entrance() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_Entrance() {
}

u32 sub_unk3_VeilFallsCaves_Exit() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_Exit() {
}

u32 sub_unk3_VeilFallsCaves_SecretChest() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_SecretChest() {
}

u32 sub_unk3_VeilFallsCaves_SecretStaircases() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_SecretStaircases() {
}

u32 sub_unk3_VeilFallsCaves_BlockPuzzle() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_BlockPuzzle() {
}

u32 sub_unk3_VeilFallsCaves_RupeePath() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_RupeePath() {
}

u32 sub_unk3_VeilFallsCaves_HeartPiece() {
    return 1;
}

void sub_StateChange_VeilFallsCaves_HeartPiece() {
}

extern u32 gUnk_080F9BF8;

u32 sub_unk3_VeilFallsTop_Main(void) {
    if (!CheckKinstoneFused(0xe)) {
        gRoomVars.field_0x6c = &gUnk_080F9BF8;
    }
    return 1;
}

void sub_StateChange_VeilFallsTop_Main() {
    sub_0805B4D0(2);
    sub_0806D0B0(0);
}

u32 sub_unk3_47_0() {
    return 1;
}

void sub_StateChange_47_0() {
}

u32 sub_unk3_47_1() {
    return 1;
}

void sub_StateChange_47_1() {
}

u32 sub_unk3_47_2() {
    return 1;
}

void sub_StateChange_47_2() {
}

u32 sub_unk3_47_3() {
    return 1;
}

void sub_StateChange_47_3() {
}

u32 sub_unk3_47_4() {
    return 1;
}

void sub_StateChange_47_4() {
}

u32 sub_unk3_TreeInteriors_WitchHut() {
    return 1;
}

extern EntityData gUnk_080F9FA8;
extern EntityData gUnk_080F9F88;

void sub_StateChange_TreeInteriors_WitchHut(void) {
    if (CheckKinstoneFused(0x14)) {
        LoadRoomEntityList(&gUnk_080F9FA8);
    }
    if (!GetInventoryValue(0x38)) {
        LoadRoomEntityList(&gUnk_080F9F88);
    }
}

u32 sub_0804FCD4() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Wallmaster4() {
}

u32 sub_0804FCDC() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Wallmaster5() {
}

u32 sub_0804FCE4() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Wallmaster6() {
}

u32 sub_0804FCEC() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Wallmaster7() {
}

u32 sub_0804FCF4() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Wallmaster8() {
}

u32 sub_0804FCFC() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Wallmaster9() {
}

u32 sub_0804FD04() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone0() {
}

u32 sub_0804FD0C() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone1() {
}

u32 sub_0804FD14() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone2() {
}

u32 sub_0804FD1C() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone3() {
}

u32 sub_0804FD24() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone4() {
}

u32 sub_0804FD2C() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone5() {
}

u32 sub_0804FD34() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone6() {
}

u32 sub_0804FD3C() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone7() {
}

u32 sub_0804FD44() {
    return 1;
}

void sub_StateChange_FortressOfWinds_Clone8() {
}

u32 sub_unk3_TreeInteriors_StairsToCarlov() {
    return 1;
}

void sub_StateChange_TreeInteriors_StairsToCarlov() {
}

u32 sub_unk3_TreeInteriors_PercysTreehouse() {
    return 1;
}

extern EntityData gUnk_080FA5D0;

void sub_StateChange_TreeInteriors_PercysTreehouse(void) {
    if (!CheckKinstoneFused(0x21)) {
        LoadRoomEntityList(&gUnk_080FA5D0);
    }
}

u32 sub_unk3_TreeInteriors_HeartPiece() {
    return 1;
}
void sub_StateChange_TreeInteriors_HeartPiece() {
}

u32 sub_unk3_TreeInteriors_StairsToBladeBrother() {
    return 1;
}

void sub_StateChange_TreeInteriors_StairsToBladeBrother() {
}

u32 sub_unk3_TreeInteriors_14() {
    return 1;
}

void sub_StateChange_TreeInteriors_14() {
}

u32 sub_unk3_TreeInteriors_BoomerangNorthwest() {
    return 1;
}

void sub_StateChange_TreeInteriors_BoomerangNorthwest() {
}

u32 sub_unk3_TreeInteriors_BoomerangNortheast() {
    return 1;
}

void sub_StateChange_TreeInteriors_BoomerangNortheast() {
}

u32 sub_unk3_TreeInteriors_BoomerangSouthwest() {
    return 1;
}

void sub_StateChange_TreeInteriors_BoomerangSouthwest() {
}

u32 sub_unk3_TreeInteriors_BoomerangSoutheast() {
    return 1;
}

void sub_StateChange_TreeInteriors_BoomerangSoutheast() {
}

u32 sub_unk3_TreeInteriors_HeartPieceSouthwestField() {
    return 1;
}

void sub_StateChange_TreeInteriors_HeartPieceSouthwestField() {
}

u32 sub_unk3_TreeInteriors_StairsToFairyFountain() {
    return 1;
}

void sub_StateChange_TreeInteriors_StairsToFairyFountain() {
}

u32 sub_unk3_TreeInteriors_StairsToWalletFairy() {
    return 1;
}

void sub_StateChange_TreeInteriors_StairsToWalletFairy() {
}

u32 sub_unk3_TreeInteriors_1C() {
    return 1;
}

void sub_StateChange_TreeInteriors_1C() {
}

u32 sub_unk3_TreeInteriors_StairsToBusinessScrub() {
    return 1;
}

void sub_StateChange_TreeInteriors_StairsToBusinessScrub() {
}

u32 sub_unk3_TreeInteriors_1E() {
    return 1;
}

void sub_StateChange_TreeInteriors_1E() {
}

u32 sub_unk3_TreeInteriors_1F() {
    return 1;
}

void sub_StateChange_TreeInteriors_1F() {
}

extern u32 gUnk_080FAD48;

u32 sub_unk3_MtCrenel_MountainTop(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080FAD48;
        gRoomVars.field_0x74 = NULL;
    }
    return 1;
}

extern EntityData gUnk_080FACB8;

void sub_StateChange_MtCrenel_MountainTop(void) {
    if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    } else {
        LoadRoomEntityList(&gUnk_080FACB8);
    }
    sub_0805B4D0(0);
    sub_08059994();
}

void sub_unk1_MtCrenel_MountainTop() {
    sub_0805B4D0(0);
}

u32 sub_unk3_MtCrenel_WallClimb() {
    return 1;
}

void sub_StateChange_MtCrenel_WallClimb() {
}

u32 sub_unk3_MtCrenel_CaveOfFlamesEntrance() {
    return 1;
}

extern EntityData gUnk_080FAFE4;
extern EntityData gUnk_080FB004;

void sub_StateChange_MtCrenel_CaveOfFlamesEntrance(void) {

    sub_0805B4D0(1);
    if (CheckGlobalFlag(LV2_CLEAR) && !CheckLocalFlag(LV1_CLEAR)) {
        LoadRoomEntityList(&gUnk_080FAFE4);
    }
    if ((gSave.windcrests & 0x1000000) == 0) {
        LoadRoomEntityList(&gUnk_080FB004);
    }
    if (GetInventoryValue(0x2)) {
        SetGlobalFlag(WHITE_SWORD_END);
    }
}

void sub_unk1_MtCrenel_CaveOfFlamesEntrance(void) {
    if ((gSave.windcrests & 0x1000000) == 0) {
        LoadRoomEntityList(&gUnk_080FB004);
    }
}

u32 sub_unk3_MtCrenel_GustJarShortcut() {
    return 1;
}

void sub_StateChange_MtCrenel_GustJarShortcut() {
}

u32 sub_unk3_MtCrenel_Entrance() {
    return 1;
}

void sub_StateChange_MtCrenel_Entrance(void) {
#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
    SetTileType(0x176, 0x66f, 1);
#endif
}

u32 sub_unk3_CrenelCaves_BlockPushing() {
    return 1;
}

void sub_StateChange_CrenelCaves_BlockPushing() {
}

u32 sub_unk3_CrenelCaves_PillarCave() {
    return 1;
}

void sub_StateChange_CrenelCaves_PillarCave() {
}

u32 sub_unk3_CrenelCaves_BridgeSwitch() {
    return 1;
}

void sub_StateChange_CrenelCaves_BridgeSwitch() {
}

u32 sub_unk3_CrenelCaves_ExitToMines() {
    return 1;
}

void sub_StateChange_CrenelCaves_ExitToMines() {
}

u32 sub_unk3_CrenelCaves_GripRing() {
    return 1;
}

void sub_StateChange_CrenelCaves_GripRing() {
}

u32 sub_unk3_CrenelCaves_FairyFountain() {
    return 1;
}

void sub_StateChange_CrenelCaves_FairyFountain() {
}

u32 sub_unk3_CrenelCaves_SpinyChuPuzzle() {
    return 1;
}

void sub_StateChange_CrenelCaves_SpinyChuPuzzle() {
}

u32 sub_unk3_CrenelCaves_ChuchuPotChest() {
    return 1;
}

void sub_StateChange_CrenelCaves_ChuchuPotChest() {
}

u32 sub_unk3_CrenelCaves_WaterHeartPiece() {
    return 1;
}

void sub_StateChange_CrenelCaves_WaterHeartPiece() {
}

u32 sub_unk3_CrenelCaves_RupeeFairyFountain() {
    return 1;
}

void sub_StateChange_CrenelCaves_RupeeFairyFountain() {
}

u32 sub_unk3_CrenelCaves_HelmasaurHallway() {
    return 1;
}

void sub_StateChange_CrenelCaves_HelmasaurHallway() {
}

u32 sub_unk3_CrenelCaves_MushroomKeese() {
    return 1;
}

void sub_StateChange_CrenelCaves_MushroomKeese() {
}

u32 sub_unk3_CrenelCaves_LadderToGreenWater() {
    return 1;
}

void sub_StateChange_CrenelCaves_LadderToGreenWater() {
}

u32 sub_unk3_CrenelCaves_BombBusinessScrub() {
    return 1;
}

void sub_StateChange_CrenelCaves_BombBusinessScrub() {
}

u32 sub_unk3_CrenelCaves_Hermit() {
    return 1;
}

void sub_StateChange_CrenelCaves_Hermit(void) {
    if (!CheckLocalFlag(0x70)) {
        SetLocalFlag(0x70);
    }
}

u32 sub_unk3_CrenelCaves_HintScrub() {
    return 1;
}

void sub_StateChange_CrenelCaves_HintScrub() {
}

u32 sub_unk3_CrenelCaves_ToGrayblade() {
    return 1;
}

void sub_StateChange_CrenelCaves_ToGrayblade() {
}

void sub_0804FF84(u32 arg0) {
    ((struct_02000000*)0x02000000)->brightnessPref = arg0;
    gUsedPalettes = (u32)-1;
}
