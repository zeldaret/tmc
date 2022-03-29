#include "global.h"
#include "area.h"
#include "room.h"
#include "flags.h"
#include "functions.h"
#include "common.h"
#include "object.h"
#include "game.h"

extern void sub_0804B058(EntityData* dat);
extern void sub_0801AC98(void);
extern u32 sub_08049D1C(u32);
extern Entity* LoadRoomEntity(EntityData*);
extern void* GetRoomProperty(u32, u32, u32);

extern void** gCurrentRoomProperties;
extern void*** gAreaTable[];
extern u8 gUnk_081091E4[];

extern void sub_080186EC(void);
extern void sub_0804B16C(void);
extern void ClearSmallChests(void);
extern Entity* GetEmptyEntityByKind(u32 kind);

void RegisterRoomEntity(Entity*, EntityData*);
void sub_0804AF0C(Entity*, EntityData*);
void sub_0804AFB0(void** properties);

void sub_08054524(void);
void sub_0806F704(Entity*, u32);

void sub_0805BB00(u32, u32);

static void LoadRoomVisitTile(TileEntity*);
static void LoadSmallChestTile(TileEntity*);
static void LoadBombableWallTile(TileEntity*);
static void LoadDarknessTile(TileEntity*);
static void LoadDestructibleTile(TileEntity*);
static void LoadGrassDropTile(TileEntity*);
static void LoadLocationTile(TileEntity*);

void LoadRoomEntityList(EntityData* listPtr) {
    if (listPtr != NULL) {
        while (listPtr->kind != 0xFF) {
            LoadRoomEntity(listPtr++);
        }
    }
}

