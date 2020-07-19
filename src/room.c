#include "global.h"
#include "entity.h"
#include "area.h"
#include "room.h"
#include "functions.h"
#include "flags.h"
#include "link.h"

typedef struct {
    u8 field_0x0[8];
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa[6];
    union SplitWord field_0x10;
} struct_030010A0;

typedef struct {
    u8 filler[8];
    u8 field_0x8;
    u8 field_0x9[0x34];
    u32 windcrests;
} struct_02002A40;

typedef struct {
    u8 interruptFlag;
    u8 field_0x1;
    u8 funcIndex;
    u8 field_0x3;
    u8 transition;
    u8 field_0x5;
    u8 muteAudio;
    u8 field_0x8;
    u8 countdown;
} Main;

extern struct_030010A0 gUnk_030010A0;
extern struct_02002A40 gUnk_02002A40;
extern Main gUnk_03001000;

void sub_0804B3C4(u32 arg0) {
    sub_0804B29C(arg0);
}

u32 sub_0804B3CC(u32 arg0) {
    return 1;
}

void sub_0804B3D0() {
    sub_08030118(0);
}

u32 sub_0804B3DC() {
    return 1;
}

void sub_0804B3E0() {
    sub_08030118(1);
}

u32 sub_0804B3EC() {
    return 1;
}

void sub_0804B3F0() {
    sub_08030118(2);
}

u32 sub_0804B3FC() {
    return 1;
}

void sub_0804B400() {
    sub_08030118(3);
}

u32 sub_0804B40C() {
    return 1;
}

void sub_0804B410() {
    sub_08030118(4);
}

u32 sub_0804B41C() {
    return 1;
}

void sub_0804B420() {
    sub_08030118(5);
}

u32 sub_0804B42C() {
    return 1;
}

void sub_0804B430() {
    sub_08030118(6);
}

u32 sub_0804B43C() {
    return 1;
}

void sub_0804B440() {
    sub_08030118(7);
}

u32 sub_0804B44C() {
    return 1;
}

void sub_0804B450() {
    sub_08030118(8);
}

u32 sub_0804B45C() {
    return 1;
}

void sub_0804B460() {
    Area* a;

    sub_08030118(9);
    a = &gArea;
    *((u8*)&a->localFlagOffset - 1) = 3;
    a->areaMetadata = 0x4e;
}

u32 sub_0804B478() {
    return 1;
}

void sub_0804B47C() {
    Area* a;

    sub_08030118(10);
    a = &gArea;
    *((u8*)&a->localFlagOffset - 1) = 3;
    a->areaMetadata = 0x4e;
}

u32 sub_0804B494() {
    return 1;
}

void sub_0804B498() {
    sub_080575C8(35);
    sub_08057688();
}

u32 sub_0804B4A8() {
    return 1;
}

void sub_0804B4AC() {
    sub_080575C8(35);
}

void sub_0804B4B8() {
    sub_080575C8(35);
}

u32 sub_0804B4C4() {
    return 1;
}

void sub_0804B4C8() {
    sub_080580B0(34);
}

void sub_0804B4D4() {
    sub_080580B0(34);
}

u32 sub_0804B4E0() {
    return 1;
}

void sub_0804B4E4(void) {
    sub_080580B0(0x22);
    // white sword
    if (GetInventoryValue(0x2))
        SetGlobalFlag(WHITE_SWORD_END);
}

void sub_0804B500() {
    sub_080580B0(34);
}

u32 sub_0804B50C() {
    return 1;
}

void sub_0804B510() {
    sub_080575C8(30);
}

void sub_0804B51C() {
    sub_080575C8(30);
}

u32 sub_0804B528() {
    return 1;
}

void sub_0804B52C() {
    sub_080575C8(33);
}

void sub_0804B538() {
    sub_080575C8(33);
}

u32 sub_0804B544() {
    return 1;
}

void sub_0804B548() {
    sub_080575C8(31);
}

void sub_0804B554() {
    sub_080575C8(31);
}

u32 sub_0804B560() {
    return 1;
}

void sub_0804B564() {
    sub_080575C8(32);
}

void sub_0804B570() {
    sub_080575C8(32);
}

u32 sub_0804B57C() {
    return 1;
}

extern EntityData gUnk_080D6138;

void sub_0804B580(void) {

    sub_080575C8(0x20);

    if (gLinkEntity.y.HALF.HI - gRoomControls.roomOriginY > 0x40)
        LoadRoomEntityList(&gUnk_080D6138);
}

void sub_0804B5AC() {
    sub_080575C8(32);
}

u32 sub_0804B5B8() {
    return 1;
}

extern EntityData gUnk_080D6210;

void sub_0804B5BC(void) {

    if ((u16)gUnk_030010A0.field_0x10.HALF.HI > 0x40)
        LoadRoomEntityList(&gUnk_080D6210);
}

