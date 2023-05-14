#include "global.h"
#include "common.h"
#include "functions.h"
#include "area.h"
#include "message.h"
#include "npc.h"
#include "manager/diggingCaveEntranceManager.h"

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
extern void sub_0804AA1C(Entity*);

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
const u8 gUnk_081091E4[] = {
    8, 1, 8, 4, 5, 8, 6, 7, 2, 6,
};

void sub_0805E248(void) {
    s32 v0;

    v0 = gDiggingCaveEntranceTransition.entrance->targetTilePosition;
    if (gRoomControls.area == AREA_VEIL_FALLS || gRoomControls.area == AREA_VEIL_FALLS_DIG_CAVE) {
        SetTileType(0x27c, v0 + TILE_POS(-1, -1), 1);
        SetTileType(0x283, v0 + TILE_POS(-1, -1), 2);
        SetTileType(0x27d, v0 + TILE_POS(0, -1), 1);
        SetTileType(0x284, v0 + TILE_POS(0, -1), 2);
        SetTileType(0x27e, v0 + TILE_POS(1, -1), 1);
        SetTileType(0x285, v0 + TILE_POS(1, -1), 2);
        SetTileType(0x27f, v0 + TILE_POS(-1, 0), 1);
        SetTileType(0x280, v0 + TILE_POS(0, 0), 1);
        SetTileType(0x282, v0 + TILE_POS(1, 0), 1);
    } else {
        SetTileType(0x26c, v0 + TILE_POS(-1, -1), 1);
        SetTileType(0x273, v0 + TILE_POS(-1, -1), 2);
        SetTileType(0x26d, v0 + TILE_POS(0, -1), 1);
        SetTileType(0x274, v0 + TILE_POS(0, -1), 2);
        SetTileType(0x26e, v0 + TILE_POS(1, -1), 1);
        SetTileType(0x275, v0 + TILE_POS(1, -1), 2);
        SetTileType(0x26f, v0 + TILE_POS(-1, 0), 1);
        SetTileType(0x270, v0 + TILE_POS(0, 0), 1);
        SetTileType(0x272, v0 + TILE_POS(1, 0), 1);
    }
    gUpdateVisibleTiles = 0;
}

const u8 gUnk_081091EE[] = {
    0, 1, 0, 0, 0, 0, 1, 1, 1, 1,
};
const u8 gUnk_081091F8[] = {
    0, 3, 0, 3, 3, 0, 3, 3, 3, 3,
};

void SetDefaultPriorityForKind(Entity* e) {
    u8 r3 = gRoomTransition.entity_update_type;
    const u8* array = gUnk_081091F8;

    if (r3 != 2) {
        array = gUnk_081091EE;
    }
    SetDefaultPriority(e, array[e->kind]);
}

void SetDefaultPriority(Entity* ent, u32 prio) {
    ent->updatePriorityPrev = prio;
    ent->updatePriority = prio;
}

bool32 EntityIsDeleted(Entity* this) {
    u32 value;

    if (this->flags & ENT_DELETED)
        return TRUE;
    if (this->action == 0)
        return FALSE;

    // pick highest
    if (gPriorityHandler.sys_priority > gPriorityHandler.ent_priority)
        value = gPriorityHandler.sys_priority;
    else
        value = gPriorityHandler.ent_priority;

    if (gMessage.doTextBox & 0x7F)
        value = max(value, PRIO_MESSAGE);
    return value > this->updatePriority;
}

bool32 AnyPrioritySet(void) {
    u32 prio = gPriorityHandler.sys_priority;
    if (gPriorityHandler.sys_priority <= gPriorityHandler.ent_priority)
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
    gPriorityHandler.sys_priority = PRIO_PLAYER_EVENT;
    gPlayerEntity.updatePriority = PRIO_PLAYER_EVENT;
}

void ResetPlayerEventPriority(void) {
    gPriorityHandler.sys_priority = PRIO_MIN;
    gPlayerEntity.updatePriority = PRIO_PLAYER;
}

void RevokePriority(Entity* e) {
    e->updatePriority = e->updatePriorityPrev;
    ResetEntityPriority();
}

void SetRoomReloadPriority(void) {
    gPriorityHandler.sys_priority = PRIO_PLAYER_EVENT;
}

void SetInitializationPriority(void) {
    gPriorityHandler.sys_priority = PRIO_HIGHEST;
}

void ResetSystemPriority(void) {
    gPriorityHandler.sys_priority = PRIO_MIN;
}

void UpdateEntities(void) {
    void (*f)(u32);

    gRoomVars.filler1[0] = gRoomVars.field_0x4;
    gRoomVars.field_0x4 = 0;
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
    MemClear(&gPlayerEntity, 10880);
    MemClear(&gUnk_02033290, 2048);
    sub_0805E98C();
    gEntCount = 0;
    gManagerCount = 0;
    gOAMControls.unk[0].unk7 = 1;
    gOAMControls.unk[0].unk6 = 1;
    gOAMControls.unk[1].unk6 = 1;
}

extern Entity gUnk_030015A0[0x48];

Entity* GetEmptyEntity() {
    u8 flags_ip;
    Entity* end;
    Entity* rv;
    Entity* currentEnt;
    LinkedList* nextList;

    LinkedList* listPtr;
    LinkedList* endListPtr;

    if (gEntCount <= 0x46) {
        currentEnt = gUnk_030015A0;
        end = currentEnt + ARRAY_COUNT(gUnk_030015A0);

        do {
            if (currentEnt->prev == 0) {
                return currentEnt;
            }
        } while (++currentEnt < end);
    }

    currentEnt = &gPlayerEntity;

    do {
        if ((s32)currentEnt->prev < 0 && (currentEnt->flags & 0xc) && currentEnt != gUpdateContext.current_entity) {
            ClearDeletedEntity(currentEnt);
            return currentEnt;
        }
    } while (++currentEnt < (Entity*)&gCarriedEntity);

    flags_ip = 0;
    rv = NULL;
    listPtr = gEntityLists;
    endListPtr = listPtr + ARRAY_COUNT(gEntityLists);

    do {
        currentEnt = listPtr->first;
        nextList = listPtr + 1;
        while ((u32)currentEnt != (u32)listPtr) {
            if (currentEnt->kind != MANAGER && flags_ip < (currentEnt->flags & 0x1c) &&
                gUpdateContext.current_entity != currentEnt) {
                flags_ip = currentEnt->flags & 0x1c;
                rv = currentEnt;
            }
            currentEnt = currentEnt->next;
        }

        listPtr = nextList;
    } while (listPtr < endListPtr);

    if (rv) {
        DeleteEntity(rv);
        ClearDeletedEntity(rv);
    }

    return rv;
}

extern Entity gItemGetEntities[7];

Entity* CreateItemGetEntity(void) {
    Entity* ent = gItemGetEntities;

    do {
        if (ent->prev == NULL) {
            return ent;
        }
    } while (++ent < &gItemGetEntities[7]);

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
            sub_0804AA1C(ent);
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
    Entity* ent = &gPlayerEntity;
    do {
        //! @bug if prev pointed to a VALID location higher than a signed int, would still be deleted
        if ((int)ent->prev < 0) {
            ClearDeletedEntity(ent);
        }
    } while (ent++, ent < (&gPlayerEntity + 80));
}

void ClearDeletedEntity(Entity* ent) {
    DmaClear32(3, ent, sizeof(Entity));
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

typedef struct Temp {
    void* prev;
    void* next;
    u8 _0[0x38];
} Temp;

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
    SetDefaultPriorityForKind(entity);
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