NONMATCH("asm/non_matching/LoadRoomEntity.inc", Entity* LoadRoomEntity(EntityData* dat)) {
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
            v5->timer = (dat->type2 & 0xFF00) >> 8;
            if (kind == 9)
                return v5;
            sub_0804AF0C(v5, dat);
            if (v5->next == NULL)
                return v5;
            if ((dat->kind & 0x10) == 0) {
                if ((dat->kind & 0x20) != 0) {
                    v5->collisionLayer = 2;
                    return v5;
                }
                if ((gRoomControls.scroll_flags & 2) == 0) {
                    ResolveCollisionLayer(v5);
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
            ent->x.HALF.HI = dat->xPos + gRoomControls.origin_x;
            ent->y.HALF.HI = dat->yPos + gRoomControls.origin_y;
            break;
        case 0x20:
            ent->field_0x6c.HALF.HI |= 0x20;
            ent->x.HALF.HI = dat->xPos + gRoomControls.origin_x;
            ent->y.HALF.HI = dat->yPos + gRoomControls.origin_y;
            break;
        case 0x40:
            ent->x.HALF.HI = dat->xPos + gRoomControls.origin_x;
            ent->y.HALF.HI = dat->yPos + gRoomControls.origin_y;
            if (!StartCutscene(ent, (u16*)dat->spritePtr))
                DeleteEntity(ent);
            break;
    }
}

void sub_0804AF90(void) {
    sub_0804AFB0(gArea.pCurrentRoomInfo->properties);
    ClearSmallChests();
}

void sub_0804AFB0(void** properties) {
    u32 i;

    gCurrentRoomProperties = properties;
    for (i = 0; i < 8; ++i) {
        gRoomVars.field_0x6c[i] = gCurrentRoomProperties[i];
    }
}

u32 CallRoomProp6(void) {
    u32 result;
    u32 (*func)(void);

    result = 1;
    func = (u32(*)())GetCurrentRoomProperty(6);
    if (func != NULL)
        result = func();
    return result;
}

void CallRoomProp5And7(void) {
    void (*func)(void);

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
                    if ((ent != NULL) && (ent->kind == ENEMY)) {
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
    void (*func)(void);

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

void* GetCurrentRoomProperty(u32 idx) {
    if (gCurrentRoomProperties == NULL)
        return NULL;

    if (idx >= 0x80) {
        return gRoomVars.field_0x8c[idx & 7];
    } else if (idx <= 7) {
        return gRoomVars.field_0x6c[idx];
    } else {
        return gCurrentRoomProperties[idx];
    }
}

void sub_0804B16C(void) {
    TileEntity* tile = gSmallChests;
    do {
        if (tile->_4 != 0 && CheckLocalFlag(tile->_1)) {
            SetTileType(0x74, tile->_4, tile->_6 & 1 ? 2 : 1);
        }
    } while (++tile < gSmallChests + 8);
}

void LoadRoomTileEntities(TileEntity* list) {
    TileEntity* t = list;

    if (t == NULL)
        return;

    for (t; t->type != 0; ++t) {
        switch (t->type) {
            case ROOM_VISIT_MARKER:
                LoadRoomVisitTile(t);
                break;
            case SMALL_CHEST:
                LoadSmallChestTile(t);
                break;
            case BOMBABLE_WALL:
                LoadBombableWallTile(t);
                break;
            case MUSIC_SETTER:
                gArea.queued_bgm = t->_3;
                break;
            case DARKNESS:
                LoadDarknessTile(t);
                break;
            case DESTRUCTIBLE_TILE:
                LoadDestructibleTile(t);
                break;
            case GRASS_DROP_CHANGER:
                LoadGrassDropTile(t);
                break;
            case LOCATION_CHANGER:
                LoadLocationTile(t);
                break;
            case TILE_ENTITY_D:
                gRoomVars.field_0x9 = t->_3;
                break;
        }
    }
}

static void LoadGrassDropTile(TileEntity* tile) {
    MemCopy(&gAreaDroptables[tile->_1], &gRoomVars.currentAreaDroptable, 0x20);
}

static void LoadLocationTile(TileEntity* tile) {
    gArea.locationIndex = tile->_1;
    sub_08054524();
}

static void LoadRoomVisitTile(TileEntity* tile) {
    SetLocalFlag(tile->_1);
}

static void LoadSmallChestTile(TileEntity* tile) {
    TileEntity* t = gSmallChests;
    u32 i = 0;
    for (i = 0; i < 8; ++i, ++t) {
        if (!t->_4) {
            MemCopy(tile, t, sizeof(TileEntity));
            if ((t->_6 & 1) && (gRoomControls.scroll_flags & 2) && !CheckLocalFlag(t->_1)) {
                Entity* e = CreateObject(OBJECT_52, t->_1, 0);
                if (e != NULL) {
                    sub_0806F704(e, t->_4);
                }
            }
            return;
        }
    }
}

static void LoadBombableWallTile(TileEntity* tile) {
    Manager24* mgr = (Manager24*)GetEmptyManager();
    if (mgr != NULL) {
        mgr->manager.type = 9;
        mgr->manager.subtype = 0x24;
        mgr->x = tile->_4;
        mgr->y = *(u16*)&tile->_6;
        mgr->field_0x35 = tile->_2;
        mgr->field_0x3e = tile->_1;
        AppendEntityToList((Entity*)mgr, 6);
    }
}

static void LoadDarknessTile(TileEntity* tile) {
    sub_0805BB00(tile->_3, 1);
}

static void LoadDestructibleTile(TileEntity* tile) {
    if (CheckLocalFlag(*(u16*)&tile->_2)) {
        SetTileType(*(u16*)&tile->_6, tile->_4, tile->_1);
    } else if (!gRoomVars.filler_0x1) {
        Manager* mgr;
        gRoomVars.filler_0x1 = 1;
        mgr = GetEmptyManager();
        if (mgr != NULL) {
            mgr->type = 9;
            mgr->subtype = 0x2a;
            AppendEntityToList((Entity*)mgr, 6);
        }
    }
}

void sub_0804B388(u32 a1, u32 a2) {
    Entity* e;
    SetTileType(a2 == 1 ? 38 : 52, a1, a2);
    e = CreateObject(SPECIAL_FX, 2, 0);
    if (e != NULL) {
        e->collisionLayer = a2;
        sub_0806F704(e, a1);
    }
    sub_080526F8(-1);
}

void sub_0804B3C4(void* arg0) {
    LoadSmallChestTile(arg0);
}
