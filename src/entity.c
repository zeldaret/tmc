#include "area.h"
#include "common.h"
#include "functions.h"
#include "manager/diggingCaveEntranceManager.h"
#include "message.h"
#include "npc.h"

typedef struct Temp {
    void* prev;
    void* next;
    u8 _0[0x38];
} Temp;
#include "tiles.h"

extern u8 gUpdateVisibleTiles;
extern Manager gUnk_02033290;
void UpdatePlayerInput(void);
void ClearHitboxList(void);
void sub_0805EE88(void);
void ClearAllDeletedEntities(void);
void DeleteAllEntities(void);
void sub_0805E98C(void);
extern void UnloadOBJPalette2(Entity*);
extern void sub_08017744(Entity*);
extern void EnemyDetachFX(Entity*);

void ClearDeletedEntity(Entity*);
extern void ram_ClearAndUpdateEntities(void);
extern void ram_UpdateEntities(u32);

static void UpdatePriorityTimer(void);
static void ReleaseTransitionManager(void*);
static void UnlinkEntity(Entity*);

typedef struct {
    void* table;
    void* list_top;
    Entity* current_entity;
    void* restore_sp;
} UpdateContext;
extern UpdateContext gUpdateContext;

// List by entity kind.
const u8 gEntityListLUT[] = {
    8, 1, 8, 4, 5, 8, 6, 7, 2, 6,
};