u32 sub_0804B5D8() {
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

void sub_0804B5DC(void) {
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

u32 sub_0804B6EC() {
    return 1;
}

extern EntityData gUnk_080D6578;
extern EntityData gUnk_080D6638;
extern EntityData gUnk_080D6558;
extern EntityData gUnk_080D6618;

void sub_0804B6F0(void) {
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

u32 sub_0804B734() {
    return 1;
}

extern EntityData gUnk_080D6714;
extern EntityData gUnk_080D6734;
extern EntityData gUnk_080D66F4;

void sub_0804B738(void) {
    if (gUnk_02002A40.field_0x8 > 4) {
        LoadRoomEntityList(&gUnk_080D6714);
    }
    // flippers
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(MIZUKAKI_START) && CheckLocalFlag(0x6a)) {
        LoadRoomEntityList(&gUnk_080D6734);
    } else {
        LoadRoomEntityList(&gUnk_080D66F4);
    }
}

u32 sub_0804B788() {
    return 1;
}

extern EntityData gUnk_080D6924;

void sub_0804B78C(void) {
    if (gUnk_02002A40.field_0x8 > 7) {
        LoadRoomEntityList(&gUnk_080D6924);
    }
}

extern u32 gUnk_080D6A74[];

u32 sub_0804B7A8(void) {
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

extern void* gUnk_08010A5C[];

void sub_0804B7E8(void) {
    if (CheckLocalFlag(0x91)) {
        ClearLocalFlag(0x91);
        DoFade(5, 0x100);
        gLinkEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x50;
        gLinkEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
        sub_080751E8(1, 2, &gUnk_08010A5C);
    }
}

extern u32 gUnk_080D6B18[];

u32 sub_0804B82C(void) {
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

void sub_0804B86C(void) {
    if (CheckLocalFlag(0x91) != 0) {
        ClearLocalFlag(0x91);
        DoFade(5, 0x100);
        gLinkEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x50;
        gLinkEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
        sub_080751E8(1, 2, &gUnk_08010A5C);
    }
}

extern u32 gUnk_080D6BB8[];

u32 sub_0804B8B0(void) {
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

extern void* gUnk_08010A5C[];

void sub_0804B8F0(void) {
    if (CheckLocalFlag(0x91)) {
        ClearLocalFlag(0x91);
        DoFade(5, 0x100);
        gLinkEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x60;
        gLinkEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
        sub_080751E8(1, 2, &gUnk_08010A5C);
    }
}

u32 sub_0804B934() {
    return 1;
}

extern EntityData UpperInn_Oracles;
extern EntityData UpperInn_NoFarore;
extern EntityData UpperInn_NoNayru;
extern EntityData UpperInn_NoDin;
extern EntityData UpperInn_Farore;
extern EntityData UpperInn_Nayru;
extern EntityData UpperInn_Din;

void sub_0804B938(void) {
    int iVar1;

    if (gUnk_02002A40.field_0x8 < 4)
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

u32 sub_0804B9F8() {
    return 1;
}

void nullsub_176() {
}

u32 sub_0804BA00() {
    return 1;
}

void nullsub_177() {
}

u32 sub_0804BA08() {
    return 1;
}

extern EntityData gUnk_080D7038;

void sub_0804BA0C(void) {
    if (gUnk_02002A40.field_0x8 < 8) {
        LoadRoomEntityList(&gUnk_080D7038);
    }
    if (gRoomVars.filler[0] == 0) {
        sub_08052CA4(2, 0, 0x2c8, 0xa8);
    }
}

u32 sub_0804BA40() {
    return 1;
}

extern EntityData gUnk_080D7140;
extern EntityData gUnk_080D7170;
extern EntityData gUnk_080D71A0;
extern EntityData gUnk_080D71D0;
extern EntityData gUnk_080D71F0;

void sub_0804BA44(void) {

    if (gUnk_02002A40.field_0x8 == 6)
        LoadRoomEntityList(&gUnk_080D7140);

    if (gUnk_02002A40.field_0x8 == 7)
        LoadRoomEntityList(&gUnk_080D7170);

    if ((gUnk_02002A40.field_0x8 < 8) || (LoadRoomEntityList(&gUnk_080D71A0), gUnk_02002A40.field_0x8 < 8))
        LoadRoomEntityList(&gUnk_080D71D0);
    else
        LoadRoomEntityList(&gUnk_080D71F0);
}

extern u32 gUnk_080D7348;

u32 sub_0804BA9C(void) {
    if (CheckGlobalFlag(0x51)) {
        gRoomVars.field_0x6c = &gUnk_080D7348;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080D7328;

void sub_0804BAC0(void) {
    if (!CheckGlobalFlag(3)) {
        LoadRoomEntityList(&gUnk_080D7328);
    }
    if (CheckGlobalFlag(0x64)) {
        gArea.pMusicIndex = 0x1b;
    } else if (CheckGlobalFlag(0x51)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

extern u32 gUnk_080D7410;

u32 sub_0804BB18(void) {
    if (CheckGlobalFlag(0x51)) {
        gRoomVars.field_0x6c = &gUnk_080D7410;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080D73B0;
extern EntityData gUnk_080D73E0;

void sub_0804BB3C(void) {
    if (!CheckGlobalFlag(0x51)) {
        if (!CheckGlobalFlag(3)) {
            LoadRoomEntityList(&gUnk_080D73B0);
        }
        if (!CheckGlobalFlag(2) && CheckGlobalFlag(0x15)) {
            LoadRoomEntityList(&gUnk_080D73E0);
        }
        if (CheckGlobalFlag(0x64)) {
            gArea.pMusicIndex = gArea.musicIndex;
        }
    } else {
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_0804BB9C() {
    return 1;
}

extern EntityData gUnk_080D74C8;
extern EntityData gUnk_080D7588;
extern EntityData gUnk_080D75D8;
extern EntityData gUnk_080D7618;

void sub_0804BBA0(void) {
    if (CheckGlobalFlag(100)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }

    if (CheckGlobalFlag(0x51)) {
        LoadRoomEntityList(&gUnk_080D7618);
        gArea.pMusicIndex = gArea.musicIndex;
    } else if (CheckGlobalFlag(0x15) == 0) {
        LoadRoomEntityList(&gUnk_080D74C8);
        gArea.pMusicIndex = 0x1b;
    } else if (CheckGlobalFlag(2) == 0) {
        LoadRoomEntityList(&gUnk_080D7588);
    } else {
        LoadRoomEntityList(&gUnk_080D75D8);
    }
}

u32 sub_0804BC34() {
    return 1;
}

extern EntityData gUnk_080D7690;

void sub_0804bc38(void) {
    if (CheckLocalFlag(0x9c)) {
        LoadRoomEntityList(&gUnk_080D7690);
    }
}

u32 sub_0804BC50(void) {
    if (!CheckLocalFlag(0x9f)) {
        gUnk_030010A0.field_0xa[5] = 5;
        ClearGlobalFlag(0x1c);
    }
    return 1;
}

extern u32 gUnk_08009E88;

void sub_0804BC70(void) {
    if (!CheckLocalFlag(0x9f)) {
        DoFade(5, 0x100);
        gLinkEntity.x.HALF.HI = gRoomControls.roomOriginX + 0xb0;
        gLinkEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x40;
        sub_080751E8(0, 6, &gUnk_08009E88);
    }
    if (!CheckGlobalFlag(0x15)) {
        sub_08052878();
    } else {
        if (CheckGlobalFlag(100)) {
            gArea.pMusicIndex = 0x1b;
        }
    }
}

extern u32 gUnk_0813AB80;

void sub_0804BCDC() {
    sub_0808091C(&gUnk_0813AB80, 4);
}

u32 sub_0804BCEC() {
    return 1;
}

void nullsub_178() {
}

u32 sub_0804BCF4() {
    return 1;
}

void nullsub_179() {
}

u32 sub_0804BCFC() {
    return 1;
}

void nullsub_180() {
}

u32 sub_0804BD04() {
    return 1;
}

void nullsub_181() {
}

u32 sub_0804BD0C() {
    return 1;
}

void nullsub_182() {
}

u32 sub_0804BD14() {
    return 1;
}

void nullsub_183() {
}

u32 sub_0804BD1C() {
    return 1;
}

void nullsub_184() {
}

u32 sub_0804BD24() {
    return 1;
}

void nullsub_185() {
}

u32 sub_0804BD2C() {
    return 1;
}

void nullsub_186() {
}

u32 sub_0804BD34() {
    return 1;
}

void nullsub_187() {
}

u32 sub_0804BD3C() {
    return 1;
}

void nullsub_188() {
}

u32 sub_0804BD44() {
    return 1;
}

void nullsub_189() {
}

u32 sub_0804BD4C() {
    return 1;
}

extern EntityData gUnk_080D7D34;

void sub_0804BD50(void) {
    // four sword
    if (GetInventoryValue(0x6)) {
        SetTile(0x4072, 0x14d, 1);
        SetTile(0x4072, 0x10c, 1);
        SetTile(0x4090, 0x14c, 1);
        SetTile(0x4090, 0x18c, 1);
        LoadRoomEntityList(&gUnk_080D7D34);
    }
}

u32 sub_0804BDA4() {
    return 1;
}

void nullsub_190() {
}

u32 sub_0804BDAC() {
    return 1;
}

void nullsub_191() {
}

u32 sub_0804BDB4() {
    return 1;
}

void nullsub_192() {
}

u32 sub_0804BDBC() {
    return 1;
}

void nullsub_193() {
}

u32 sub_0804BDC4() {
    return 1;
}

void nullsub_194() {
}

u32 sub_0804BDCC() {
    return 1;
}

extern EntityData gUnk_080D827C;

void sub_0804BDD0(void) {
    if (!CheckLocalFlag(3)) {
        LoadRoomEntityList(&gUnk_080D827C);
    } else {
        sub_0805BC4C();
        SetTileType(0x76, 0x82, 2);
        SetTileType(0x76, 0x8c, 2);
    }
}

u32 sub_0804BE04() {
    return 1;
}

void nullsub_28() {
}

u32 sub_0804BE0C() {
    return 1;
}

void nullsub_29() {
}

u32 sub_0804BE14() {
    return 1;
}

void nullsub_30() {
}

u32 sub_0804BE1C() {
    return 1;
}

void nullsub_31() {
}

u32 sub_0804BE24() {
    return 1;
}

void nullsub_32() {
}

u32 sub_0804BE2C() {
    return 1;
}

void nullsub_33() {
}

u32 sub_0804BE34() {
    return 1;
}

void nullsub_34() {
}

u32 sub_0804BE3C() {
    return 1;
}

void nullsub_35() {
}

u32 sub_0804BE44() {
    return 1;
}

void nullsub_36() {
}

u32 sub_0804BE4C() {
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

void sub_0804BE50(void) {
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
      fx = CreateObject(0xf, 0xf, 0);
      if (fx != NULL) {
        fx->x.HALF.HI = gUnk_080D8E50[iVar3].x + gRoomControls.roomOriginX + xOff;
        fx->y.HALF.HI = gUnk_080D8E50[iVar3].y + gRoomControls.roomOriginY + (entCnt & 1) * 8;
      }
      fx = CreateObject(0xf, 0x54, 0);
      if (fx != NULL) {
        fx->x.HALF.HI = gUnk_080D8E50[iVar3].x + gRoomControls.roomOriginX + xOff;
        fx->y.HALF.HI = gUnk_080D8E50[iVar3].y + gRoomControls.roomOriginY + -0xc + (entCnt & 1) * 8;
        fx->direction = 0;
        fx->nonPlanarMovement = 0x100;
      }
    }
  }

  sub_08080964(gUnk_080D8E50[iVar3].shakeTime, gUnk_080D8E50[iVar3].shakeMag);
  PlaySFX(gUnk_080D8E50[iVar2].sfx);
}
#else
NAKED
void sub_0804BF38(u32 arg0, void* arg1) {
    asm(".include \"asm/non_matching/sub_0804BF38.inc\"");
}
#endif

u32 sub_0804C00C() {
    return 1;
}

void nullsub_195() {
}

u32 sub_0804C014() {
    return 1;
}

extern EntityData gUnk_080D90C8;
extern EntityData gUnk_080D9108;
extern EntityData gUnk_080D9098;

void sub_0804C018(void) {
    if (!CheckGlobalFlag(0x20)) {
        // graveyard key
        if (GetInventoryValue(0x3c) == 1) {
            LoadRoomEntityList(&gUnk_080D90C8);
            LoadRoomEntityList(&gUnk_080D9108);
        }
    } else if (!CheckGlobalFlag(0x21))
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

    if (CheckGlobalFlag(0x62))
        if (gUnk_030010A0.field_0x10.WORD == 0x2780078)
            PlaySFX(0x72);

    ClearGlobalFlag(0x62);
}

u32 sub_0804C104() {
    return 1;
}

void sub_0804C108(void) {
    gArea.areaMetadata |= 0x40;
    sub_0804C128(gArea.filler[7] |= 1);
}

NAKED
void sub_0804C128(u32 arg0) {
    asm(".include \"asm/non_matching/sub_0804C128.inc\"");
}

NAKED
void sub_0804C258(void) {
    asm(".include \"asm/non_matching/sub_0804C258.inc\"");
}

NAKED
void sub_0804C290(void) {
    asm(".include \"asm/non_matching/sub_0804C290.inc\"");
}

u32 sub_0804C2BC() {
    return 1;
}

void nullsub_196() {
}

u32 sub_0804C2C4() {
    return 1;
}

void nullsub_197() {
}

u32 sub_0804C2CC() {
    return 1;
}

void sub_0804C2D0() {
    sub_08058324(0);
}

u32 sub_0804C2DC() {
    return 1;
}

void sub_0804C2E0() {
    sub_08058324(1);
}

u32 sub_0804C2EC() {
    return 1;
}

extern EntityData gUnk_080D9800;

void sub_0804C2F0(void) {

    sub_08058324(2);

    if (CheckGlobalFlag(0x29) && !CheckGlobalFlag(0x2a))
        LoadRoomEntityList(&gUnk_080D9800);
}

void sub_0804C318() {
    sub_0804C2F0();
}

u32 sub_0804C320() {
    return 1;
}

void sub_0804C324() {
    sub_08058324(3);
}

u32 sub_0804C330() {
    return 1;
}

extern EntityData gUnk_080D9CC8;
extern EntityData gUnk_080D9CE8;
extern EntityData gUnk_080D9C38;

void sub_0804C334(void) {

    SetGlobalFlag(0x1e);

    if (CheckKinstoneFused(0x5b))
        LoadRoomEntityList(&gUnk_080D9CC8);

    if ((gUnk_02002A40.windcrests & 0x20000000) == 0)
        LoadRoomEntityList(&gUnk_080D9CE8);

    // pegasus boots
    if (!GetInventoryValue(0x15))
        LoadRoomEntityList(&gUnk_080D9C38);
}

void sub_0804C384(void) {
    if ((gUnk_02002A40.windcrests & 0x20000000) == 0)
        LoadRoomEntityList(&gUnk_080D9CE8);
}

u32 sub_0804C3A4() {
    return 1;
}

void nullsub_198() {
}

u32 sub_0804C3AC() {
    return 1;
}

void nullsub_199() {
}

u32 sub_0804C3B4() {
    return 1;
}

void nullsub_200() {
}

u32 sub_0804C3BC() {
    return 1;
}

void nullsub_201() {
}

u32 sub_0804C3C4() {
    return 1;
}

void nullsub_202() {
}

extern u32 gUnk_080DA230;

u32 sub_0804C3CC(void) {
    if (!CheckLocalFlag(0x39))
        gRoomVars.field_0x6c = &gUnk_080DA230;

    return 1;
}

void nullsub_203() {
}

u32 sub_0804C3F0() {
    return 1;
}

void nullsub_204() {
}

u32 sub_0804C3F8() {
    return 1;
}

void nullsub_205() {
}

u32 sub_0804C400() {
    return 1;
}

void nullsub_206() {
}

u32 sub_0804C408() {
    return 1;
}

void nullsub_207() {
}

u32 sub_0804C410() {
    return 1;
}

void nullsub_208() {
}

u32 sub_0804C418() {
    return 1;
}

void nullsub_209() {
}

u32 sub_0804C420() {
    return 1;
}

void sub_0804C424() {
    sub_0801AFE4();
}

u32 sub_0804C42C() {
    return 1;
}

void sub_0804C430() {
    sub_0801AFE4();
}

u32 sub_0804C438() {
    return 1;
}

void sub_0804C43C() {
    sub_0801AFE4();
}

u32 sub_0804C444() {
    return 1;
}

void sub_0804C448() {
    sub_0801AFE4();
}

u32 sub_0804C450() {
    return 1;
}

void sub_0804C454() {
    sub_0801AFE4();
}

u32 sub_0804C45C() {
    return 1;
}

void sub_0804C460() {
    sub_0801AFE4();
}

u32 sub_0804C468() {
    return 1;
}

void sub_0804C46C() {
    sub_0801AFE4();
}

u32 sub_0804C474() {
    return 1;
}

void sub_0804C478() {
    sub_0801AFE4();
}

u32 sub_0804C480() {
    return 1;
}

void sub_0804C484() {
    sub_0801AFE4();
}

u32 sub_0804C48C() {
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

void sub_0804C490(void) {
    u32 uVar1;

    // jabber nut
    if (!GetInventoryValue(0x5b))
        LoadRoomEntityList(&gUnk_080DAB44);
    else
        LoadRoomEntityList(&gUnk_080DAB64);

    if (!CheckGlobalFlag(0x54))
        goto a;

    if (sub_08060354()) {
        SetRoomFlag(0);
        if (!CheckGlobalFlag(0x3b))
            uVar1 = 0x3200;
        else if (!CheckGlobalFlag(0x3c))
            uVar1 = 0x4600;
        else
            uVar1 = 0x4880;
    } else {
    a:
        if (CheckGlobalFlag(0x3d))
            uVar1 = 0x4900;
        else if (CheckGlobalFlag(0x3c))
            uVar1 = 0x4a00;
        else if (CheckGlobalFlag(0x3b))
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

u32 sub_0804C5DC() {
    return 1;
}

extern EntityData gUnk_080DAEE8;

void sub_0804C5E0(void) {

    if (CheckGlobalFlag(0x56))
        LoadRoomEntityList(&gUnk_080DAEE8);

    sub_0801AFE4();
}

u32 sub_0804C5FC() {
    return 1;
}

extern EntityData gUnk_080DAF80;

void sub_0804C600(void) {

    if (CheckGlobalFlag(0x56))
        LoadRoomEntityList(&gUnk_080DAF80);

    sub_0801AFE4();
}

u32 sub_0804C61C() {
    return 1;
}

extern EntityData gUnk_080DB018;

void sub_0804C620(void) {

    if (CheckGlobalFlag(0x56))
        LoadRoomEntityList(&gUnk_080DB018);

    sub_0801AFE4();
}

u32 sub_0804C63C() {
    return 1;
}

void sub_0804C640() {
    sub_0801AFE4();
}

u32 sub_0804C648() {
    return 1;
}

void sub_0804C64C() {
    sub_0801AFE4();
}

u32 sub_0804C654() {
    return 1;
}

void sub_0804C658() {
    sub_0801AFE4();
}

u32 sub_0804C660() {
    return 1;
}

extern EntityData gUnk_080DB238;

void sub_0804C664(void) {

    if (gUnk_02002A40.field_0x8 > 8)
        LoadRoomEntityList(&gUnk_080DB238);

    sub_0801AFE4();
}

u32 sub_0804C684() {
    return 1;
}

void sub_0804C688() {
    sub_0801AFE4();
}

u32 sub_0804C690() {
    return 1;
}

void sub_0804C694() {
    sub_0801AFE4();
}

u32 sub_0804C69C() {
    return 1;
}

void sub_0804C6A0() {
    sub_0801AFE4();
}

u32 sub_0804C6A8() {
    return 1;
}

void sub_0804C6AC() {
    sub_0801AFE4();
}

u32 sub_0804C6B4() {
    return 1;
}

extern EntityData gUnk_080DB4D0;
extern EntityData gUnk_080DB4A0;

void sub_0804C6B8(void) {

    // flippers and history of masks book
    if (!GetInventoryValue(0x46) && !GetInventoryValue(0x3b) && CheckLocalFlag(0x71))
        LoadRoomEntityList(&gUnk_080DB4D0);
    else
        LoadRoomEntityList(&gUnk_080DB4A0);

    sub_0801AFE4();
}

u32 sub_0804C6F4() {
    return 1;
}

void sub_0804C6F8() {
    sub_0801AFE4();
}

u32 sub_0804C700() {
    return 1;
}

void sub_0804C704() {
    sub_0801AFE4();
}

u32 sub_0804C70C() {
    return 1;
}

void sub_0804C710() {
    sub_0801AFE4();
}

u32 sub_0804C718() {
    return 1;
}

void sub_0804C71C() {
    sub_0801AFE4();
}

u32 sub_0804C724() {
    return 1;
}

void sub_0804C728() {
    sub_0801AFE4();
}

extern u32 gUnk_080DB910;

u32 sub_0804C730(void) {
    if (CheckGlobalFlag(0x29) && !CheckLocalFlag(0x73)) {
        gRoomVars.field_0x70 = (u32)&gUnk_080DB910;
    }
    return 1;
}

extern EntityData gUnk_080DB8F0;
extern EntityData gUnk_080DB820;

void sub_0804C758(void) {

    LoadRoomEntityList(&gUnk_080DB8F0);
    // flippers
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(0x29)) {
        LoadRoomEntityList(&gUnk_080DB820);
    }
    sub_0801AFE4();
}

u32 sub_0804C788() {
    return 1;
}

extern EntityData gUnk_080DBA08;

void sub_0804C78C(void) {

    // flippers
    if (GetInventoryValue(0x46) || !CheckLocalFlag(0x73)) {
        LoadRoomEntityList(&gUnk_080DBA08);
    }
    sub_0801AFE4();
}

u32 sub_0804C7B4() {
    return 1;
}

extern EntityData gUnk_080DBB50;
extern EntityData gUnk_080DBB70;
extern EntityData gUnk_080DBB10;
extern EntityData gUnk_080DBAD0;
extern EntityData gUnk_080DBB90;

void sub_0804C7B8(void) {
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

u32 sub_0804C830() {
    return 1;
}

void nullsub_210() {
}

u32 sub_0804C838() {
    return 1;
}

void nullsub_211() {
}

u32 sub_0804C840() {
    return 1;
}

void nullsub_212() {
}

u32 sub_0804C848() {
    return 1;
}

void nullsub_213() {
}

u32 sub_0804C850() {
    return 1;
}

void nullsub_214() {
}

u32 sub_0804C858() {
    return 1;
}

void nullsub_215() {
}

u32 sub_0804C860() {
    return 1;
}

void nullsub_216() {
}

u32 sub_0804C868() {
    return 1;
}

void nullsub_217() {
}

u32 sub_0804C870() {
    return 1;
}

void nullsub_218() {
}

u32 sub_0804C878() {
    return 1;
}

void nullsub_219() {
}

u32 sub_0804C880() {
    return 1;
}

extern EntityData gUnk_080DC390;
extern EntityData gUnk_080DC3F0;
extern EntityData gUnk_080DC430;
extern EntityData gUnk_080DC530;
extern EntityData gUnk_080DC470;
extern EntityData gUnk_080DC4C0;

void sub_0804C884(void) {

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

u32 sub_0804C910() {
    return 1;
}

void nullsub_220() {
}

typedef struct {
    u8 LO[0x4000];
    u8 HI[0x4000];
} struct_086D4460;

extern struct_086D4460 gUnk_086D4460;

void sub_0804C918(void) {
    LoadAssetAsync(&gUnk_086D4460.LO, 0x6000000, 0x4000);
    LoadAssetAsync(&gUnk_086D4460.HI, 0x6008000, 0x4000);
    LoadPalettesByPaletteGroupIndex(0x19);
}

u32 sub_0804C948() {
    return 1;
}

void nullsub_221() {
}

u32 sub_0804C950() {
    return 1;
}

void nullsub_222() {
}

u32 sub_0804C958() {
    return 1;
}

void nullsub_223() {
}

u32 sub_0804C960() {
    return 1;
}

void nullsub_224() {
}

u32 sub_0804C968() {
    return 1;
}

void nullsub_225() {
}

u32 sub_0804C970() {
    return 1;
}

void nullsub_226() {
}

u32 sub_0804C978() {
    return 1;
}

void nullsub_227() {
}

u32 sub_0804C980() {
    return 1;
}

void nullsub_228() {
}

u32 sub_0804C988() {
    return 1;
}

void nullsub_229() {
}

u32 sub_0804C990() {
    return 1;
}

void nullsub_230() {
}

u32 sub_0804C998() {
    return 1;
}

extern EntityData gUnk_080DCB10;

void sub_0804C99C(void) {

    // bow
    if (!GetInventoryValue(0x9)) {
        LoadRoomEntityList(&gUnk_080DCB10);
    }
}

u32 sub_0804C9B4() {
    return 1;
}

void nullsub_231() {
}

u32 sub_0804C9BC() {
    return 1;
}

void nullsub_232() {
}

u32 sub_0804C9C4() {
    return 1;
}

void nullsub_233() {
}

u32 sub_0804C9CC() {
    return 1;
}

void nullsub_234() {
}

u32 sub_0804C9D4() {
    return 1;
}

void nullsub_235() {
}

u32 sub_0804C9DC() {
    return 1;
}

void nullsub_236() {
}

u32 sub_0804C9E4() {
    return 1;
}

void nullsub_237() {
}

u32 sub_0804C9EC() {
    return 1;
}

void nullsub_238() {
}

u32 sub_0804C9F4() {
    return 1;
}

void nullsub_239() {
}

u32 sub_0804C9FC() {
    return 1;
}

void nullsub_240() {
}

u32 sub_0804CA04() {
    return 1;
}

void nullsub_241() {
}

u32 sub_0804CA0C() {
    return 1;
}

extern EntityData gUnk_080DD214;
extern EntityData gUnk_080DD274;
extern EntityData gUnk_080DD294;

void sub_0804CA10(void) {

    if (!CheckGlobalFlag(0x56)) {
        LoadRoomEntityList(&gUnk_080DD214);
    }
    if (!CheckLocalFlag(0x7f)) {
        LoadRoomEntityList(&gUnk_080DD274);
    } else {
        LoadRoomEntityList(&gUnk_080DD294);
    }
    SetLocalFlag(0x8e);
}

u32 sub_0804CA50() {
    return 1;
}

extern EntityData gUnk_080DD364;

void sub_0804CA54(void) {
    if (!(gUnk_02002A40.windcrests & 0x4000000)) {
        LoadRoomEntityList(&gUnk_080DD364);
    }
}

void sub_0804CA74(void) {
    if (!(gUnk_02002A40.windcrests & 0x4000000)) {
        LoadRoomEntityList(&gUnk_080DD364);
    }
}

u32 sub_0804CA94() {
    return 1;
}

void nullsub_242() {
}

u32 sub_0804CA9C() {
    return 1;
}

extern EntityData gUnk_080DD7E0;
extern EntityData gUnk_080DD840;

void sub_0804CAA0(void) {

    if (CheckGlobalFlag(0x24)) {
        sub_0809F814(0x6de);
    }
    if (CheckLocalFlag(0xf3)) {
        sub_0809F814(0xe0);
    } else {
        LoadRoomEntityList(&gUnk_080DD7E0);
    }
    if (CheckLocalFlag(0xf5)) {
        sub_0809F814(0xba3);
    } else {
        LoadRoomEntityList(&gUnk_080DD840);
    }
}

u32 sub_0804CAF4() {
    return 1;
}

void sub_0804CAF8() {
    sub_080300E8();
    SetLocalFlag(0x24);
}

u32 sub_0804CB08() {
    return 1;
}

void nullsub_37() {
}

u32 sub_0804CB10() {
    return 1;
}

extern EntityData gUnk_080DDE88;

void sub_0804CB14(void) {

    if (CheckKinstoneFused(0x41)) {
        LoadRoomEntityList(&gUnk_080DDE88);
    }
}

void sub_0804CB2C(void) {

    if (CheckLocalFlagByOffset(0x100, 0x27)) {
        SetDirtTile(0x85);
    }
}

u32 sub_0804CB44() {
    return 1;
}

void nullsub_38() {
}

u32 sub_0804CB4C() {
    return 1;
}

extern EntityData gUnk_080DE008;

void sub_0804CB50(void) {

    sub_080300E8();
    if (CheckGlobalFlag(4) && !CheckLocalFlag(3)) {
        LoadRoomEntityList(&gUnk_080DE008);
    }
}

u32 sub_0804CB78() {
    return 1;
}

extern EntityData gUnk_080DE1E0;
extern EntityData gUnk_080DE200;

void sub_0804CB7C(void) {

    sub_080300E8();
    if (!CheckLocalFlag(0x30)) {
        LoadRoomEntityList(&gUnk_080DE1E0);
    }
    if (!CheckLocalFlag(0x31)) {
        LoadRoomEntityList(&gUnk_080DE200);
    }
}

u32 sub_0804CBAC() {
    return 1;
}

extern EntityData gUnk_080DE4C8;

void sub_0804CBB0(void) {

    if ((gLinkEntity.y.HALF.HI - gRoomControls.roomOriginY) < (gRoomControls.filler2[4] >> 1)) {
        if (!CheckLocalFlag(0x17)) {
            LoadRoomEntityList(&gUnk_080DE4C8);
        }
    }
}

u32 sub_0804CBE4() {
    return 1;
}

void nullsub_243() {
}

u32 sub_0804CBEC() {
    return 1;
}

extern EntityData gUnk_080DE814;
extern EntityData gUnk_080DE834;

void sub_0804CBF0(void) {

    if (!CheckLocalFlag(0x4b)) {
        LoadRoomEntityList(&gUnk_080DE814);
    } else {
        if (!CheckLocalFlag(0x4c)) {
            LoadRoomEntityList(&gUnk_080DE834);
            SetTileType(0x79, 0x285, 1);
        } else {
            SetTileType(0x7a, 0x285, 1);
            if (!CheckLocalFlag(0x24)) {
                SetTileType(0x73, 0x205, 1);
            }
        }
    }
}

u32 sub_0804CC54() {
    return 1;
}

void nullsub_244() {
}

u32 sub_0804CC5C() {
    return 1;
}

void nullsub_245() {
}

u32 sub_0804CC64() {
    return 1;
}

void nullsub_246() {
}

u32 sub_0804CC6C() {
    return 1;
}

void sub_0804CC70(void) {
    if (gUnk_02002A40.filler[7] == 0) {
        goto a;
    }
    if (gUnk_02002A40.filler[7] != 2) {
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

u32 sub_0804CCEC() {
    return 1;
}

void nullsub_247() {
}

u32 sub_0804CCF4() {
    return 1;
}

void nullsub_248() {
}

u32 sub_0804CCFC() {
    return 1;
}
void nullsub_249() {
}

u32 sub_0804CD04() {
    return 1;
}

void nullsub_250() {
}

u32 sub_0804CD0C() {
    return 1;
}

void nullsub_251() {
}

u32 sub_0804CD14() {
    return 1;
}

void nullsub_252() {
}

u32 sub_0804CD1C() {
    return 1;
}

void nullsub_253() {
}

u32 sub_0804CD249() {
    return 1;
}

void nullsub_254() {
}

u32 sub_0804CD2C90() {
    return 1;
}

void nullsub_255() {
}

u32 sub_0804CD349() {
    return 1;
}

void nullsub_256() {
}

u32 sub_0804CD3C() {
    return 1;
}

void nullsub_257() {
}

u32 sub_0804CD44() {
    return 1;
}

extern EntityData gUnk_080DF94C;

extern u8 gUnk_02000070;
extern u8 gUnk_03000FD0;
extern u32 gUnk_0200B644;

void sub_0804CD48(void) {

    if (!CheckLocalFlag(0x48)) {
        SetLocalFlag(0x48);
        MenuFadeIn(5, 0);
        gUnk_02000070 = 0;
        gUnk_03000FD0 = 0;
        gUnk_0200B644 = 0;
        *(u16*)0x5000000 = 0x7fff;
        sub_0801DA90(1);
    }
    if (CheckGlobalFlag(2)) {
        LoadRoomEntityList(&gUnk_080DF94C);
    } else {
        PlaySFX(0x80100000);
        gArea.musicIndex = gArea.pMusicIndex;
    }
}

u32 sub_0804CDC8() {
    return 1;
}

void nullsub_258() {
}

u32 sub_0804CDD0() {
    return 1;
}

void sub_0804CDD4(void) {
    sub_08058D34();
    gArea.areaMetadata |= 0x40;
    gUnk_03001000.transition = 5;
}

u32 sub_0804CDF4() {
    return 1;
}

extern EntityData gUnk_080DFB78;

void sub_0804CDF8(void) {
    if (CheckGlobalFlag(2) && !CheckLocalFlagByOffset(0x100, 1)) {
        LoadRoomEntityList(&gUnk_080DFB78);
    }
}