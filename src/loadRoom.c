#include "global.h"
#include "room.h"
#include "flags.h"
#include "functions.h"

extern void sub_0804B058(EntityData* dat);
extern void sub_0801AC98();
extern u32 sub_08049D1C(u32);
extern Entity* LoadRoomEntity(EntityData*);
extern void* GetRoomProperty(u32, u32, u32);

extern u32 gUnk_02017654;
extern u32* gAreaTable;

extern void sub_080186EC();
extern void sub_0804B16C();

void sub_0804AFF4(void) {
    void (*func)();

    sub_080186EC();
    func = (void (*)())GetCurrentRoomProperty(5);
    if (func) {
        func();
    }
    func = (void (*)())GetCurrentRoomProperty(7);
    if (func) {
        func();
    }
    sub_0804B16C();
}

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

    if ((dat != NULL) && *(u8*)dat != 0xff) {
        uVar2 = 0;
        do {
            if ((uVar2 < 0x20) && ((dat->kind) == 3)) {
                if (sub_08049D1C(uVar2) != 0) {
                    ent = LoadRoomEntity(dat);
                    if ((ent != NULL) && (ent->kind == 3)) {
                        ent->field_0x6c.HALF.LO = uVar2 | 0x80;
                    }
                }
            } else {
                LoadRoomEntity(dat);
            }
            uVar2++;
            dat++;
        } while (*(u8*)dat != 0xff);
    }
}

void sub_0804B0B0(u32 arg0, u32 arg1) {
    LoadRoomEntityList(GetRoomProperty(arg0, arg1, 1));
}

void SetCurrentRoomPropertyList(u32 arg0, u32 arg1) {
    u32** arr;
    gUnk_02017654 = 0;
    arr = &gAreaTable;
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
    arr = &gAreaTable;
    if (arr[arg0] != NULL) {
        temp = arr[arg0][arg1];
        if (temp != 0) {
            temp = *(u32*)(arg2 * 4 + temp);
        }
    }
    return (void*)temp;
}
