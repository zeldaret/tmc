#include "global.h"
#include "area.h"
#include "room.h"
#include "flags.h"
#include "functions.h"
#include "utils.h"

extern void sub_0804B058(EntityData* dat);
extern void sub_0801AC98();
extern u32 sub_08049D1C(u32);
extern Entity* LoadRoomEntity(EntityData*);
extern void* GetRoomProperty(u32, u32, u32);

extern void** gCurrentRoomProperties;
extern void*** gAreaTable[];
extern u8 gUnk_081091E4[];

extern void sub_080186EC();
extern void sub_0804B16C();
extern void sub_080A7C7C(void);
extern Entity* GetEmptyEntityByKind(u32 kind);

void RegisterRoomEntity(Entity*, EntityData*);
void sub_0804AF0C(Entity*, EntityData*);
void sub_0804AFB0(void** properties);

void LoadRoomEntityList(EntityData* listPtr) {
    if (listPtr != NULL) {
        while (listPtr->kind != 0xFF) {
            LoadRoomEntity(listPtr++);
        }
    }
}

NONMATCH("asm/loadRoomEntity.s", Entity* LoadRoomEntity(EntityData* dat)) {
    int kind;
    Entity* v4;
    Entity* v5;

    kind = dat->kind & 0xF;
    if ((dat->flags & 0xF0) == 0x50 && DeepFindEntityByID(kind, dat->id))
        return NULL;
    v4 = GetEmptyEntityByKind(kind);
    v5 = v4;
    if (v4 != NULL) {
        v4->kind = kind;
        v4->id = dat->id;
        v4->type = dat->type;
        RegisterRoomEntity(v4, dat);
        if ((dat->flags & 0xF0) != 16) {
            v5->type2 = dat->type2;
            v5->actionDelay = (dat->type2 & 0xFF00) >> 8;
            if (kind == 9)
                return v5;
            sub_0804AF0C(v5, dat);
            if (!v5->next)
                return v5;
            if ((dat->kind & 0x10) == 0) {
                if ((dat->kind & 0x20) != 0) {
                    v5->collisionLayer = 2;
                    return v5;
                }
                if ((gRoomControls.unk6 & 2) == 0) {
                    sub_08016A30(v5);
                }
            }
            v5->collisionLayer = 1;
        }
    }
    return v5;
}
END_NONMATCH

void RegisterRoomEntity(Entity* ent, EntityData* dat) {
    u32 list;
    u32 kind;
    void* offset;

    list = dat->flags & 0xF;
    kind = dat->kind & 0xF;
    if (ent->prev == NULL) {
        if (list == 0xF) {
            AppendEntityToList(ent, gUnk_081091E4[kind]);
        } else if (list == 8) {
            AppendEntityToList(ent, 8);
        } else {
            AppendEntityToList(ent, list);
        }
    }
    offset = &ent->field_0x78;
    if (kind == MANAGER)
        offset = &ent->y;
    MemCopy(dat, offset, sizeof(EntityData));
}

void sub_0804AF0C(Entity* ent, EntityData* dat) {
    switch (dat->flags & 0xf0) {
        case 0x0:
            ent->x.HALF.HI = dat->xPos + gRoomControls.roomOriginX;
            ent->y.HALF.HI = dat->yPos + gRoomControls.roomOriginY;
            break;
        case 0x20:
            ent->field_0x6c.HALF.HI |= 0x20;
            ent->x.HALF.HI = dat->xPos + gRoomControls.roomOriginX;
            ent->y.HALF.HI = dat->yPos + gRoomControls.roomOriginY;
            break;
        case 0x40:
            ent->x.HALF.HI = dat->xPos + gRoomControls.roomOriginX;
            ent->y.HALF.HI = dat->yPos + gRoomControls.roomOriginY;
            if (!StartCutscene(ent, (u16*)dat->spritePtr))
                DeleteEntity(ent);
            break;
    }
}

void sub_0804AF90(void) {
    sub_0804AFB0(gArea.field_0x85c[7]);
    sub_080A7C7C();
}

void sub_0804AFB0(void** properties) {
    u32 i;

    gCurrentRoomProperties = properties;
    for (i = 0; i < 8; ++i) {
        gRoomVars.field_0x6c[i] = gCurrentRoomProperties[i];
    }
}

u32 sub_0804AFDC() {
    u32 result;
    u32 (*func)();

    result = 1;
    func = (u32(*)())GetCurrentRoomProperty(6);
    if (func != NULL)
        result = func();
    return result;
}

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

    if ((dat != NULL) && dat->kind != 0xff) {
        uVar2 = 0;
        do {
            if ((uVar2 < 0x20) && ((dat->kind & 0xF) == 3)) {
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
        } while (dat->kind != 0xff);
    }
}

void sub_0804B0B0(u32 arg0, u32 arg1) {
    LoadRoomEntityList(GetRoomProperty(arg0, arg1, 1));
}

void SetCurrentRoomPropertyList(u32 area, u32 room) {
    gCurrentRoomProperties = NULL;
    if (gAreaTable[area] != NULL) {
        gCurrentRoomProperties = gAreaTable[area][room];
    }
}

void sub_0804B0E8(u32 arg0, u32 arg1) {
    void (*func)();

    // init function at index 4 of room data

    func = (void (*)())GetRoomProperty(arg0, arg1, 4);
    if (func != NULL) {
        func();
    }
}

void* GetRoomProperty(u32 area, u32 room, u32 property) {
    void** temp;
    temp = NULL;
    if (gAreaTable[area] != NULL) {
        temp = gAreaTable[area][room];
        if (temp != NULL) {
            temp = temp[property];
        }
    }
    return temp;
}
