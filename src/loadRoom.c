#include "global.h"
#include "room.h"
#include "flags.h"

void LoadRoomEntityList(EntityData* dat);
extern EntityData* GetCurrentRoomProperty(u32 unk);
extern void sub_0804B058(EntityData* dat);
extern void LoadRoomTileEntities(EntityData* dat);
extern void sub_0801AC98();
extern u32 sub_08049D1C(u32);
extern Entity* CreateEntity(EntityData*);
extern void* GetRoomProperty(u32, u32, u32);

extern u32 gUnk_02017654;
extern u32* gUnk_080D50FC;

void LoadRoom(void) {
    s32 iVar1;
    s32* dat;

    LoadRoomEntityList(GetCurrentRoomProperty(1));
    LoadRoomEntityList(GetCurrentRoomProperty(0));

    if (CheckGlobalFlag(TABIDACHI))
        sub_0804B058(GetCurrentRoomProperty(2));

    LoadRoomTileEntities(GetCurrentRoomProperty(3));
    sub_0801AC98();
}

void sub_0804B058(EntityData* dat) {
    Entity* ent;
    u32 uVar2;

    if ((dat != NULL) && (dat->entityType != 0xff)) {
        uVar2 = 0;
        do {
            if ((uVar2 < 0x20) && ((dat->entityType & 0xf) == 3)) {
                if (sub_08049D1C(uVar2) != 0) {
                    ent = CreateEntity(dat);
                    if ((ent != NULL) && ((ent->entityType).type == 3)) {
                        ent->field_0x6c = uVar2 | 0x80;
                    }
                }
            } else {
                CreateEntity(dat);
            }
            uVar2++;
            dat++;
        } while (dat->entityType != 0xff);
    }
}

void sub_0804B0B0(u32 arg0, u32 arg1) {
    LoadRoomEntityList(GetRoomProperty(arg0, arg1, 1));
}

void SetCurrentRoomPropertyList(u32 arg0, u32 arg1) {
    u32** arr;
    gUnk_02017654 = 0;
    arr = &gUnk_080D50FC;
    if (arr[arg0] != 0) {
        gUnk_02017654 = arr[arg0][arg1];
    }
}

void sub_0804B0E8(u32 arg0, u32 arg1) {
    void (*func)();

    func = (void (*)())GetRoomProperty(arg0, arg1, 4);
    if (func != NULL) {
        func();
    }
}

// returns multiple types of data?
void* GetRoomProperty(u32 arg0, u32 arg1, u32 arg2) {
    u32 temp;
    u32** arr;
    temp = 0;
    arr = &gUnk_080D50FC;
    if (arr[arg0] != NULL) {
        temp = arr[arg0][arg1];
        if (temp != 0) {
            temp = *(u32*)(arg2 * 4 + temp);
        }
    }
    return (void*)temp;
}