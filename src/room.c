// TODO: original name is probably floor.c

#include "area.h"
#include "common.h"
#include "enemy.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "manager/bombableWallManager.h"
#include "map.h"
#include "object.h"
#include "room.h"
#include "tiles.h"

static void sub_0804B058(EntityData* dat);
extern void sub_0801AC98(void);
extern u32 EnemyEnableRespawn(u32);

extern void** gCurrentRoomProperties;
extern void*** gAreaTable[];
extern u8 gEntityListLUT[];

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
            AppendEntityToList(ent, gEntityListLUT[kind]);
        } else if (list == 8) {
            AppendEntityToList(ent, 8);
        } else {
            AppendEntityToList(ent, list);
        }
    }
    offset = &((GenericEntity*)ent)->field_0x78;
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
            ((Enemy*)ent)->enemyFlags |= EM_FLAG_CAPTAIN;
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
        gRoomVars.properties[i] = gCurrentRoomProperties[i];
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
                if (EnemyEnableRespawn(uVar2) != 0) {
                    ent = LoadRoomEntity(dat);
                    if ((ent != NULL) && (ent->kind == ENEMY)) {
                        ((Enemy*)ent)->idx = uVar2 | 0x80; // TODO Set the room tracker flag that can be set by the
                                                           // enemy so it does not appear next time the room is visited?
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

void sub_0804B0B0(u32 area, u32 room) {
    LoadRoomEntityList(GetRoomProperty(area, room, 1));
}

void SetCurrentRoomPropertyList(u32 area, u32 room) {
    gCurrentRoomProperties = NULL;
    if (gAreaTable[area] != NULL) {
        gCurrentRoomProperties = gAreaTable[area][room];
    }
}

void sub_0804B0E8(u32 area, u32 room) {
    void (*func)(void);

    // init function at index 4 of room data
    func = (void (*)())GetRoomProperty(area, room, 4);
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

    if (idx >= 0x80) { // TODO different kind of room properties?
        return gRoomVars.entityRails[idx & 7];
    } else if (idx <= 7) {
        return gRoomVars.properties[idx];
    } else {
        return gCurrentRoomProperties[idx];
    }
}

void sub_0804B16C(void) {
    TileEntity* tileEntity = gSmallChests;
    do {
        if (tileEntity->tilePos != 0 && CheckLocalFlag(tileEntity->localFlag)) {
            SetTileType(TILE_TYPE_116, tileEntity->tilePos, tileEntity->_6 & 1 ? LAYER_TOP : LAYER_BOTTOM);
        }
    } while (++tileEntity < gSmallChests + 8);
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

static void LoadGrassDropTile(TileEntity* tileEntity) {
    MemCopy(&gAreaDroptables[tileEntity->localFlag], &gRoomVars.currentAreaDroptable, 0x20);
}

static void LoadLocationTile(TileEntity* tileEntity) {
    gArea.locationIndex = tileEntity->localFlag;
    sub_08054524();
}

static void LoadRoomVisitTile(TileEntity* tileEntity) {
    SetLocalFlag(tileEntity->localFlag);
}

static void LoadSmallChestTile(TileEntity* tileEntity) {
    TileEntity* t = gSmallChests;
    u32 i = 0;
    for (i = 0; i < 8; ++i, ++t) {
        if (!t->tilePos) {
            MemCopy(tileEntity, t, sizeof(TileEntity));
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

static void LoadBombableWallTile(TileEntity* tileEntity) {
    BombableWallManager* mgr = (BombableWallManager*)GetEmptyManager();
    if (mgr != NULL) {
        mgr->base.kind = MANAGER;
        mgr->base.id = BOMBABLE_WALL_MANAGER;
        mgr->x = tileEntity->tilePos;
        mgr->y = *(u16*)&tileEntity->_6;
        mgr->layer = tileEntity->_2;
        mgr->flag = tileEntity->localFlag;
        AppendEntityToList((Entity*)mgr, 6);
    }
}

static void LoadDarknessTile(TileEntity* tileEntity) {
    sub_0805BB00(tileEntity->_3, 1);
}

static void LoadDestructibleTile(TileEntity* tileEntity) {
    if (CheckLocalFlag(*(u16*)&tileEntity->_2)) {
        SetTileType(*(u16*)&tileEntity->_6, tileEntity->tilePos, tileEntity->localFlag);
    } else if (!gRoomVars.destructableManagerLoaded) {
        Manager* mgr;
        gRoomVars.destructableManagerLoaded = TRUE;
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

void LoadSmallChestTile2(TileEntity* tileEntity) {
    LoadSmallChestTile(tileEntity);
}
