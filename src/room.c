#include "global.h"
#include "entity.h"
#include "area.h"
#include "room.h"
#include "functions.h"
#include "flags.h"
#include "npc.h"
#include "player.h"
#include "screen.h"
#include "main.h"
#include "structures.h"

void sub_0804B3C4(void* arg0) {
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

    if (gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY > 0x40)
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

    if ((u16)gScreenTransition.playerStartPos.HALF.y > 0x40)
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
    if (gUnk_02002A40.unk8 > 4) {
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
    if (gUnk_02002A40.unk8 > 7) {
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
        gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x50;
        gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
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
        gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x50;
        gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
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
        gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x60;
        gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
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

    if (gUnk_02002A40.unk8 < 4)
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
    if (gUnk_02002A40.unk8 < 8) {
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

    if (gUnk_02002A40.unk8 == 6)
        LoadRoomEntityList(&gUnk_080D7140);

    if (gUnk_02002A40.unk8 == 7)
        LoadRoomEntityList(&gUnk_080D7170);

    if ((gUnk_02002A40.unk8 < 8) || (LoadRoomEntityList(&gUnk_080D71A0), gUnk_02002A40.unk8 < 8))
        LoadRoomEntityList(&gUnk_080D71D0);
    else
        LoadRoomEntityList(&gUnk_080D71F0);
}

extern u32 gUnk_080D7348;

u32 sub_0804BA9C(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080D7348;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080D7328;

void sub_0804BAC0(void) {
    if (!CheckGlobalFlag(LV2_CLEAR)) {
        LoadRoomEntityList(&gUnk_080D7328);
    }
    if (CheckGlobalFlag(CASTLE_BGM)) {
        gArea.pMusicIndex = 0x1b;
    } else if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

extern u32 gUnk_080D7410;

u32 sub_0804BB18(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080D7410;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080D73B0;
extern EntityData gUnk_080D73E0;

void sub_0804BB3C(void) {
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
}

u32 sub_0804BB9C() {
    return 1;
}

extern EntityData gUnk_080D74C8;
extern EntityData gUnk_080D7588;
extern EntityData gUnk_080D75D8;
extern EntityData gUnk_080D7618;

void sub_0804BBA0(void) {
    if (CheckGlobalFlag(CASTLE_BGM)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }

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
        gScreenTransition.field_0xf = 5;
        ClearGlobalFlag(ZELDA_CHASE);
    }
    return 1;
}

extern u32 gUnk_08009E88;

void sub_0804BC70(void) {
    if (!CheckLocalFlag(0x9f)) {
        DoFade(5, 0x100);
        gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0xb0;
        gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x40;
        sub_080751E8(0, 6, &gUnk_08009E88);
    }
    if (!CheckGlobalFlag(TABIDACHI)) {
        sub_08052878();
    } else {
        if (CheckGlobalFlag(CASTLE_BGM)) {
            gArea.pMusicIndex = 0x1b;
        }
    }
}

extern ScreenTransitionData gUnk_0813AB80;

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

    if (CheckGlobalFlag(MAZE_CLEAR))
        if (gScreenTransition.playerStartPos.WORD == 0x2780078) // todo: wtf
            PlaySFX(0x72);

    ClearGlobalFlag(MAZE_CLEAR);
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

    if (CheckGlobalFlag(MIZUKAKI_START) && !CheckGlobalFlag(MIZUKAKI_HARIFALL))
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

    SetGlobalFlag(DASHBOOTS);

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

u32 sub_0804C5DC() {
    return 1;
}

extern EntityData gUnk_080DAEE8;

void sub_0804C5E0(void) {

    if (CheckGlobalFlag(WHITE_SWORD_END))
        LoadRoomEntityList(&gUnk_080DAEE8);

    sub_0801AFE4();
}

u32 sub_0804C5FC() {
    return 1;
}

extern EntityData gUnk_080DAF80;

void sub_0804C600(void) {

    if (CheckGlobalFlag(WHITE_SWORD_END))
        LoadRoomEntityList(&gUnk_080DAF80);

    sub_0801AFE4();
}

u32 sub_0804C61C() {
    return 1;
}

extern EntityData gUnk_080DB018;

void sub_0804C620(void) {

    if (CheckGlobalFlag(WHITE_SWORD_END))
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

    if (gUnk_02002A40.unk8 > 8)
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
    if (CheckGlobalFlag(MIZUKAKI_START) && !CheckLocalFlag(0x73)) {
        gRoomVars.field_0x70 = &gUnk_080DB910;
    }
    return 1;
}

extern EntityData gUnk_080DB8F0;
extern EntityData gUnk_080DB820;

void sub_0804C758(void) {

    LoadRoomEntityList(&gUnk_080DB8F0);
    // flippers
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(MIZUKAKI_START)) {
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
    LoadPaletteGroup(0x19);
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

    if (!CheckGlobalFlag(WHITE_SWORD_END)) {
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

    if (CheckGlobalFlag(KUMOTATSUMAKI)) {
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
    if (CheckGlobalFlag(LV3_CLEAR) && !CheckLocalFlag(3)) {
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

    if ((gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY) < (gRoomControls.height >> 1)) {
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
    if (gUnk_02002A40.unk7 == 0) {
        goto a;
    }
    if (gUnk_02002A40.unk7 != 2) {
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
extern u32 gUsedPalettes;

void sub_0804CD48(void) {

    if (!CheckLocalFlag(0x48)) {
        SetLocalFlag(0x48);
        MenuFadeIn(5, 0);
        gUnk_02000070 = 0;
        gFadeControl.active = 0;
        gUsedPalettes = 0;
        *(u16*)0x5000000 = 0x7fff;
        sub_0801DA90(1);
    }
    if (CheckGlobalFlag(LV1_CLEAR)) {
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
    if (CheckGlobalFlag(LV1_CLEAR) && !CheckLocalFlagByOffset(0x100, 1)) {
        LoadRoomEntityList(&gUnk_080DFB78);
    }
}

u32 sub_0804CE20() {
    return 1;
}

void nullsub_259() {
}

u32 sub_0804CE28() {
    return 1;
}

void nullsub_260() {
}

u32 sub_0804CE30() {
    return 1;
}

void nullsub_261() {
}

u32 sub_0804CE38() {
    return 1;
}

void nullsub_262() {
}

u32 sub_0804CE40() {
    return 1;
}

void nullsub_263() {
}

u32 sub_0804CE48() {
    return 1;
}

void nullsub_264() {
}

u32 sub_0804CE50() {
    return 1;
}

void nullsub_265() {
}

u32 sub_0804CE58() {
    return 1;
}

void nullsub_266() {
}

u32 sub_0804CE60() {
    return 1;
}

void nullsub_267() {
}

u32 sub_0804CE68() {
    return 1;
}

void nullsub_268() {
}

u32 sub_0804CE70() {
    return 1;
}

void nullsub_269() {
}

u32 sub_0804CE78() {
    return 1;
}

void nullsub_270() {
}

extern u32 gUnk_080E103C;

u32 sub_0804CE80(void) {
    if (CheckGlobalFlag(LV2_CLEAR)) {
        gRoomVars.field_0x70 = &gUnk_080E103C;
    }
    return 1;
}

void nullsub_271() {
}

u32 sub_0804CEA4() {
    return 1;
}

void nullsub_272() {
}

u32 sub_0804CEAC() {
    return 1;
}

void nullsub_273() {
}

u32 sub_0804CEB4() {
    return 1;
}

void nullsub_274() {
}

u32 sub_0804CEBC() {
    return 1;
}

void nullsub_275() {
}

u32 sub_0804CEC4() {
    return 1;
}

void nullsub_276() {
}

u32 sub_0804CECC() {
    return 1;
}

void nullsub_277() {
}

u32 sub_0804CED4() {
    return 1;
}

extern EntityData gUnk_080E1814;

extern u32 gUnk_0200B650;

void sub_0804CED8(void) {

    if (CheckGlobalFlag(LV2_CLEAR)) {
        gUnk_0200B650 = 0;
        gScreen.lcd.displayControl &= 0xfdff;
        sub_0807AABC(&gPlayerEntity);
        LoadRoomEntityList(&gUnk_080E1814);
    } else {
        PlaySFX(0x80100000);
        gArea.musicIndex = gArea.pMusicIndex;
    }
}

u32 sub_0804CF38() {
    return 1;
}

void nullsub_278() {
}

u32 sub_0804CF40() {
    return 1;
}

void sub_0804CF44(void) {
    gScreenTransition.field_0x38 = 0;
    gScreenTransition.field_0x39 = 0x5a;
}

u32 sub_0804CF5C() {
    return 1;
}

void sub_0804CF60() {
    sub_080300E8();
}

u32 sub_0804CF68() {
    return 1;
}

void nullsub_39() {
}

u32 sub_0804CF70() {
    return 1;
}

void sub_0804CF74() {
    sub_080300E8();
}

u32 sub_0804CF7C() {
    return 1;
}

void nullsub_40() {
}

u32 sub_0804CF84() {
    return 1;
}

void nullsub_41() {
}

u32 sub_0804CF8C() {
    return 1;
}

void nullsub_42() {
}

u32 sub_0804CF94() {
    return 1;
}

void nullsub_43() {
}

u32 sub_0804CF9C() {
    return 1;
}

void nullsub_44() {
}

u32 sub_0804CFA4() {
    return 1;
}

void nullsub_45() {
}

u32 sub_0804CFAC() {
    return 1;
}

void sub_0804CFB0(void) {

    if (!CheckFlags(0x31)) {
        if (gScreenTransition.field_0x38 == 0) {
            PlaySFX(0x80100000);
        } else {
            if (gScreenTransition.field_0x39 == 0) {
                PlaySFX(0x80050000);
                sub_08078A90(3);
            }
        }
        gArea.musicIndex = gArea.pMusicIndex;
    }
}

u32 sub_0804D008() {
    return 1;
}

void nullsub_279() {
}

u32 sub_0804D010() {
    return 1;
}

void nullsub_280() {
}

u32 sub_0804D018() {
    return 1;
}

void nullsub_281() {
}

u32 sub_0804D020() {
    return 1;
}

void nullsub_282() {
}

u32 sub_0804D028() {
    return 1;
}

void nullsub_283() {
}

u32 sub_0804D030() {
    return 1;
}

void nullsub_284() {
}

u32 sub_0804D038() {
    return 1;
}

void nullsub_285() {
}

u32 sub_0804D040() {
    return 1;
}

void nullsub_286() {
}

u32 sub_0804D048() {
    return 1;
}

void nullsub_287() {
}

u32 sub_0804D050() {
    return 1;
}

void nullsub_288() {
}

u32 sub_0804D058() {
    return 1;
}

void nullsub_289() {
}

u32 sub_0804D060() {
    return 1;
}

void nullsub_290() {
}

u32 sub_0804D068() {
    return 1;
}

void nullsub_291() {
}

u32 sub_0804D070() {
    return 1;
}

extern EntityData gUnk_080E3850;

void sub_0804D074(void) {

    SetGlobalFlag(LV3_CLEAR);
    sub_080530C8();
    sub_0805B4D0(3);
    // wind ocarina
    if (!GetInventoryValue(0x17) && CheckLocalFlag(0x45)) {
        LoadRoomEntityList(&gUnk_080E3850);
    }
}

u32 sub_0804D0A8() {
    return 1;
}

void sub_0804D0AC() {
    sub_0804D0B4();
}

void sub_0804D0B4(void) {

    if (!CheckLocalFlag(0x29)) {
        SetLocalFlag(0x29);
        SetLocalFlag(0x4b);
        SetLocalFlag(0x4e);
    }
}

u32 sub_0804D0D4() {
    return 1;
}

void nullsub_46() {
}

u32 sub_0804D0DC() {
    return 1;
}

void nullsub_47() {
}

u32 sub_0804D0E4() {
    return 1;
}

void nullsub_48() {
}

u32 sub_0804D0EC() {
    return 1;
}

void nullsub_49() {
}

u32 sub_0804D0F4() {
    return 1;
}

void nullsub_50() {
}

u32 sub_0804D0FC() {
    return 1;
}

void nullsub_51() {
}

u32 sub_0804D104() {
    return 1;
}

void nullsub_52() {
}

u32 sub_0804D10C() {
    return 1;
}

void nullsub_53() {
}

u32 sub_0804D114() {
    return 1;
}

void nullsub_54() {
}

u32 sub_0804D11C() {
    return 1;
}

void nullsub_55() {
}

u32 sub_0804D124() {
    return 1;
}

void nullsub_56() {
}

u32 sub_0804D12C() {
    return 1;
}

void nullsub_57() {
}

u32 sub_0804D134() {
    return 1;
}

void nullsub_58() {
}

u32 sub_0804D13C() {
    return 1;
}

extern EntityData gUnk_080E49F4;

void sub_0804D140(void) {

    sub_0805308C(0x100);
    if (CheckGlobalFlag(LV4_CLEAR)) {
        LoadRoomEntityList(&gUnk_080E49F4);
    } else {
        PlaySFX(0x80100000);
        gArea.musicIndex = gArea.pMusicIndex;
    }
}

u32 sub_0804D180() {
    return 1;
}

void nullsub_292() {
}

u32 sub_0804D188() {
    return 1;
}

extern EntityData gUnk_080E4BD8;

void sub_0804D18C(void) {
    if (!CheckLocalFlag(0x48)) {
        ClearLocalFlag(0x46);
        LoadRoomEntityList(&gUnk_080E4BD8);
    }
}

u32 sub_0804D1AC() {
    return 1;
}

extern EntityData gUnk_080E4CF8;
extern EntityData gUnk_080E4CD8;

void sub_0804D1B0(void) {

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

u32 sub_0804D1E8() {
    return 1;
}

void nullsub_293() {
}

u32 sub_0804D1F0() {
    return 1;
}

void nullsub_294() {
}

u32 sub_0804D1F8() {
    return 1;
}

void nullsub_295() {
}

u32 sub_0804D200() {
    return 1;
}

void nullsub_296() {
}

u32 sub_0804D208() {
    return 1;
}

void nullsub_297() {
}

u32 sub_0804D210() {
    return 1;
}

void nullsub_298() {
}

u32 sub_0804D218() {
    return 1;
}

void nullsub_299() {
}

u32 sub_0804D220() {
    return 1;
}

void nullsub_300() {
}

u32 sub_0804D228() {
    return 1;
}

extern EntityData gUnk_080E5660;
extern EntityData gUnk_080E5680;

void sub_0804D22C(void) {

    if (!CheckLocalFlag(0x59)) {
        LoadRoomEntityList(&gUnk_080E5660);
    } else {
        LoadRoomEntityList(&gUnk_080E5680);
    }
}

u32 sub_0804D250() {
    return 1;
}

void nullsub_301() {
}

u32 sub_0804D258() {
    return 1;
}

void nullsub_302() {
}

u32 sub_0804D260() {
    return 1;
}

void nullsub_303() {
}

u32 sub_0804D268() {
    return 1;
}

void nullsub_304() {
}

u32 sub_0804D270() {
    return 1;
}

void nullsub_305() {
}

u32 sub_0804D278() {
    return 1;
}

extern EntityData gUnk_080E5E3C;
extern EntityData gUnk_080E5E5C;

void sub_0804D27C(void) {
    sub_0804D0B4();
    if (!CheckLocalFlag(0x4b)) {
        LoadRoomEntityList(&gUnk_080E5E3C);
    } else {
        LoadRoomEntityList(&gUnk_080E5E5C);
    }
}

u32 sub_0804D2A4() {
    return 1;
}

void nullsub_306() {
}

u32 sub_0804D2AC() {
    return 1;
}

void nullsub_307() {
}

u32 sub_0804D2B4() {
    return 1;
}

void nullsub_308() {
}

u32 sub_0804D2BC() {
    return 1;
}

void nullsub_309() {
}

u32 sub_0804D2C4() {
    return 1;
}

void nullsub_310() {
}

u32 sub_0804D2CC() {
    return 1;
}

void nullsub_311() {
}

u32 sub_0804D2D4() {
    return 1;
}

void nullsub_312() {
}

u32 sub_0804D2DC() {
    return 1;
}

void nullsub_313() {
}

u32 sub_0804D2E4() {
    return 1;
}

extern EntityData gUnk_080E693C;

void sub_0804D2E8(void) {

    if (!CheckLocalFlag(0x32)) {
        LoadRoomEntityList(&gUnk_080E693C);
    }
}

u32 sub_0804D300() {
    return 1;
}

void nullsub_314() {
}

u32 sub_0804D308() {
    return 1;
}

void nullsub_315() {
}

u32 sub_0804D310() {
    return 1;
}

void nullsub_316() {
}

u32 sub_0804D318() {
    return 1;
}

void nullsub_317() {
}

u32 sub_0804D320() {
    return 1;
}

void nullsub_318() {
}

u32 sub_0804D328() {
    return 1;
}

void nullsub_319() {
}

u32 sub_0804D330() {
    return 1;
}

void sub_0804D334() {
    sub_08054570();
}

u32 sub_0804D33C() {
    return 1;
}

extern EntityData gUnk_080E718C;
extern EntityData gUnk_080E71AC;

void sub_0804D340(void) {

    SetTileType(0x312, 0x108, 1);
    sub_08054570();
    if (!CheckLocalFlag(0xc4)) {
        LoadRoomEntityList(&gUnk_080E718C);
    }
    if (!CheckLocalFlag(0xc5)) {
        LoadRoomEntityList(&gUnk_080E71AC);
    }
}

u32 sub_0804D380() {
    return 1;
}

extern EntityData gUnk_080E7314;
extern EntityData gUnk_080E72C4;
extern EntityData gUnk_080E72E4;

void sub_0804D384(void) {

    sub_0805AF60(0);
    if (CheckGlobalFlag(LV5_CLEAR)) {
        LoadRoomEntityList(&gUnk_080E7314);
    }
    if (!CheckLocalFlag(0x7b)) {
        LoadRoomEntityList(&gUnk_080E72C4);
    } else {
        SetGlobalFlag(LV5_CLEAR);
        // wind element
        if (!GetInventoryValue(0x43)) {
            sub_08078A90(3);
            LoadRoomEntityList(&gUnk_080E72E4);
            gArea.musicIndex = gArea.pMusicIndex;
            PlaySFX(0x80100000);
        }
    }
}

u32 sub_0804D3F8() {
    return 1;
}

void sub_0804D3FC() {
    sub_0805AF60(0);
}

u32 sub_0804D408() {
    return 1;
}

void sub_0804D40C() {
    sub_0805AF60(0);
}

u32 sub_0804D418() {
    return 1;
}

void sub_0804D41C() {
    sub_0805AF60(0);
}

u32 sub_0804D428() {
    return 1;
}

void sub_0804D42C() {
    sub_0805AF60(0);
}

u32 sub_0804D438() {
    return 1;
}

void sub_0804D43C() {
    sub_0805AF60(0);
}

u32 sub_0804D448() {
    return 1;
}

void sub_0804D44C() {
    sub_0805AF60(0);
}

u32 sub_0804D458() {
    return 1;
}

void sub_0804D45C() {
    sub_0805AF60(0);
}

u32 sub_0804D468() {
    return 1;
}

void sub_0804D46C() {
    sub_0805AF60(0);
}

u32 sub_0804D478() {
    return 1;
}

void sub_0804D47C() {
    sub_0805AF60(0);
}

u32 sub_0804D488() {
    return 1;
}

void sub_0804D48C() {
    sub_0805AF60(0);
}

u32 sub_0804D498() {
    return 1;
}

void sub_0804D49C() {
    sub_0805AF60(0);
}

u32 sub_0804D4A8() {
    return 1;
}

void sub_0804D4AC() {
    sub_0805AF60(0);
}

u32 sub_0804D4B8() {
    return 1;
}

void sub_0804D4BC() {
    sub_0805AF60(0);
}

u32 sub_0804D4C8() {
    return 1;
}

void sub_0804D4CC() {
    sub_0805AF60(0);
}

u32 sub_0804D4D8() {
    return 1;
}

void sub_0804D4DC() {
    sub_0805AF60(0);
}

u32 sub_0804D4E8() {
    return 1;
}

void sub_0804D4EC() {
    sub_0805AF60(0);
}

u32 sub_0804D4F8() {
    return 1;
}

void sub_0804D4FC() {
    sub_0805AF60(0);
}

u32 sub_0804D508() {
    return 1;
}

void sub_0804D50C() {
    sub_0805AF60(0);
}

u32 sub_0804D518() {
    return 1;
}

void sub_0804D51C() {
    sub_0805AF60(0);
}

u32 sub_0804D528() {
    return 1;
}

void sub_0804D52C() {
    sub_0805AF60(0);
}

u32 sub_0804D538() {
    return 1;
}

void nullsub_59() {
}

u32 sub_0804D540() {
    return 1;
}

void sub_0804D544() {
    sub_0805AF60(0);
}

u32 sub_0804D550() {
    return 1;
}

void sub_0804D554() {
    sub_0805AF60(0);
}

u32 sub_0804D560() {
    return 1;
}

void sub_0804D564() {
    sub_0805AF60(0);
}

u32 sub_0804D570() {
    return 1;
}

void sub_0804D574() {
    sub_0805AF60(0);
}

u32 sub_0804D580() {
    return 1;
}

void sub_0804D584() {
    sub_0805AF60(0);
}

u32 sub_0804D590() {
    return 1;
}

void nullsub_60() {
}

u32 sub_0804D598() {
    return 1;
}

void nullsub_61() {
}

u32 sub_0804D5A0() {
    return 1;
}

void nullsub_62() {
}

u32 sub_0804D5A8() {
    return 1;
}

void nullsub_63() {
}

u32 sub_0804D5B0() {
    return 1;
}

void nullsub_64() {
}

u32 sub_0804D5B8() {
    return 1;
}

void nullsub_65() {
}

u32 sub_0804D5C0() {
    return 1;
}

void sub_0804D5C4() {
    sub_0805AF60(0);
}

u32 sub_0804D5D0() {
    return 1;
}

void sub_0804D5D4() {
    sub_0805AF60(0);
}

u32 sub_0804D5E0() {
    return 1;
}

void sub_0804D5E4() {
    sub_0805AF60(0);
}

u32 sub_0804D5F0() {
    return 1;
}

void sub_0804D5F4() {
    sub_0805AF60(0);
}

u32 sub_0804D600() {
    return 1;
}

void nullsub_66() {
}

u32 sub_0804D608() {
    return 1;
}

void nullsub_67() {
}

u32 sub_0804D610() {
    return 1;
}

void nullsub_68() {
}

u32 sub_0804D618() {
    return 1;
}

void nullsub_69() {
}

u32 sub_0804D620() {
    return 1;
}

void nullsub_70() {
}

u32 sub_0804D628() {
    return 1;
}

void nullsub_71() {
}

u32 sub_0804D630() {
    return 1;
}

void sub_0804D634() {
    sub_0805AF60(0);
}

u32 sub_0804D640() {
    return 1;
}

extern EntityData gUnk_080EA09C;

void sub_0804D644(void) {
    sub_0805AF60(0);
    if (!CheckLocalFlag(0x70)) {
        LoadRoomEntityList(&gUnk_080EA09C);
    }
}

u32 sub_0804D664() {
    return 1;
}

void sub_0804D668() {
    sub_0805AF60(0);
}

u32 sub_0804D674() {
    return 1;
}

void sub_0804D678() {
    sub_0805AF60(0);
}

u32 sub_0804D684() {
    return 1;
}

void sub_0804D688() {
    sub_0805AF60(0);
}

u32 sub_0804D694() {
    return 1;
}

void sub_0804D698() {
    sub_0805AF60(0);
}

u32 sub_0804D6A4() {
    return 1;
}

void sub_0804D6A8() {
    sub_0805AF60(0);
}

u32 sub_0804D6B4() {
    return 1;
}

void nullsub_72() {
}

u32 sub_0804D6BC() {
    return 1;
}

void nullsub_73() {
}

u32 sub_0804D6C4() {
    return 1;
}

void sub_0804D6C8(void) {
    PlaySFX(0x80100000);
    gArea.musicIndex = gArea.pMusicIndex;
}

u32 sub_0804D6EC() {
    return 1;
}

void sub_0804D6F0(void) {
    sub_0805D3C8(0);

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

u32 sub_0804D754() {
    return 1;
}

void sub_0804D758() {
    sub_0805B4D0(6);
}

u32 sub_0804D764() {
    return 1;
}

void nullsub_74() {
}

u32 sub_0804D76C() {
    return 1;
}

void nullsub_75() {
}

u32 sub_0804D774() {
    sub_080534AC();
    return 1;
}

extern EntityData gUnk_080EAD68;
extern EntityData gUnk_080EADB8;

void sub_0804D780(void) {

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

u32 sub_0804D830() {
    return 1;
}

extern EntityData gUnk_080EAE60;
extern EntityData gUnk_080EAEC0;
extern EntityData gUnk_080EAF20;

void sub_0804D834(void) {
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

u32 sub_0804D8CC() {
    return 1;
}

void nullsub_320() {
}

u32 sub_0804D8D4() {
    return 1;
}

void nullsub_321() {
}

u32 sub_0804D8DC() {
    return 1;
}

void nullsub_322() {
}

u32 sub_0804D8E4() {
    return 1;
}

void nullsub_323() {
}

u32 sub_0804D8EC() {
    return 1;
}

void nullsub_324() {
}

u32 sub_0804D8F4() {
    return 1;
}

void nullsub_325() {
}

u32 sub_0804D8FC() {
    return 1;
}

void nullsub_326() {
}

extern u32 gUnk_080EB604;
extern u32 gUnk_080EB5D4;

u32 sub_0804D904(void) {

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

void sub_0804D97C(void) {
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

u32 sub_0804DA04() {
    return 1;
}

void nullsub_327() {
}

u32 sub_0804DA0C() {
    return 1;
}

void nullsub_328() {
}

u32 sub_0804DA14() {
    return 1;
}

void nullsub_329() {
}

u32 sub_0804DA1C() {
    return 1;
}

void nullsub_330() {
}

u32 sub_0804DA24() {
    return 1;
}

void nullsub_331() {
}

u32 sub_0804DA2C(void) {
    if (!CheckLocalFlag(0x77)) {
        gRoomVars.field_0x6c = 0;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080EB9F4;
extern EntityData gUnk_080EBAA4;
extern EntityData gUnk_080EBAF4;

void sub_0804DA48(void) {
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

u32 sub_0804DA98() {
    return 1;
}

void nullsub_332() {
}

u32 sub_0804DAA0() {
    return 1;
}

void nullsub_333() {
}

u32 sub_0804DAA8() {
    return 1;
}

void nullsub_334() {
}

u32 sub_0804DAB0() {
    return 1;
}

void nullsub_335() {
}

u32 sub_0804DAB8() {
    return 1;
}

void nullsub_336() {
}

u32 sub_0804DAC0() {
    return 1;
}
void nullsub_337() {
}

u32 sub_0804DAC8() {
    return 1;
}

void nullsub_338() {
}

u32 sub_0804DAD0() {
    return 1;
}

extern EntityData gUnk_080EC2CC;

void sub_0804DAD4(void) {
    if (CheckLocalFlag(0x86) && !CheckLocalFlag(0x4c)) {
        LoadRoomEntityList(&gUnk_080EC2CC);
    }
}

u32 sub_0804DAF8() {
    return 1;
}

void nullsub_339() {
}

u32 sub_0804DB00() {
    return 1;
}

extern EntityData gUnk_080EC4E8;

void sub_0804DB04(void) {
    if (CheckLocalFlag(0x86) && !CheckLocalFlag(0x4d)) {
        LoadRoomEntityList(&gUnk_080EC4E8);
    }
}

u32 sub_0804DB28() {
    return 1;
}

void nullsub_340() {
}

u32 sub_0804DB30() {
    return 1;
}

void nullsub_341() {
}

u32 sub_0804DB38() {
    return 1;
}

extern EntityData gUnk_080EC820;

void sub_0804DB3C(void) {
    if (CheckLocalFlag(0x86) && !CheckLocalFlag(0x53)) {
        LoadRoomEntityList(&gUnk_080EC820);
    }
}

u32 sub_0804DB60() {
    return 1;
}

void nullsub_342() {
}

u32 sub_0804DB68() {
    return 1;
}

extern EntityData gUnk_080ECA60;

void sub_0804DB6C(void) {
    if (CheckLocalFlag(0x86) && !CheckLocalFlag(0x56)) {
        LoadRoomEntityList(&gUnk_080ECA60);
    }
}

u32 sub_0804DB90() {
    return 1;
}

void nullsub_343() {
}

u32 sub_0804DB98() {
    return 1;
}

void nullsub_344() {
}

u32 sub_0804DBA0() {
    return 1;
}

void nullsub_345() {
}

u32 sub_0804DBA8() {
    return 1;
}

void nullsub_346() {
}

u32 sub_0804DBB0() {
    return 1;
}

void nullsub_347() {
}

u32 sub_0804DBB8() {
    return 1;
}

void nullsub_348() {
}

u32 sub_0804DBC0(void) {
    if (CheckLocalFlag(0x79)) {
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080ECFCC;

void sub_0804DBDC(void) {
    if (CheckLocalFlag(0x79)) {
        sub_0807BB98(0x90, 1, 1, 5);
        LoadRoomEntityList(&gUnk_080ECFCC);
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_0804DC18() {
    return 1;
}

void nullsub_349() {
}

u32 sub_0804DC20() {
    return 1;
}

void nullsub_350() {
}

extern u32 gUnk_080ED1E4;

u32 sub_0804DC28(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080ED1E4;
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

void sub_0804DC4C(void) {
    if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_0804DC70() {
    return 1;
}

void nullsub_351() {
}

u32 sub_0804DC78() {
    return 1;
}

void nullsub_352() {
}

u32 sub_0804DC80() {
    return 1;
}

void nullsub_353() {
}

u32 sub_0804DC88() {
    return 1;
}

void nullsub_354() {
}

u32 sub_0804DC90() {
    return 1;
}

void nullsub_355() {
}

u32 sub_0804DC98() {
    return 1;
}

void nullsub_356() {
}

u32 sub_0804DCA0() {
    return 1;
}

void nullsub_357() {
}

u32 sub_0804DCA8() {
    return 1;
}

void nullsub_358() {
}

u32 sub_0804DCB0() {
    return 1;
}

void nullsub_359() {
}

u32 sub_0804DCB8() {
    return 1;
}

void nullsub_360() {
}

u32 sub_0804DCC0() {
    return 1;
}

void nullsub_361() {
}

u32 sub_0804DCC8() {
    return 1;
}

void nullsub_362() {
}

u32 sub_0804DCD0() {
    return 1;
}

void nullsub_363() {
}

u32 sub_0804DCD8() {
    return 1;
}

void nullsub_364() {
}

u32 sub_0804DCE0() {
    return 1;
}

void nullsub_365() {
}

u32 sub_0804DCE8() {
    return 1;
}

void nullsub_366() {
}

u32 sub_0804DCF0() {
    return 1;
}

void nullsub_367() {
}

u32 sub_0804DCF8() {
    return 1;
}

void nullsub_368() {
}

u32 sub_0804DD00() {
    return 1;
}

void nullsub_369() {
}

u32 sub_0804DD08() {
    return 1;
}

void nullsub_370() {
}

u32 sub_0804DD10() {
    return 1;
}

void nullsub_371() {
}

u32 sub_0804DD18(void) {
    if (CheckLocalFlag(0x79)) {
        gRoomVars.field_0x74 = 0;
        gRoomVars.field_0x6c = 0;
    }
    return 1;
}

extern EntityData gUnk_080EE314;

void sub_0804DD34(void) {
    if (CheckLocalFlag(0x79)) {
        sub_0807BB98(3, 2, 5, 1);
        LoadRoomEntityList(&gUnk_080EE314);
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_0804DD70() {
    return 1;
}

void nullsub_372() {
}

u32 sub_0804DD78(void) {
    if (CheckLocalFlag(0x79)) {
        gRoomVars.field_0x74 = 0;
    }
    return 1;
}

extern EntityData gUnk_080EE5DC;

void sub_0804DD94(void) {
    if (CheckLocalFlag(0x79)) {
        sub_0807BB98(0x392, 2, 2, 5);
        LoadRoomEntityList(&gUnk_080EE5DC);
        gArea.pMusicIndex = gArea.musicIndex;
    }
}

u32 sub_0804DDD4() {
    return 1;
}

void nullsub_373() {
}

u32 sub_0804DDDC() {
    return 1;
}

extern EntityData gUnk_080EE71C;

void sub_0804DDE0(void) {
    if (CheckLocalFlag(1)) {
        LoadRoomEntityList(&gUnk_080EE71C);
    }
}

u32 sub_0804DDF8() {
    return 1;
}

void nullsub_374() {
}

NAKED
u32 sub_0804DE00(void) {
    asm(".include \"asm/non_matching/sub_0804DE00.inc\"");
}

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

void LoadHyruleTown(void) {

    sub_08054570();
    TryLoadPrologueHyruleTown();
    SetTileType(0x176, 0x66b, 1);
    if (gUnk_02002A40.unk8 == 1) {
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
        if (CheckKinstoneFused(0x1b) && (gUnk_02002A40.unk8 > 3)) {
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
        if ((gUnk_02002A40.unk8 > 4) && !CheckKinstoneFused(0xb) &&
            (CheckGlobalFlag(RENTED_HOUSE_DIN) || CheckGlobalFlag(RENTED_HOUSE_NAYRU) ||
             CheckGlobalFlag(RENTED_HOUSE_FARORE))) {
            LoadRoomEntityList(&gUnk_080EEA5C);
        }
        // rocs cape
        if (!CheckLocalFlag(0xd0) && GetInventoryValue(0x14)) {
            LoadRoomEntityList(&gUnk_080EEABC);
        }
        if ((gUnk_02002A40.unk8 > 3) && CheckGlobalFlag(INLOCK)) {
            LoadRoomEntityList(&gUnk_080EEA7C);
        }
        if ((gUnk_02002A40.unk8 < 6) && !CheckGlobalFlag(MIZUKAKI_START)) {
            LoadRoomEntityList(&gUnk_080EEA9C);
        }
        if ((gUnk_02002A40.windcrests & 0x8000000) == 0) {
            LoadRoomEntityList(&gUnk_080EEBAC);
        }
        sub_0804E150();
    }
}

extern EntityData gUnk_080EEBAC;

void sub_0804E130(void) {
    if ((gUnk_02002A40.windcrests & 0x8000000) == 0) {
        LoadRoomEntityList(&gUnk_080EEBAC);
    }
}

NAKED
void sub_0804E150(void) {
    asm(".include \"asm/non_matching/sub_0804E150.inc\"");
}

u32 sub_0804E1F4() {
    return 1;
}

void nullsub_76() {
}

u32 sub_0804E1FC() {
    return 1;
}

void nullsub_77() {
}

u32 sub_0804E204() {
    return 1;
}

void nullsub_78() {
}

u32 sub_0804E20C() {
    return 1;
}

void nullsub_79() {
}

u32 sub_0804E214() {
    return 1;
}

void nullsub_080() {
}

u32 sub_0804E21C() {
    return 1;
}

void nullsub_081() {
}

u32 sub_0804E224() {
    return 1;
}

void nullsub_082() {
}

u32 sub_0804E22C() {
    return 1;
}

void nullsub_083() {
}

u32 sub_0804E234() {
    return 1;
}

void nullsub_084() {
}

u32 sub_0804E23C() {
    return 1;
}

void nullsub_085() {
}

u32 sub_0804E244() {
    return 1;
}

void nullsub_086() {
}

u32 sub_0804E24C() {
    return 1;
}

void nullsub_087() {
}

u32 sub_0804E254() {
    return 1;
}

void nullsub_088() {
}

extern u32 gUnk_080F09A0;

u32 sub_0804E25C(void) {

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

void sub_0804E27C(void) {

    if (!CheckGlobalFlag(TABIDACHI)) {
        LoadRoomEntityList(&gUnk_080F0650);
        gArea.pMusicIndex = 0x13;
        SetGlobalFlag(CASTLE_BGM);
    } else {
        if (CheckGlobalFlag(CASTLE_BGM)) {
            gArea.pMusicIndex = 0x1b;
        }
    }
    if (!CheckLocalFlag(0x9c)) {
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
        if (CheckLocalFlag(0x10)) {
            LoadRoomEntityList(&gUnk_080F0920);
            ClearLocalFlag(0x10);
        }
    }
    sub_080AF284();
}

u32 sub_0804E3B8() {
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

void sub_0804E3C4() {
    u32 r;
    u32 index;
    u32 tmp;
    tmp = CheckGlobalFlag(LV4_CLEAR);
    index = (-tmp | tmp) >> 0x1F;
    if (CheckGlobalFlag(LV5_CLEAR)) {
        index = 2;
    }
    if (CheckGlobalFlag(GAMECLEAR)) {
        index = 3;
    }
    r = Random();
    index = gUnk_080F0D58[index][r & 0x1f];
    LoadRoomEntityList(gUnk_080F0CB8[index & 0xF]);
    index >>= 4;
    r >>= 8;
    index = gUnk_080F0E08[index][r & 0x1F];
    if (!CheckLocalFlag(0xC6)) {
        SetLocalFlag(0xC6);
        index = 0xE;
    }
    sub_0804B3C4(&gUnk_080F0E1C[index]);
    PlaySFX(0x80100000);
}

u32 sub_0804E45C() {
    return 1;
}

extern EntityData gUnk_080F1C68;
extern EntityData gUnk_080F1C88;

void sub_0804E460(void) {
    if (!CheckGlobalFlag(POWERGLOVE_HINT)) {
        LoadRoomEntityList(&gUnk_080F1C68);
    } else {
        LoadRoomEntityList(&gUnk_080F1C88);
    }
}

u32 sub_0804E484() {
    return 1;
}

extern EntityData gUnk_080F1D90;
extern EntityData gUnk_080F1DB0;
extern EntityData gUnk_080F1DD0;

void sub_0804E488(void) {
    if (CheckGlobalFlag(NEW_HOUSE_DIN)) {
        LoadRoomEntityList(&gUnk_080F1D90);
    } else if (CheckGlobalFlag(NEW_HOUSE_NAYRU)) {
        LoadRoomEntityList(&gUnk_080F1DB0);
    } else if (CheckGlobalFlag(NEW_HOUSE_FARORE)) {
        LoadRoomEntityList(&gUnk_080F1DD0);
    }
}

u32 sub_0804E4D0() {
    return 1;
}

void nullsub_375() {
}

u32 sub_0804E4D8() {
    return 1;
}

void nullsub_376() {
}

u32 sub_0804E4E0() {
    return 1;
}

extern EntityData gUnk_080F2174;
extern EntityData gUnk_080F2194;
extern EntityData gUnk_080F21B4;

void sub_0804E4E4(void) {

    LoadRoomEntityList(&gUnk_080F2174);
    // picori legend book
    if (!GetInventoryValue(0x3a) && CheckGlobalFlag(MIZUKAKI_HARIFALL)) {
        LoadRoomEntityList(&gUnk_080F2194);
    }
    if (gScreenTransition.field_0xf == 1) {
        LoadRoomEntityList(&gUnk_080F21B4);
    }
}

u32 sub_0804E528() {
    return 1;
}

extern EntityData gUnk_080F23BC;
extern EntityData gUnk_080F238C;
extern EntityData gUnk_080F236C;

void sub_0804E52C(void) {

    if (gUnk_02002A40.unk8 > 7) {
        LoadRoomEntityList(&gUnk_080F23BC);
    }
    // flippers
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(MIZUKAKI_START)) {
        LoadRoomEntityList(&gUnk_080F238C);
    } else {
        LoadRoomEntityList(&gUnk_080F236C);
    }
}

u32 sub_0804E570() {
    return 1;
}

extern EntityData gUnk_080F2570;
extern EntityData gUnk_080F2590;
extern EntityData gUnk_080F25C0;
extern EntityData gUnk_080F2600;

void sub_0804E574(void) {
    switch (gUnk_02002A40.unk8) {
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

u32 sub_0804E614() {
    return 1;
}

extern EntityData gUnk_080F2718;
extern EntityData gUnk_080F2860;
extern EntityData gUnk_080F2758;
extern EntityData gUnk_080F27D8;
extern EntityData gUnk_080F2798;

void sub_0804E618(void) {
    if (CheckKinstoneFused(0x21)) {
        if (!CheckLocalFlag(0x42)) {
            if (!CheckLocalFlag(0x43)) {
                LoadRoomEntityList(&gUnk_080F2718);
                LoadRoomTileEntities(&gUnk_080F2860);
            } else {
                LoadRoomEntityList(&gUnk_080F2758);
            }
        } else if (!CheckLocalFlag(0x3f)) {
            LoadRoomEntityList(&gUnk_080F27D8);
        } else {
            LoadRoomEntityList(&gUnk_080F2798);
        }
    }
}

u32 sub_0804E680() {
    return 1;
}

extern EntityData gUnk_080F28D4;
extern EntityData gUnk_080F28F4;
extern EntityData gUnk_080F2914;

void sub_0804E684(void) {
    if (CheckGlobalFlag(RENTED_HOUSE_DIN)) {
        LoadRoomEntityList(&gUnk_080F28D4);
    } else if (CheckGlobalFlag(RENTED_HOUSE_NAYRU)) {
        LoadRoomEntityList(&gUnk_080F28F4);
    } else if (CheckGlobalFlag(RENTED_HOUSE_FARORE)) {
        LoadRoomEntityList(&gUnk_080F2914);
    }
}

u32 sub_0804E6CC9() {
    return 1;
}

void nullsub_377() {
}

u32 sub_0804E6D4() {
    return 1;
}

void nullsub_378() {
}

u32 sub_0804E6DC() {
    return 1;
}

void nullsub_379() {
}

u32 sub_0804E6E4() {
    return 1;
}

extern EntityData gUnk_080F2E2C;

void sub_0804E6E8(void) {
    if (!CheckGlobalFlag(OUTDOOR)) {
        gArea.musicIndex = gArea.pMusicIndex;
        PlaySFX(0x800b0036);
    }
    if (!CheckGlobalFlag(START)) {
        LoadRoomEntityList(&gUnk_080F2E2C);
    }
}

u32 sub_0804E728() {
    return 1;
}

extern EntityData gUnk_080F2E94;
extern EntityData gUnk_080F2EC4;

void sub_0804E72C(void) {
    if (!CheckGlobalFlag(OUTDOOR)) {
        gArea.musicIndex = gArea.pMusicIndex;
        PlaySFX(0x800b0036);
    }
    if (!CheckGlobalFlag(START)) {
        LoadRoomEntityList(&gUnk_080F2E94);
    } else {
        LoadRoomEntityList(&gUnk_080F2EC4);
    }
}

u32 sub_0804E778() {
    return 1;
}

extern EntityData gUnk_080F2FD4;

void sub_0804E77C(void) {
    // graveyard key
    if (!CheckLocalFlag(0x69) || GetInventoryValue(0x3c) > 1) {
        LoadRoomEntityList(&gUnk_080F2FD4);
    }
}

u32 sub_0804E7A0() {
    return 1;
}

extern EntityData gUnk_080F30CC;

void sub_0804E7A4(void) {
    // dog food
    if ((GetInventoryValue(0x36) == 1) && !CheckGlobalFlag(BIN_DOGFOOD) && (gPlayerState.flags.all & 0x80) == 0) {
        LoadRoomEntityList(&gUnk_080F30CC);
    }
}

u32 sub_0804E7D8() {
    return 1;
}

extern EntityData gUnk_080F31D8;
extern u8 gUnk_02000070;
extern u32 gUnk_08009B30;

void sub_0804E7DC(void) {

    if (!CheckGlobalFlag(START) && !CheckLocalFlag(0x46)) {
        sub_080A71C4(5, 1, 4, 4);
        gUnk_02000070 = 0;
        DoFade(5, 0x100);
        sub_080751E8(0, 6, &gUnk_08009B30);
    }
    if (!CheckGlobalFlag(OUTDOOR)) {
        gArea.musicIndex = gArea.pMusicIndex;
        PlaySFX(0x800b0036);
    }
    if ((gPlayerState.flags.all & 8) == 0) {
        LoadRoomEntityList(&gUnk_080F31D8);
    }
}

extern u32 gUnk_08009E58;

void sub_0804E864(void) {
    gPlayerEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x90;
    gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
    sub_080751E8(1, 6, &gUnk_08009E58);
    ModHealth(0xa0);
}

u32 sub_0804E894() {
    return 1;
}

extern EntityData gUnk_080F3260;

void sub_0804E898(void) {
    // pacci cane
    if (GetInventoryValue(0x12)) {
        LoadRoomEntityList(&gUnk_080F3260);
        SetTileType(0x4072, 0x202, 1);
        SetTileType(0x4072, 0x242, 1);
        SetTileType(0x4072, 0x204, 1);
        SetTileType(0x4072, 0x244, 1);
    }
}

u32 sub_0804E8EC() {
    return 1;
}

void sub_0804E8F0() {
    sub_08054564();
}

u32 sub_0804E8F8() {
    return 1;
}

extern EntityData gUnk_080F36FC;
extern EntityData gUnk_080F3604;

void sub_0804E8FC(void) {
    if (!CheckGlobalFlag(INLOCK)) {
        LoadRoomEntityList(&gUnk_080F36FC);
    } else if (gUnk_02002A40.unk8 < 4) {
        LoadRoomEntityList(&gUnk_080F3604);
    }
}

u32 sub_0804E92C() {
    return 1;
}

extern EntityData gUnk_080F37D0;

void sub_0804E930(void) {
    if (CheckGlobalFlag(INLOCK)) {
        LoadRoomEntityList(&gUnk_080F37D0);
    }
}

u32 sub_0804E948() {
    return 1;
}

void nullsub_380() {
}

u32 sub_0804E950() {
    return 1;
}

extern EntityData gUnk_080F3A48;

void sub_0804E954(void) {
    // flippers, history of masks
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(MIZUKAKI_START) && !GetInventoryValue(0x3b)) {
        LoadRoomEntityList(&gUnk_080F3A48);
    }
    gScreenTransition.field_0x20 = 0xf28;
    gScreenTransition.field_0x22 = 0x82d;
}

extern u32 gUnk_080F3D44;
extern u32 gUnk_080F3EA4;

u32 sub_0804E998(void) {
    if (CheckGlobalFlag(LV4_CLEAR) && !CheckLocalFlag(4)) {
        gRoomVars.field_0x74 = &gUnk_080F3EA4;
    } else {
        gRoomVars.field_0x74 = &gUnk_080F3D44;
    }
    return 1;
}

extern EntityData gUnk_080F3C64;
extern EntityData gUnk_080F3C94;
extern EntityData gUnk_080F3C44;

void sub_0804E9D0(void) {
    if (CheckGlobalFlag(LV4_CLEAR) && !CheckLocalFlag(4)) {
        LoadRoomEntityList(&gUnk_080F3C64);
    }
    if (CheckKinstoneFused(0x12)) {
        LoadRoomEntityList(&gUnk_080F3C94);
    }
    if ((gUnk_02002A40.unk8 > 3) && CheckGlobalFlag(TINGLE_TALK1ST)) {
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

u32 sub_0804EB04() {
    return 1;
}

void nullsub_381() {
}

u32 sub_0804EB0C() {
    return 1;
}

void nullsub_382() {
}

u32 sub_0804EB14() {
    return 1;
}

void nullsub_383() {
}

u32 sub_0804EB1() {
    return 1;
}

void nullsub_384() {
}

u32 sub_0804EB24() {
    return 1;
}

void nullsub_385() {
}

u32 sub_0804EB2C() {
    return 1;
}

void nullsub_386() {
}

u32 sub_0804EB34() {
    return 1;
}

void nullsub_387() {
}

u32 sub_0804EB3C() {
    return 1;
}

void nullsub_388() {
}

u32 sub_0804EB44() {
    return 1;
}

void nullsub_389() {
}

u32 sub_0804EB4C() {
    return 1;
}

void nullsub_390() {
}

u32 sub_0804EB54(void) {
    gArea.areaMetadata |= 0x48;
    return 1;
}

void nullsub_391() {
}

u32 sub_0804EB6C(void) {
    gArea.areaMetadata |= 0x48;
    return 1;
}

void nullsub_392() {
}

u32 sub_0804EB84(void) {
    gArea.areaMetadata |= 0x48;
    return 1;
}

void nullsub_393() {
}

u32 sub_0804EB9C(void) {
    sub_0801DD58(0x58, 5);
    gArea.areaMetadata |= 0x48;
    return 1;
}

void nullsub_394() {
}

u32 sub_0804EBBC(void) {
    sub_0801DD58(0x58, 6);
    gArea.areaMetadata |= 0x48;
    return 1;
}

void nullsub_395() {
}

extern u32 gUnk_080F4EB0;

u32 sub_0804EBDC(void) {
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

void sub_0804EC00(void) {
    if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    }
    if (!CheckGlobalFlag(EZERO_1ST)) {
        LoadRoomEntityList(&gUnk_080F4D50);
    }
    if (!CheckLocalFlag(0x3e)) {
        if (!CheckLocalFlag(0x3b)) {
            LoadRoomEntityList(&gUnk_080F4DB0);
        } else {
            LoadRoomEntityList(&gUnk_080F4DD0);
        }
        LoadRoomEntityList(&gUnk_080F4DF0);
    }
    if (CheckKinstoneFused(0x4e)) {
        LoadRoomEntityList(&gUnk_080F4F10);
    }
    if ((s32)gUnk_02002A40.windcrests > -1) {
        LoadRoomEntityList(&gUnk_080F4E10);
    }
}

extern EntityData gUnk_080F4E10;

void sub_0804EC98(void) {
    if ((s32)gUnk_02002A40.windcrests > -1) {
        LoadRoomEntityList(&gUnk_080F4E10);
    }
}

u32 sub_0804ECB4() {
    return 1;
}

void nullsub_396() {
}

extern u32 gUnk_080F5348;

u32 sub_0804ECBC(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080F5348;
        gRoomVars.field_0x88 = sub_0804ED18;
        gRoomVars.field_0x74 = NULL;
    }
    return 1;
}

extern EntityData gUnk_080F5328;
extern EntityData gUnk_080F5308;

void sub_0804ECEC(void) {
    // white sword
    if (GetInventoryValue(0x2)) {
        LoadRoomEntityList(&gUnk_080F5328);
        if (!CheckLocalFlag(0x14)) {
            LoadRoomEntityList(&gUnk_080F5308);
        }
    }
}

void sub_0804ED18(void) {
    gArea.pMusicIndex = gArea.musicIndex;
}

u32 sub_0804ED30() {
    return 1;
}

void sub_0804ED34(void) {
    sub_080AF2E4();
    if (CheckGlobalFlag(SEIIKI_BGM)) {
        gArea.pMusicIndex = 0x31;
    }
}

u32 sub_0804ED58() {
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

void sub_0804ED5C(void) {
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

u32 sub_0804EE74() {
    return 1;
}

extern EntityData gUnk_080F5660;

void sub_0804EE78(void) {
    if (!CheckLocalFlag(0x78) && CheckLocalFlag(0x7c)) {
        LoadRoomEntityList(&gUnk_080F5660);
    }
    if (CheckGlobalFlag(SEIIKI_BGM)) {
        gArea.pMusicIndex = 0x31;
    }
}

u32 sub_0804EEB8() {
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

extern u8 gBombBagSizes[];

void sub_0804EEBC(void) {
    LoadRoomEntityList(&gUnk_080F5758);
    if (!GetInventoryValue(0x36) && CheckLocalFlagByOffset(0x200, 0x8f)) {
        LoadRoomEntityList(&gUnk_080F57E8);
    }
    if (!CheckLocalFlag(0x55)) {
        LoadRoomEntityList(&gUnk_080F57A8);
    } else {
        if (gBombBagSizes[gUnk_02002A40.stats.bombBagType] > 0x1d) {
            LoadRoomEntityList(&gUnk_080F57C8);
        }
        if (!GetInventoryValue(0xb) && !GetInventoryValue(0xc)) {
            LoadRoomEntityList(&gUnk_080F5888);
        } else {
            if (!CheckLocalFlag(0xcd)) {
                LoadRoomEntityList(&gUnk_080F58A8);
            }
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
    if (gUnk_02002A40.stats.filler2[5] == 0) {
        LoadRoomEntityList(&gUnk_080F5788);
    }
}

u32 sub_0804EFB0() {
    return 1;
}

void nullsub_397() {
}

u32 sub_0804EFB8() {
    return 1;
}

extern EntityData gUnk_080F5B3C;

void sub_0804EFBC(void) {
    if (GetInventoryValue(0x38) == 1) {
        LoadRoomEntityList(&gUnk_080F5B3C);
    }
}

u32 sub_0804EFD4() {
    return 1;
}
void nullsub_398() {
}

u32 sub_0804EFDC(void) {
    if (CheckGlobalFlag(MAROYA_WAKEUP)) {
        gScreenTransition.field_0xf = 5;
    }
    return 1;
}

extern EntityData gUnk_080F5DD0;
extern u32 gUnk_08011C50;

void sub_0804EFF8(void) {
    if (gUnk_02002A40.unk8 > 7) {
        LoadRoomEntityList(&gUnk_080F5DD0);
    }
    if (CheckGlobalFlag(MAROYA_WAKEUP)) {
        sub_080751E8(1, 2, &gUnk_08011C50);
    }
}

u32 sub_0804F02C() {
    return 1;
}

extern EntityData gUnk_080F5E68;

void sub_0804F030(void) {
    if (!CheckLocalFlagByOffset(0x100, 0xd1)) {
        LoadRoomEntityList(&gUnk_080F5E68);
    }
}

u32 sub_0804F04C() {
    return 1;
}

extern EntityData gUnk_080F5F38;
extern EntityData gUnk_080F5F58;
extern EntityData gUnk_080F5F78;

void sub_0804F050(void) {

    if (gUnk_02002A40.unk8 > 4) {
        LoadRoomEntityList(&gUnk_080F5F38);
    }
    if (!CheckLocalFlag(0x92)) {
        LoadRoomEntityList(&gUnk_080F5F58);
    } else {
        LoadRoomEntityList(&gUnk_080F5F78);
    }
}

u32 sub_0804F08C() {
    return 1;
}

void nullsub_399() {
}

u32 sub_0804F094() {
    return 1;
}

void nullsub_400() {
}

u32 sub_0804F09C(void) {
    if (CheckGlobalFlag(KUMOTATSUMAKI) && CheckLocalFlagByOffset(0x100, 0xdc)) {
        SetGlobalFlag(WARP_EVENT_END);
    }
    return 1;
}

extern EntityData gUnk_080F61BC;

void sub_0804F0C0(void) {
    if (CheckLocalFlagByOffset(0x100, 0xdc)) {
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

u32 sub_0804F128() {
    return 1;
}

extern EntityData gUnk_080F62E4;
extern EntityData gUnk_080F6324;

void sub_0804F12C(void) {
    if (!CheckGlobalFlag(WARP_EVENT_END)) {
        LoadRoomEntityList(&gUnk_080F62E4);
    } else {
        if (CheckLocalFlag(99)) {
            LoadRoomEntityList(&gUnk_080F6324);
        }
    }
}

u32 sub_0804F15C() {
    return 1;
}

void nullsub_401() {
}

u32 sub_0804F164() {
    return 1;
}

extern EntityData gUnk_080F6564;
extern EntityData gUnk_080F6584;

void sub_0804F168(void) {

    if (!CheckLocalFlag(0xb1)) {
        LoadRoomEntityList(&gUnk_080F6564);
    } else {
        LoadRoomEntityList(&gUnk_080F6584);
    }
}

u32 sub_0804F18C() {
    return 1;
}

extern EntityData gUnk_080F66AC;

void sub_0804F190(void) {
    sub_0805B4D0(5);
    if (CheckGlobalFlag(LV5_CLEAR) && !CheckLocalFlagByOffset(0x100, 5)) {
        LoadRoomEntityList(&gUnk_080F66AC);
    }
    sub_08052CA4(8, 0, 0x1e8, 0x158);
    gArea.areaMetadata |= 0x80;
}

u32 sub_0804F1DC() {
    return 1;
}

void nullsub_402() {
}

u32 sub_0804F1E4() {
    return 1;
}

void nullsub_403() {
}

u32 sub_0804F1EC() {
    return 1;
}

void nullsub_404() {
}

u32 sub_0804F1F4() {
    return 1;
}

void nullsub_405() {
}

u32 sub_0804F1FC() {
    return 1;
}

void nullsub_406() {
}

u32 sub_0804F204() {
    return 1;
}

void nullsub_407() {
}

u32 sub_0804F20C() {
    return 1;
}

void nullsub_408() {
}

u32 sub_0804F214() {
    return 1;
}

void nullsub_409() {
}

u32 sub_0804F21C() {
    return 1;
}

void nullsub_410() {
}

u32 sub_0804F224() {
    return 1;
}

void nullsub_411() {
}

u32 sub_0804F22C() {
    return 1;
}

void sub_0804F230() {
    sub_0805ADD8(0);
}

u32 sub_0804F23C(void) {
    if (!CheckLocalFlag(0x6d)) {
        DoFade(7, 0x100);
    }
    SetGlobalFlag(OUTDOOR);
    return 1;
}

extern EntityData gUnk_080F70A8;
extern EntityData gUnk_080F70D8;
extern EntityData gUnk_080F7088;

void sub_0804F25C(void) {
    sub_0805ADD8(0);
    if (!CheckLocalFlag(0x6d)) {
        LoadRoomEntityList(&gUnk_080F70A8);
        ClearGlobalFlag(ZELDA_CHASE);
    }
    if (!CheckGlobalFlag(TABIDACHI)) {
        gArea.pMusicIndex = 0x10;
    }
    if ((gUnk_02002A40.windcrests & 0x40000000) == 0) {
        LoadRoomEntityList(&gUnk_080F70D8);
    }
    if (gUnk_02002A40.unk8 > 3) {
        LoadRoomEntityList(&gUnk_080F7088);
    }
}

extern EntityData gUnk_080F70D8;

void sub_0804F2C8(void) {
    if ((gUnk_02002A40.windcrests & 0x40000000) == 0) {
        LoadRoomEntityList(&gUnk_080F70D8);
    }
}

u32 sub_0804F2E8() {
    return 1;
}

void sub_0804F2EC() {
    sub_0805ADD8(0);
}

u32 sub_0804F2F8() {
    return 1;
}

void sub_0804F2FC() {
    sub_0805ADD8(0);
}

extern u32 gUnk_080F7680;

u32 sub_0804f308(void) {
    if (GetInventoryValue(0x11) && !GetInventoryValue(0x12)) {
        gRoomVars.field_0x74 = &gUnk_080F7680;
    }
    return 1;
}

extern EntityData gUnk_080F7500;
extern EntityData gUnk_080F7550;

void sub_0804F330(void) {
    sub_0805ADD8(0);
    if (gUnk_02002A40.unk8 > 3) {
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

u32 sub_0804F3AC() {
    return 1;
}

extern EntityData gUnk_080F77F0;
extern EntityData gUnk_080F77C0;
extern EntityData gUnk_080F7810;
extern EntityData gUnk_080F7860;
extern EntityData gUnk_080F78A0;

void sub_0804F3B0(void) {

    sub_0805ADD8(0);
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
    if ((gUnk_02002A40.unk8 > 3) && CheckGlobalFlag(TINGLE_TALK1ST)) {
        LoadRoomEntityList(&gUnk_080F78A0);
    }
}

extern u32 gUnk_080F7CD0;
extern void sub_0804F5E8();
extern u32 gUnk_080F7C80;
extern void sub_0804F4E4();

u32 sub_0804F468(void) {
    if (CheckGlobalFlag(TABIDACHI) && !GetInventoryValue(0x11)) {
        gRoomVars.field_0x6c = &gUnk_080F7CD0;
        gRoomVars.field_0x88 = sub_0804F5E8;
    }
    if (CheckGlobalFlag(LV2_CLEAR) && GetInventoryValue(0x3) && !CheckLocalFlag(0x8c)) {
        gRoomVars.field_0x6c = &gUnk_080F7C80;
        gRoomVars.field_0x88 = sub_0804F4E4;
        gRoomVars.field_0x74 = NULL;
    }
    if (CheckGlobalFlag(TABIDACHI)) {
        ClearGlobalFlag(CASTLE_BGM);
    }
    return 1;
}

void sub_0804F4E4() {
    sub_0805ADD8(0);
    sub_0804F578();
}

extern EntityData gUnk_080F7D70;

void sub_0804F4F4(void) {
    sub_0804F4E4();
    if (!CheckLocalFlag(0x8b)) {
        LoadRoomEntityList(&gUnk_080F7D70);
        SetTileType(0x174, 0x7a2, 1);
        SetTileType(0x174, 0x7a3, 1);
        SetTileType(0x174, 0x7a5, 1);
        SetTileType(0x174, 0x7a6, 1);
        SetTileType(0x174, 0x7a7, 1);
    }
    if (!CheckGlobalFlag(TABIDACHI)) {
        gArea.pMusicIndex = 0x13;
    }
}

extern EntityData gUnk_080F7DC0;

void sub_0804F578(void) {
    if (!CheckLocalFlag(0x8e)) {
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

void sub_0804F6A8(Entity* arg0) {
    sub_0804F680(arg0, 0x1d8, 0x108);
    sub_0804F680(arg0, 0x218, 0x188);
}

void sub_0804F6C8(Entity* arg0) {
    sub_0804F680(arg0, 0x1e8, 0x108);
    sub_0804F680(arg0, 0x208, 0x188);
}

void sub_0804F6E8(Entity* arg0) {
    sub_0804F680(arg0, 0x1f8, 0x108);
    sub_0804F680(arg0, 0x258, 0x138);
    sub_0804F680(arg0, 0x1f8, 0x188);
    sub_0804F680(arg0, 0x198, 0x158);
}

void sub_0804F724(Entity* arg0) {
    sub_0804F680(arg0, 0x208, 0x108);
    sub_0804F680(arg0, 0x258, 0x148);
    sub_0804F680(arg0, 0x1e8, 0x188);
    sub_0804F680(arg0, 0x198, 0x148);
}

void sub_0804F760(Entity* arg0) {
    sub_0804F680(arg0, 0x218, 0x108);
    sub_0804F680(arg0, 0x258, 0x158);
    sub_0804F680(arg0, 0x1d8, 0x188);
    sub_0804F680(arg0, 0x198, 0x138);
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

u32 sub_0804F9FC() {
    return 1;
}

extern EntityData gUnk_080F806C;

void sub_0804FA00(void) {

    sub_0805ADD8(0);
    if ((gUnk_02002A40.unk8 > 3) && CheckGlobalFlag(TINGLE_TALK1ST)) {
        LoadRoomEntityList(&gUnk_080F806C);
    }
}

u32 sub_0804FA2C() {
    return 1;
}

extern EntityData gUnk_080F82E0;

void sub_0804FA30(void) {

    sub_0805ADD8(0);
    if (CheckGlobalFlag(LV2_CLEAR) && GetInventoryValue(0x3) && !CheckLocalFlag(0x9c)) {
        LoadRoomEntityList(&gUnk_080F82E0);
    }
}

u32 sub_0804FA64() {
    return 1;
}

extern EntityData gUnk_080F8430;

void sub_0804FA68(void) {

    sub_0805ADD8(0);
    if (CheckKinstoneFused(0x21) && !CheckLocalFlagByOffset(0x200, 0x42)) {
        LoadRoomEntityList(&gUnk_080F8430);
    }
}

u32 sub_0804FA94() {
    return 1;
}

extern EntityData gUnk_080F85F8;
extern EntityData gUnk_080F85D8;

void sub_0804FA98(void) {

    if (CheckGlobalFlag(SOUGEN_06_HASHIGO)) {
        LoadRoomEntityList(&gUnk_080F85D8);
    } else {
        LoadRoomEntityList(&gUnk_080F85F8);
    }
    if (!GetInventoryValue(0xc)) {
        ClearLocalFlag(8);
    }
}

u32 sub_0804FACC() {
    return 1;
}

void nullsub_412() {
}

u32 sub_0804FAD4() {
    return 1;
}

void nullsub_413() {
}

u32 sub_0804FADC() {
    return 1;
}

void nullsub_414() {
}

u32 sub_0804FAE4() {
    return 1;
}

void nullsub_415() {
}

u32 sub_0804FAEC() {
    return 1;
}

void nullsub_416() {
}

u32 sub_0804FAF4() {
    return 1;
}

void nullsub_417() {
}

u32 sub_0804FAFC() {
    return 1;
}

void nullsub_418() {
}

u32 sub_0804FB04() {
    return 1;
}

void nullsub_419() {
}

u32 sub_0804FB0C() {
    return 1;
}

void nullsub_420() {
}

u32 sub_0804FB14() {
    return 1;
}

void nullsub_421() {
}

u32 sub_0804FB1C() {
    return 1;
}

void nullsub_422() {
}

u32 sub_0804FB249() {
    return 1;
}

void nullsub_423() {
}

u32 sub_0804FB2C() {
    return 1;
}

void sub_0804FB30(void) {
    if (CheckLocalFlag(0x11)) {
        SetRoomFlag(0);
        SetRoomFlag(1);
        sub_0805308C(0x100);
        if (!CheckLocalFlag(0x12)) {
            SetTileType(0x73, 0xcb, 1);
        }
    }
}

u32 sub_0804FB68() {
    return 1;
}

void nullsub_089() {
}

u32 sub_0804FB70() {
    return 1;
}

void nullsub_90() {
}

u32 sub_0804FB78() {
    return 1;
}

void nullsub_91() {
}

u32 sub_0804FB80() {
    return 1;
}

void nullsub_92() {
}

u32 sub_0804FB88() {
    return 1;
}

void nullsub_93() {
}

u32 sub_0804FB90() {
    return 1;
}
void nullsub_94() {
}

u32 sub_0804FB98() {
    return 1;
}

void nullsub_95() {
}

u32 sub_0804FBA0() {
    return 1;
}

void nullsub_96() {
}

u32 sub_0804FBA8() {
    return 1;
}

void nullsub_97() {
}

u32 sub_0804FBB09() {
    return 1;
}

void nullsub_98() {
}

u32 sub_0804FBB8() {
    return 1;
}

extern EntityData gUnk_080F9304;

void sub_0804FBBC(void) {
    if ((gUnk_02002A40.windcrests & 0x2000000) == 0) {
        LoadRoomEntityList(&gUnk_080F9304);
    }
}

extern EntityData gUnk_080F9304;

void sub_0804FBDC(void) {
    if ((gUnk_02002A40.windcrests & 0x2000000) == 0) {
        LoadRoomEntityList(&gUnk_080F9304);
    }
}

u32 sub_0804FBFC() {
    return 1;
}

void nullsub_424() {
}

u32 sub_0804FC04() {
    return 1;
}

void nullsub_425() {
}

u32 sub_0804FC0C() {
    return 1;
}

void nullsub_426() {
}

u32 sub_0804FC14() {
    return 1;
}

void nullsub_427() {
}

u32 sub_0804FC1C() {
    return 1;
}

void nullsub_428() {
}

u32 sub_0804FC24() {
    return 1;
}

void nullsub_429() {
}

u32 sub_0804FC2C() {
    return 1;
}

void nullsub_430() {
}

u32 sub_0804FC34() {
    return 1;
}

void nullsub_431() {
}

u32 sub_0804FC3C() {
    return 1;
}

void nullsub_432() {
}

u32 sub_0804FC44() {
    return 1;
}

void nullsub_433() {
}

extern u32 gUnk_080F9BF8;

u32 sub_0804FC4C(void) {
    if (!CheckKinstoneFused(0xe)) {
        gRoomVars.field_0x6c = &gUnk_080F9BF8;
    }
    return 1;
}

void sub_0804FC6C() {
    sub_0805B4D0(2);
    sub_0806D0B0(0);
}

u32 sub_0804FC7C() {
    return 1;
}

void nullsub_99() {
}

u32 sub_0804FC84() {
    return 1;
}

void nullsub_100() {
}

u32 sub_0804FC8C() {
    return 1;
}

void nullsub_101() {
}

u32 sub_0804FC94() {
    return 1;
}

void nullsub_102() {
}

u32 sub_0804FC9C() {
    return 1;
}

void nullsub_103() {
}

u32 sub_0804FCA4() {
    return 1;
}

extern EntityData gUnk_080F9FA8;
extern EntityData gUnk_080F9F88;

void sub_0804FCA8(void) {
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

void nullsub_434() {
}

u32 sub_0804FCDC() {
    return 1;
}

void nullsub_435() {
}

u32 sub_0804FCE4() {
    return 1;
}

void nullsub_436() {
}

u32 sub_0804FCEC() {
    return 1;
}

void nullsub_437() {
}

u32 sub_0804FCF4() {
    return 1;
}

void nullsub_438() {
}

u32 sub_0804FCFC() {
    return 1;
}

void nullsub_439() {
}

u32 sub_0804FD04() {
    return 1;
}

void nullsub_440() {
}

u32 sub_0804FD0C() {
    return 1;
}

void nullsub_441() {
}

u32 sub_0804FD14() {
    return 1;
}

void nullsub_442() {
}

u32 sub_0804FD1C() {
    return 1;
}

void nullsub_443() {
}

u32 sub_0804FD24() {
    return 1;
}

void nullsub_444() {
}

u32 sub_0804FD2C() {
    return 1;
}

void nullsub_445() {
}

u32 sub_0804FD34() {
    return 1;
}

void nullsub_446() {
}

u32 sub_0804FD3C() {
    return 1;
}

void nullsub_447() {
}

u32 sub_0804FD44() {
    return 1;
}

void nullsub_448() {
}

u32 sub_0804FD4C() {
    return 1;
}

void nullsub_449() {
}

u32 sub_0804FD54() {
    return 1;
}

extern EntityData gUnk_080FA5D0;

void sub_0804FD58(void) {
    if (!CheckKinstoneFused(0x21)) {
        LoadRoomEntityList(&gUnk_080FA5D0);
    }
}

u32 sub_0804FD70() {
    return 1;
}
void nullsub_450() {
}

u32 sub_0804FD78() {
    return 1;
}

void nullsub_451() {
}

u32 sub_0804FD80() {
    return 1;
}

void nullsub_452() {
}

u32 sub_0804FD88() {
    return 1;
}

void nullsub_453() {
}

u32 sub_0804FD90() {
    return 1;
}

void nullsub_454() {
}

u32 sub_0804FD98() {
    return 1;
}

void nullsub_455() {
}

u32 sub_0804FDA0() {
    return 1;
}

void nullsub_456() {
}

u32 sub_0804FDA8() {
    return 1;
}

void nullsub_457() {
}

u32 sub_0804FDB0() {
    return 1;
}

void nullsub_458() {
}

u32 sub_0804FDB8() {
    return 1;
}

void nullsub_459() {
}

u32 sub_0804FDC0() {
    return 1;
}

void nullsub_460() {
}

u32 sub_0804FDC8() {
    return 1;
}

void nullsub_461() {
}

u32 sub_0804FDD0() {
    return 1;
}

void nullsub_462() {
}

u32 sub_0804FDD8() {
    return 1;
}

void nullsub_463() {
}

extern u32 gUnk_080FAD48;

u32 sub_0804FDE0(void) {
    if (CheckGlobalFlag(ENDING)) {
        gRoomVars.field_0x6c = &gUnk_080FAD48;
        gRoomVars.field_0x74 = NULL;
    }
    return 1;
}

extern EntityData gUnk_080FACB8;

void sub_0804FE04(void) {
    if (CheckGlobalFlag(ENDING)) {
        gArea.pMusicIndex = gArea.musicIndex;
    } else {
        LoadRoomEntityList(&gUnk_080FACB8);
    }
    sub_0805B4D0(0);
    sub_08059994();
}

void sub_0804FE40() {
    sub_0805B4D0(0);
}

u32 sub_0804FE4C() {
    return 1;
}

void nullsub_104() {
}

u32 sub_0804FE54() {
    return 1;
}

extern EntityData gUnk_080FAFE4;
extern EntityData gUnk_080FB004;

void sub_0804FE58(void) {

    sub_0805B4D0(1);
    if (CheckGlobalFlag(LV2_CLEAR) && !CheckLocalFlag(LV1_CLEAR)) {
        LoadRoomEntityList(&gUnk_080FAFE4);
    }
    if ((gUnk_02002A40.windcrests & 0x1000000) == 0) {
        LoadRoomEntityList(&gUnk_080FB004);
    }
    if (GetInventoryValue(0x2)) {
        SetGlobalFlag(WHITE_SWORD_END);
    }
}

extern EntityData gUnk_080FB004;

void sub_0804FEAC(void) {
    if ((gUnk_02002A40.windcrests & 0x1000000) == 0) {
        LoadRoomEntityList(&gUnk_080FB004);
    }
}

u32 sub_0804FECC() {
    return 1;
}

void nullsub_464() {
}

u32 sub_0804FED4() {
    return 1;
}

void sub_0804FED8(void) {
    SetTileType(0x176, 0x66f, 1);
}

u32 sub_0804FEEC() {
    return 1;
}

void nullsub_465() {
}

u32 sub_0804FEF4() {
    return 1;
}

void nullsub_466() {
}

u32 sub_0804FEFC() {
    return 1;
}

void nullsub_467() {
}

u32 sub_0804FF04() {
    return 1;
}

void nullsub_468() {
}

u32 sub_0804FF0C() {
    return 1;
}

void nullsub_469() {
}

u32 sub_0804FF14() {
    return 1;
}

void nullsub_470() {
}

u32 sub_0804FF1C() {
    return 1;
}

void nullsub_471() {
}

u32 sub_0804FF24() {
    return 1;
}

void nullsub_472() {
}

u32 sub_0804FF2C() {
    return 1;
}

void nullsub_473() {
}

u32 sub_0804FF34() {
    return 1;
}

void nullsub_474() {
}

u32 sub_0804FF3C() {
    return 1;
}

void nullsub_475() {
}

u32 sub_0804FF44() {
    return 1;
}

void nullsub_476() {
}

u32 sub_0804FF4C() {
    return 1;
}

void nullsub_477() {
}

u32 sub_0804FF54() {
    return 1;
}

void nullsub_478() {
}

u32 sub_0804FF5C() {
    return 1;
}

void sub_0804FF60(void) {
    if (!CheckLocalFlag(0x70)) {
        SetLocalFlag(0x70);
    }
}

u32 sub_0804FF74() {
    return 1;
}

void nullsub_105() {
}

u32 sub_0804FF7C() {
    return 1;
}

void nullsub_106() {
}

void sub_0804FF84(u32 arg0) {
    ((struct_02000000*)0x02000000)->brightnessPref = arg0;
    gUsedPalettes = (u32)-1;
}
