#include "area.h"
#include "common.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "global.h"
#include "manager/bombableWallManager.h"
#include "object.h"
#include "room.h"

static void sub_0804B058(EntityData* dat);
extern void sub_0801AC98(void);
extern u32 sub_08049D1C(u32);

extern void** gCurrentRoomProperties;
extern void*** gAreaTable[];
extern u8 gUnk_081091E4[];

extern void sub_080186EC(void);
extern void sub_0804B16C(void);
extern void ClearSmallChests(void);
extern Entity* GetEmptyEntityByKind(u32 kind);

void RegisterRoomEntity(Entity*, const EntityData*);
void sub_0804AF0C(Entity*, const EntityData*);
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

void LoadRoomEntityList(const EntityData* listPtr) {
    if (listPtr != NULL) {
        while (listPtr->kind != 0xFF) {
            LoadRoomEntity(listPtr++);
        }
    }
}

Entity* LoadRoomEntity(const EntityData* dat) {
    int kind;
    Entity* entity;

// r4/r5 regalloc
#ifndef NON_MATCHING
    asm("" ::: "r5");
#endif

    kind = dat->kind & 0xF;
    if ((dat->flags & 0xF0) == 0x50 && DeepFindEntityByID(kind, dat->id))
        return NULL;
    entity = GetEmptyEntityByKind(kind);
    if (entity != NULL) {
        entity->kind = kind;
        entity->id = dat->id;
        entity->type = dat->type;
        RegisterRoomEntity(entity, dat);
        if ((dat->flags & 0xF0) != 16) {
            u8 kind2;
            entity->type2 = *(u8*)&dat->type2;
            entity->timer = (dat->type2 & 0xFF00) >> 8;
            if (kind == 9)
                return entity;
            sub_0804AF0C(entity, dat);
            if (!entity->next)
                return entity;
            kind2 = dat->kind & 0xF0;
            if ((kind2 & 0x10) == 0) {
                if ((kind2 & 0x20) != 0) {
                    entity->collisionLayer = 2;
                    return entity;
                }
            }

            if ((kind2 & 0x10) || (gRoomControls.scroll_flags & 2)) {
                entity->collisionLayer = 1;
                return entity;
            }

            ResolveCollisionLayer(entity);
            return entity;
        }
    }
    return entity;
}

void RegisterRoomEntity(Entity* ent, const EntityData* dat) {
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

void sub_0804AF0C(Entity* ent, const EntityData* dat) {
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

static void sub_0804B058(EntityData* dat) {
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
        if (tile->tilePos != 0 && CheckLocalFlag(tile->localFlag)) {
            SetTileType(0x74, tile->tilePos, tile->_6 & 1 ? 2 : 1);
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
                gRoomVars.fight_bgm = t->_3;
                break;
        }
    }
}

static void LoadGrassDropTile(TileEntity* tile) {
    MemCopy(&gAreaDroptables[tile->localFlag], &gRoomVars.currentAreaDroptable, 0x20);
}

static void LoadLocationTile(TileEntity* tile) {
    gArea.locationIndex = tile->localFlag;
    sub_08054524();
}

static void LoadRoomVisitTile(TileEntity* tile) {
    SetLocalFlag(tile->localFlag);
}

static void LoadSmallChestTile(TileEntity* tile) {
    TileEntity* t = gSmallChests;
    u32 i = 0;
    for (i = 0; i < 8; ++i, ++t) {
        if (!t->tilePos) {
            MemCopy(tile, t, sizeof(TileEntity));
            if ((t->_6 & 1) && (gRoomControls.scroll_flags & 2) && !CheckLocalFlag(t->localFlag)) {
                Entity* e = CreateObject(SPECIAL_CHEST, t->localFlag, 0);
                if (e != NULL) {
                    sub_0806F704(e, t->tilePos);
                }
            }
            return;
        }
    }
}

static void LoadBombableWallTile(TileEntity* tile) {
    BombableWallManager* mgr = (BombableWallManager*)GetEmptyManager();
    if (mgr != NULL) {
        mgr->base.kind = MANAGER;
        mgr->base.id = BOMBABLE_WALL_MANAGER;
        mgr->x = tile->tilePos;
        mgr->y = *(u16*)&tile->_6;
        mgr->field_0x35 = tile->_2;
        mgr->field_0x3e = tile->localFlag;
        AppendEntityToList((Entity*)mgr, 6);
    }
}

static void LoadDarknessTile(TileEntity* tile) {
    sub_0805BB00(tile->_3, 1);
}

static void LoadDestructibleTile(TileEntity* tile) {
    if (CheckLocalFlag(*(u16*)&tile->_2)) {
        SetTileType(*(u16*)&tile->_6, tile->tilePos, tile->localFlag);
    } else if (!gRoomVars.filler_0x1) {
        Manager* mgr;
        gRoomVars.filler_0x1 = 1;
        mgr = GetEmptyManager();
        if (mgr != NULL) {
            mgr->kind = MANAGER;
            mgr->id = DESTRUCTIBLE_TILE_OBSERVE_MANAGER;
            AppendEntityToList((Entity*)mgr, 6);
        }
    }
}

void sub_0804B388(u32 a1, u32 a2) {
    Entity* e;
    SetTileType(a2 == 1 ? 38 : 52, a1, a2);
    e = CreateObject(SPECIAL_FX, FX_DEATH, 0);
    if (e != NULL) {
        e->collisionLayer = a2;
        sub_0806F704(e, a1);
    }
    ModDungeonKeys(-1);
}

void LoadSmallChestTile2(TileEntity* tile) {
    LoadSmallChestTile(tile);
}