// TODO: wrong file, maybe an "enter.c" according to lexicographical order
void sub_0805E248(void) {
    s32 tilePos;

    tilePos = gDiggingCaveEntranceTransition.entrance->targetTilePos;
    if (gRoomControls.area == AREA_VEIL_FALLS || gRoomControls.area == AREA_VEIL_FALLS_DIG_CAVE) {
        SetTileType(TILE_TYPE_636, tilePos + TILE_POS(-1, -1), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_643, tilePos + TILE_POS(-1, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_637, tilePos + TILE_POS(0, -1), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_644, tilePos + TILE_POS(0, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_638, tilePos + TILE_POS(1, -1), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_645, tilePos + TILE_POS(1, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_639, tilePos + TILE_POS(-1, 0), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_640, tilePos + TILE_POS(0, 0), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_642, tilePos + TILE_POS(1, 0), LAYER_BOTTOM);
    } else {
        SetTileType(TILE_TYPE_620, tilePos + TILE_POS(-1, -1), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_627, tilePos + TILE_POS(-1, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_621, tilePos + TILE_POS(0, -1), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_628, tilePos + TILE_POS(0, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_622, tilePos + TILE_POS(1, -1), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_629, tilePos + TILE_POS(1, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_623, tilePos + TILE_POS(-1, 0), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_624, tilePos + TILE_POS(0, 0), LAYER_BOTTOM);
        SetTileType(TILE_TYPE_626, tilePos + TILE_POS(1, 0), LAYER_BOTTOM);
    }
    gUpdateVisibleTiles = 0;
}

const u8 gPrioritiesDefault[] = {
    [0] = 0, [PLAYER] = 1, [2] = 0,   [ENEMY] = 0,       [PROJECTILE] = 0,
    [5] = 0, [OBJECT] = 1, [NPC] = 1, [PLAYER_ITEM] = 1, [MANAGER] = 1,
};
const u8 gPrioritiesKinstoneMenu[] = {
    [0] = 0, [PLAYER] = 3, [2] = 0,   [ENEMY] = 3,       [PROJECTILE] = 3,
    [5] = 0, [OBJECT] = 3, [NPC] = 3, [PLAYER_ITEM] = 3, [MANAGER] = 3,
};

void InitDefaultPriority(Entity* e) {
    u8 r3 = gRoomTransition.entity_update_type;
    const u8* array = gPrioritiesKinstoneMenu;

    if (r3 != 2) {
        array = gPrioritiesDefault;
    }
    SetEntityPriority(e, array[e->kind]);
}

void SetEntityPriority(Entity* ent, u32 prio) {
    ent->updatePriorityPrev = prio;
    ent->updatePriority = prio;
}

bool32 EntityDisabled(Entity* this) {
    u32 value;

    if (this->flags & ENT_DELETED)
        return TRUE;
    if (this->action == 0)
        return FALSE;

    // pick highest
    if (gPriorityHandler.event_priority > gPriorityHandler.ent_priority)
        value = gPriorityHandler.event_priority;
    else
        value = gPriorityHandler.ent_priority;

    if (gMessage.state & MESSAGE_ACTIVE)
        value = max(value, PRIO_MESSAGE);
    return value > this->updatePriority;
}

bool32 AnyPrioritySet(void) {
    u32 prio = gPriorityHandler.event_priority;
    if (gPriorityHandler.event_priority <= gPriorityHandler.ent_priority)
        prio = gPriorityHandler.ent_priority;
    return prio != PRIO_MIN;
}

static void UpdatePriority(void) {
    UpdatePriorityTimer();
    if (gPriorityHandler.queued_priority) {
        gPriorityHandler.ent_priority = gPriorityHandler.queued_priority;
        gPriorityHandler.queued_priority = PRIO_MIN;
    } else if (gPriorityHandler.queued_priority_reset) {
        gPriorityHandler.ent_priority = gPriorityHandler.queued_priority_reset = PRIO_MIN;
    }
}

s32 SetMinPriority(u32 prio) {
    if (prio < gPriorityHandler.queued_priority || prio < gPriorityHandler.ent_priority)
        return 0;
    gPriorityHandler.queued_priority = prio;
    return 1;
}

void ResetEntityPriority(void) {
    gPriorityHandler.queued_priority_reset = 1;
}

void RequestPriority(Entity* this) {
    this->updatePriorityPrev = this->updatePriority;
    this->updatePriority = PRIO_MESSAGE;
    if (SetMinPriority(PRIO_MESSAGE))
        gPriorityHandler.requester = this;
}

void RequestPriorityOverPlayer(Entity* this) {
    SetPlayerControl(1);
    this->updatePriorityPrev = this->updatePriority;
    this->updatePriority = PRIO_NO_BLOCK;
    if (SetMinPriority(PRIO_PLAYER))
        gPriorityHandler.requester = this;
}

void RevokePriorityOverPlayer(Entity* this) {
    SetPlayerControl(0);
    RevokePriority(this);
}

void RequestPriorityDuration(Entity* this, u32 time) {
    if (this != NULL) {
        this->updatePriorityPrev = this->updatePriority;
        this->updatePriority = PRIO_NO_BLOCK;
    }
    if (SetMinPriority(PRIO_PLAYER))
        gPriorityHandler.requester = this;
    SetPriorityTimer(time);
}

void SetPriorityTimer(u32 time) {
    if (gPriorityHandler.priority_timer < time)
        gPriorityHandler.priority_timer = time;
}

static void UpdatePriorityTimer(void) {
    // if timer initialized to zero, priority is indeterminate
    if (gPriorityHandler.priority_timer != 0) {
        if (--gPriorityHandler.priority_timer == 0)
            ResetEntityPriority();
    }
}

void SetPlayerEventPriority(void) {
    gPriorityHandler.event_priority = PRIO_PLAYER_EVENT;
    gPlayerEntity.base.updatePriority = PRIO_PLAYER_EVENT;
}

void ResetPlayerEventPriority(void) {
    gPriorityHandler.event_priority = PRIO_MIN;
    gPlayerEntity.base.updatePriority = PRIO_PLAYER;
}

void RevokePriority(Entity* e) {
    e->updatePriority = e->updatePriorityPrev;
    ResetEntityPriority();
}

void SetRoomReloadPriority(void) {
    gPriorityHandler.event_priority = PRIO_PLAYER_EVENT;
}

void SetInitializationPriority(void) {
    gPriorityHandler.event_priority = PRIO_HIGHEST;
}

void ClearEventPriority(void) {
    gPriorityHandler.event_priority = PRIO_MIN;
}

void UpdateEntities(void) {
    void (*f)(u32);

    // TODO: why is this needed? Does this avoid a bug?
    gRoomVars.numKinstoneDropsPrevFrame = gRoomVars.numKinstoneDrops;
    gRoomVars.numKinstoneDrops = 0;

    UpdatePlayerInput();
    UpdatePriority();
    ClearHitboxList();
    CollideFollowers();
    f = ram_UpdateEntities;
    f(0);
    ClearAllDeletedEntities();
    sub_0805EE88();
}

void UpdateManagers(void) {
    void (*f)(u32);
    f = ram_UpdateEntities;
    f(1);
    ClearAllDeletedEntities();
}

void EraseAllEntities(void) {
    DeleteAllEntities();
    MemClear(&gPriorityHandler, sizeof(PriorityHandler));
    MemClear(&gPlayerEntity.base, 10880);
    MemClear(&gUnk_02033290, 2048);
    sub_0805E98C();
    gEntCount = 0;
    gManagerCount = 0;
    gOAMControls.unk[0].unk7 = 1;
    gOAMControls.unk[0].unk6 = 1;
    gOAMControls.unk[1].unk6 = 1;
}

Entity* GetEmptyEntity() {
    u8 flags_ip;
    GenericEntity* end;
    GenericEntity* rv;
    GenericEntity* currentEnt;
    LinkedList* nextList;

    LinkedList* listPtr;
    LinkedList* endListPtr;

    if (gEntCount < MAX_ENTITIES - 1) {
        currentEnt = gEntities;
        end = currentEnt + ARRAY_COUNT(gEntities);

        do {
            if (currentEnt->base.prev == 0) {
                return &currentEnt->base;
            }
        } while (++currentEnt < end);
    }

    currentEnt = (GenericEntity*)&gPlayerEntity.base;

    do {
        if ((s32)currentEnt->base.prev < 0 && (currentEnt->base.flags & (ENT_UNUSED1 | ENT_UNUSED2)) &&
            (Entity*)currentEnt != gUpdateContext.current_entity) {
            ClearDeletedEntity(&currentEnt->base);
            return &currentEnt->base;
        }
    } while (++currentEnt < (GenericEntity*)&gCarriedEntity);

    flags_ip = 0;
    rv = NULL;
    listPtr = gEntityLists;
    endListPtr = listPtr + ARRAY_COUNT(gEntityLists);

    do {
        currentEnt = (GenericEntity*)listPtr->first;
        nextList = listPtr + 1;
        while ((u32)currentEnt != (u32)listPtr) {
            if (currentEnt->base.kind != MANAGER &&
                flags_ip < (currentEnt->base.flags & (ENT_UNUSED1 | ENT_UNUSED2 | ENT_DELETED)) &&
                gUpdateContext.current_entity != &currentEnt->base) {
                flags_ip = currentEnt->base.flags & (ENT_UNUSED1 | ENT_UNUSED2 | ENT_DELETED);
                rv = currentEnt;
            }
            currentEnt = (GenericEntity*)currentEnt->base.next;
        }

        listPtr = nextList;
    } while (listPtr < endListPtr);

    if (rv) {
        DeleteEntity(&rv->base);
        ClearDeletedEntity(&rv->base);
    }

    return &rv->base;
}

Entity* CreateAuxPlayerEntity(void) {
    GenericEntity* ent = gAuxPlayerEntities;

    do {
        if (ent->base.prev == NULL) {
            return &ent->base;
        }
    } while (++ent < &gAuxPlayerEntities[7]);

    return NULL;
}

typedef void* (*Getter)(void);

void* GetEmptyEntityByKind(u32 kind) {
    Getter getter = NULL;
    if (kind == MANAGER) {
        getter = (Getter)GetEmptyManager;
    } else {
        getter = (Getter)GetEmptyEntity;
    }
    return getter();
}

void DeleteThisEntity(void) {
    void (*f)(void);
    DeleteEntityAny(gUpdateContext.current_entity);
    f = ram_ClearAndUpdateEntities;
    f();
}

typedef void (*Deleter)(void*);

void DeleteEntityAny(Entity* ent) {
    Deleter deleter = NULL;
    if (ent->kind == MANAGER) {
        deleter = (Deleter)DeleteManager;
    } else {
        deleter = (Deleter)DeleteEntity;
    }
    deleter(ent);
}

void DeleteEntity(Entity* ent) {
    if (ent->next != NULL) {
        UnloadGFXSlots(ent);
        UnloadOBJPalette(ent);
        UnloadOBJPalette2(ent);
        RemoveInteractableObject(ent);
        FreeCarryEntity(ent);
        sub_0805EC60(ent);
        sub_08017744(ent);
        ReleaseTransitionManager(ent);
        UnloadCutsceneData(ent);
        UnloadHitbox(ent);
        zFree(ent->myHeap);
        ent->myHeap = NULL;
        if (ent->kind == ENEMY) {
            EnemyDetachFX(ent);
        }
        COLLISION_OFF(ent);
        ent->spriteSettings.draw = 0;
        ent->collisionFlags = 0;
        ent->contactFlags = 0;
        ent->knockbackDuration = 0;
        ent->health = 0;
        UnlinkEntity(ent);
        ent->next = NULL;
        ent->prev = (Entity*)0xffffffff;
    }
}

void ClearAllDeletedEntities(void) {
    GenericEntity* ent = (GenericEntity*)&gPlayerEntity.base;
    do {
        //! @bug if prev pointed to a VALID location higher than a signed int, would still be deleted
        if ((int)ent->base.prev < 0) {
            ClearDeletedEntity(&ent->base);
        }
    } while (ent++, ent < (((GenericEntity*)&gPlayerEntity.base) + 80));
}

void ClearDeletedEntity(Entity* ent) {
    DmaClear32(3, ent, sizeof(GenericEntity));
    gEntCount--;
}

void DeleteAllEntities(void) {
    Entity* ent;
    Entity* next;
    LinkedList* it;

    it = &gEntityLists[0];
    if (it->first) {
        do {
            for (ent = it->first; (u32)ent != (u32)it; ent = next) {
                next = ent->next;
                DeleteEntityAny(ent);
            }
        } while (++it < &gEntityLists[9]);
        ClearAllDeletedEntities();
    }
}

// fix this
Manager* GetEmptyManager(void) {
    Temp* it;
    for (it = (Temp*)&gUnk_02033290; it < ((Temp*)&gUnk_02033290 + 32); it++) {
        if (it->prev == 0) {
            return (Manager*)it;
        }
    }
    return NULL;
}

void DeleteManager(void* ent) {
    Manager* manager = (Manager*)ent;
    if (manager->next == NULL)
        return;

    ReleaseTransitionManager(manager);
    UnlinkEntity((Entity*)manager);
    MemClear(manager, sizeof(Temp));
    gManagerCount--;
}

// Removes the entity from the transition manager duty, if applicable
void ReleaseTransitionManager(void* mgr) {
    if (mgr == gArea.transitionManager) {
        gArea.transitionManager = NULL;
        gArea.onEnter = NULL;
        gArea.onExit = NULL;
    }
}

extern LinkedList gEntityListsBackup;

void sub_0805E958(void) {
    MemCopy(&gEntityLists, &gEntityListsBackup, 0x48);
    sub_0805E98C();
}

void sub_0805E974(void) {
    MemCopy(&gEntityListsBackup, &gEntityLists, 0x48);
}

void sub_0805E98C(void) {
    LinkedList* list;

    for (list = gEntityLists; list < &gEntityLists[9]; list++) {
        list->last = (Entity*)list;
        list->first = (Entity*)list;
    }
}

void RecycleEntities(void) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (i = list->first; (u32)i != (u32)list; i = i->next) {
            i->flags &= ~ENT_SCRIPTED;
            if ((i->flags & ENT_PERSIST) == 0) {
                i->flags |= ENT_DELETED;
            }
        }
    } while (++list < &gEntityLists[9]);
}

void DeleteSleepingEntities(void) {
    Entity* ent;
    Entity* next;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (ent = list->first; (intptr_t)ent != (intptr_t)list; ent = next) {
            next = ent->next;
            if (ent->flags & ENT_DELETED)
                DeleteEntityAny(ent);
        }
    } while (++list < &gEntityLists[9]);
}

void AppendEntityToList(Entity* entity, u32 listIndex) {
    LinkedList* list;

    list = &gEntityLists[listIndex];
    entity->next = (Entity*)list;
    entity->prev = list->last;
    list->last->next = entity;
    list->last = entity;
    if (entity->kind != MANAGER) {
        entity->spritePriority.b0 = 4;
        gEntCount++;
    } else {
        gManagerCount++;
    }
    InitDefaultPriority(entity);
}

void PrependEntityToList(Entity* entity, u32 listIndex) {
    LinkedList* list;

    UnlinkEntity(entity);
    list = &gEntityLists[listIndex];
    entity->prev = (Entity*)list;
    entity->next = list->first;
    list->first->prev = entity;
    list->first = entity;
}

static void UnlinkEntity(Entity* ent) {
    if (ent == gUpdateContext.current_entity) {
        gUpdateContext.current_entity = ent->prev;
    }
    ent->prev->next = ent->next;
    ent->next->prev = ent->prev;
}

bool32 EntityHasDuplicateID(Entity* ent) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (i = list->first; (u32)i != (u32)list; i = i->next) {
            if ((u32)i != (u32)ent && i->kind == ent->kind && i->id == ent->id) {
                return TRUE;
            }
        }
    } while (++list < &gEntityLists[9]);

    return FALSE;
}

Entity* FindEntityByID(u32 kind, u32 id, u32 listIndex) {
    Entity* it;
    LinkedList* list;

    list = &gEntityLists[listIndex];
    for (it = list->first; (u32)it != (u32)list; it = it->next) {
        if (kind == it->kind && id == it->id)
            return it;
    }
    return NULL;
}

Entity* FindEntity(u32 kind, u32 id, u32 listIndex, u32 type, u32 type2) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[listIndex];
    for (i = list->first; (u32)i != (u32)list; i = i->next) {
        if (kind == i->kind && id == i->id && type == i->type && type2 == i->type2)
            return i;
    }
    return NULL;
}

Entity* FindNextDuplicateID(Entity* ent, int listIndex) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[listIndex];
    for (i = ent->next; (u32)i != (u32)list; i = i->next) {
        if (i->kind == ent->kind && i->id == ent->id)
            return i;
    }
    return NULL;
}

Entity* DeepFindEntityByID(u32 kind, u32 id) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (i = (Entity*)list->first; (u32)i != (u32)list; i = i->next) {
            if (kind == i->kind && (id == i->id))
                return i;
        }
    } while (++list < &gEntityLists[9]);

    return NULL;
}

void DeleteAllEnemies(void) {
    Entity* ent;
    Entity* next;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (ent = list->first; (u32)ent != (u32)list; ent = next) {
            next = ent->next;
            if (ent->kind == ENEMY)
                DeleteEntity(ent);
        }
    } while (++list < &gEntityLists[9]);
    ClearAllDeletedEntities();
}
