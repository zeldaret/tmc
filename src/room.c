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
    u8 field_0xa[8];
    u16 field_0x12;
} struct_030010A0;

typedef struct {
    u8 filler[8];
    u8 field_0x8;
} struct_02002A40;

extern struct_030010A0 gUnk_030010A0;
extern struct_02002A40 gUnk_02002A40;

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
        SetGlobalFlag(0x56);
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

extern EntityData* gUnk_080D6138;

void sub_0804B580(void) {
    sub_080575C8(0x20);
    if (gLinkEntity.y.HALF.HI - gRoomControls.roomOriginY > 0x40) {
        LoadRoomEntityList(&gUnk_080D6138);
    }
}

void sub_0804B5AC() {
    sub_080575C8(32);
}

u32 sub_0804B5B8() {
    return 1;
}

extern EntityData* gUnk_080D6210;

void sub_0804B5BC(void) {
    if (gUnk_030010A0.field_0x12 > 0x40) {
        LoadRoomEntityList(&gUnk_080D6210);
    }
}

u32 sub_0804B5D8() {
    return 1;
}

extern EntityData* gUnk_080D6340;
extern EntityData* gUnk_080D6360;
extern EntityData* gUnk_080D6380;
extern EntityData* gUnk_080D63A0;
extern EntityData* gUnk_080D63C0;
extern EntityData* gUnk_080D63E0;
extern EntityData* gUnk_080D6400;
extern EntityData* gUnk_080D6420;
extern EntityData* gUnk_080D6440;

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
    if (CheckLocalFlag(0x1f)) {
        LoadRoomEntityList(&gUnk_080D6360);
    }
    if (CheckLocalFlag(0x20)) {
        LoadRoomEntityList(&gUnk_080D6380);
    }
    if (CheckLocalFlag(0x21)) {
        LoadRoomEntityList(&gUnk_080D63A0);
    }
    if (CheckLocalFlag(0x22)) {
        LoadRoomEntityList(&gUnk_080D63C0);
    }
    if (CheckLocalFlag(0x23)) {
        LoadRoomEntityList(&gUnk_080D63E0);
    }
    if (CheckLocalFlag(0x24)) {
        LoadRoomEntityList(&gUnk_080D6400);
    }
    if (CheckLocalFlag(0x25)) {
        LoadRoomEntityList(&gUnk_080D6420);
    }
    if (CheckLocalFlag(0x26)) {
        LoadRoomEntityList(&gUnk_080D6440);
    }
}

u32 sub_0804B6EC() {
    return 1;
}

extern EntityData* gUnk_080D6578;
extern EntityData* gUnk_080D6638;
extern EntityData* gUnk_080D6558;
extern EntityData* gUnk_080D6618;

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

extern EntityData* gUnk_080D6714;
extern EntityData* gUnk_080D6734;
extern EntityData* gUnk_080D66F4;

void sub_0804B738(void) {
    if (gUnk_02002A40.field_0x8 > 4) {
        LoadRoomEntityList(&gUnk_080D6714);
    }
    // flippers
    if (!GetInventoryValue(0x46) && CheckGlobalFlag(0x29) && CheckLocalFlag(0x6a)) {
        LoadRoomEntityList(&gUnk_080D6734);
    } else {
        LoadRoomEntityList(&gUnk_080D66F4);
    }
}

u32 sub_0804B788() {
    return 1;
}

extern EntityData* gUnk_080D6924;

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

void sub_0804B7E8(void)
{
  if (CheckLocalFlag(0x91)) {
    ClearLocalFlag(0x91);
    DoFade(5, 0x100);
    gLinkEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x50;
    gLinkEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
    sub_080751E8(1, 2, &gUnk_08010A5C);
  }
}

extern u32 gUnk_080D6B18[];

u32 sub_0804B82C(void)
{
  u32 index;
  
  if (CheckLocalFlag(0x91) != 0) {
    index = Random() & 1;
    ClearLocalFlag(2);
  }
  else {
      index = 0;
      SetLocalFlag(2);
  }
  gRoomVars.field_0x78 = gUnk_080D6B18[index];
  return 1;
}

void sub_0804B86C(void)
{
  if (CheckLocalFlag(0x91) != 0) {
    ClearLocalFlag(0x91);
    DoFade(5, 0x100);
    gLinkEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x50;
    gLinkEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
    sub_080751E8(1, 2, &gUnk_08010A5C);
  }
}

extern u32 gUnk_080D6BB8[];

u32 sub_0804B8B0(void)
{
  s32 index;
  
  if (CheckLocalFlag(0x91) != 0) {
    index = (s32)Random() % 3;
    ClearLocalFlag(3);
  }
  else {
    index = 0;
    SetLocalFlag(3);
  }
  gRoomVars.field_0x78 = gUnk_080D6BB8[index];
  return 1;
}

extern void* gUnk_08010A5C[];

void sub_0804B8F0(void)
{
  if (CheckLocalFlag(0x91)) {
    ClearLocalFlag(0x91);
    DoFade(5 ,0x100);
    gLinkEntity.x.HALF.HI = gRoomControls.roomOriginX + 0x60;
    gLinkEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x38;
    sub_080751E8(1,2, &gUnk_08010A5C);
  }
}

u32 sub_0804B934() {
    return 1;
}