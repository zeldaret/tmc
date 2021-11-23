#include "global.h"
#include "utils.h"
#include "functions.h"
#include "entity.h"
#include "area.h"
#include "room.h"
#include "script.h"
#include "textbox.h"

extern void sub_0805E3A0(void*, u32);
extern u8 gUnk_081091F8[];
extern u8 gUnk_081091EE[];
extern u8 gUpdateVisibleTiles;
extern u8 gEntCount;
extern u8 gManagerCount;
extern Manager gUnk_02033290;

void sub_0805E524(void);
void sub_0805E510(u32);
void sub_0805ED30(void);
void ClearHitboxList(void);
void sub_0806F0A4(void);
void UpdateEntities_arm(u32);
void sub_0805EE88(void);
void ClearAllDeletedEntities(void);
void DeleteAllEntities(void);
void sub_0805E98C(void);

void sub_0805E248(void) {
    s32 v0;

    v0 = gUnk_03004030.unk_00->unk_06;
    if (gRoomControls.areaID == 10 || gRoomControls.areaID == 22) {
        SetTileType(636, v0 - 65, 1);
        SetTileType(643, v0 - 65, 2);
        SetTileType(637, v0 - 64, 1);
        SetTileType(644, v0 - 64, 2);
        SetTileType(638, v0 - 63, 1);
        SetTileType(645, v0 - 63, 2);
        SetTileType(639, v0 - 1, 1);
        SetTileType(640, v0, 1);
        SetTileType(642, v0 + 1, 1);
    } else {
        SetTileType(620, v0 - 65, 1);
        SetTileType(627, v0 - 65, 2);
        SetTileType(621, v0 - 64, 1);
        SetTileType(628, v0 - 64, 2);
        SetTileType(622, v0 - 63, 1);
        SetTileType(629, v0 - 63, 2);
        SetTileType(623, v0 - 1, 1);
        SetTileType(624, v0, 1);
        SetTileType(626, v0 + 1, 1);
    }
    gUpdateVisibleTiles = 0;
}

void sub_0805E374(Entity* param_1) {
    u8 r3 = gScreenTransition.field_0x24[8];
    u8* array = gUnk_081091F8;

    if (r3 != 2) {
        array = gUnk_081091EE;
    }
    sub_0805E3A0(param_1, array[param_1->kind]);
}

void sub_0805E3A0(void* ent, u32 param) {
    Entity* e = (Entity*)ent;
    e->updateConditions2 = param;
    e->updateConditions = param;
}

bool32 CheckDontUpdate(Entity* this) {
    u32 value;

    if (this->flags & ENT_ASLEEP)
        return TRUE;
    if (this->action == 0)
        return FALSE;

    if (gUnk_03003DC0.unk0 > gUnk_03003DC0.unk1)
        value = gUnk_03003DC0.unk0;
    else
        value = gUnk_03003DC0.unk1;

    if (gMessage.doTextBox & 0x7F)
        value = value < 2 ? 2 : value;
    return value > this->updateConditions;
}

bool32 sub_0805E40C(void) {
    u32 v0 = gUnk_03003DC0.unk0;
    if (gUnk_03003DC0.unk0 <= gUnk_03003DC0.unk1)
        v0 = gUnk_03003DC0.unk1;
    return v0 != 0;
}

s32 sub_0805E428() {
    s32 result;

    sub_0805E524();
    if (gUnk_03003DC0.unk2) {
        result = 0;
        gUnk_03003DC0.unk1 = gUnk_03003DC0.unk2;
        gUnk_03003DC0.unk2 = 0;
    } else {
        result = gUnk_03003DC0.unk3;
        if (gUnk_03003DC0.unk3) {
            gUnk_03003DC0.unk1 = gUnk_03003DC0.unk3 = 0;
        }
    }
    return result;
}

s32 sub_0805E450(u32 a1) {
    if (a1 < gUnk_03003DC0.unk2 || a1 < gUnk_03003DC0.unk1)
        return 0;
    gUnk_03003DC0.unk2 = a1;
    return 1;
}

void sub_0805E470(void) {
    gUnk_03003DC0.unk3 = 1;
}

void sub_0805E47C(Entity* this) {
    this->updateConditions2 = this->updateConditions;
    this->updateConditions = 2;
    if (sub_0805E450(2))
        gUnk_03003DC0.unk4 = this;
}

void sub_0805E4A0(Entity* this) {
    sub_08078A90(1);
    this->updateConditions2 = this->updateConditions;
    this->updateConditions = 3;
    if (sub_0805E450(1))
        gUnk_03003DC0.unk4 = this;
}

void sub_0805E4CC(Entity* this) {
    sub_08078A90(0);
    sub_0805E584(this);
}

void sub_0805E4E0(Entity* a1, u32 a2) {
    if (a1 != NULL) {
        a1->updateConditions2 = a1->updateConditions;
        a1->updateConditions = 3;
    }
    if (sub_0805E450(1u))
        gUnk_03003DC0.unk4 = a1;
    sub_0805E510(a2);
}

void sub_0805E510(u32 a1) {
    if (gUnk_03003DC0.unk_0xc < a1)
        gUnk_03003DC0.unk_0xc = a1;
}

void sub_0805E524(void) {
    if (gUnk_03003DC0.unk_0xc != 0) {
        if (--gUnk_03003DC0.unk_0xc << 16 == 0)
            sub_0805E470();
    }
}

void FreezeTime(void) {
    gUnk_03003DC0.unk0 = 6;
    gPlayerEntity.updateConditions = 6;
}

void UnfreezeTime() {
    gUnk_03003DC0.unk0 = 0;
    gPlayerEntity.updateConditions = 1;
}

void sub_0805E584(Entity* e) {
    e->updateConditions = e->updateConditions2;
    sub_0805E470();
}

void sub_0805E59C() {
    gUnk_03003DC0.unk0 = 6;
}

void sub_0805E5A8() {
    gUnk_03003DC0.unk0 = 7;
}

void sub_0805E5B4() {
    gUnk_03003DC0.unk0 = 0;
}

void UpdateEntities() {
    void (*f)(u32);

    gRoomVars.filler1[0] = gRoomVars.field_0x4;
    gRoomVars.field_0x4 = 0;
    sub_0805ED30();
    sub_0805E428();
    ClearHitboxList();
    sub_0806F0A4();
    f = UpdateEntities_arm;
    f(0);
    ClearAllDeletedEntities();
    sub_0805EE88();
}

void UpdateManagers() {
    void (*f)(u32);
    f = UpdateEntities_arm;
    f(1);
    ClearAllDeletedEntities();
}

void EraseAllEntities() {
    extern u8 gUnk_03000000[];
    DeleteAllEntities();
    MemClear(&gUnk_03003DC0, 12);
    MemClear(&gPlayerEntity, 10880);
    MemClear(&gUnk_02033290, 2048);
    sub_0805E98C();
    gEntCount = 0;
    gManagerCount = 0;
    gUnk_03000000[0x427] = 1;
    gUnk_03000000[0x426] = 1;
    gUnk_03000000[0x42e] = 1;
}

ASM_FUNC("./asm/getEmptyEntity.s", Entity* GetEmptyEntity());

extern Entity gUnk_030011E8[7];

Entity* sub_0805E744(void) {
    Entity* ent = gUnk_030011E8;

    do {
        if (ent->prev == NULL) {
            return ent;
        }
    } while (++ent < &gUnk_030011E8[7]);

    return NULL;
}

Manager* GetEmptyManager(void);

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

typedef struct {
    int field_0x0;
    int field_0x4;
    Entity* field_0x8;
    int field_0xc;
} struct_03003DD0;

extern struct_03003DD0 gUnk_03003DD0;
extern u32 _call_via_r0(u32*);
extern u32 _ClearAndUpdateEntities;

void DeleteThisEntity(void) {
    DeleteEntityAny(gUnk_03003DD0.field_0x8);
    _call_via_r0((u32*)&_ClearAndUpdateEntities);
}

void DeleteManager(Manager*);

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

extern void sub_080AE068();
extern void UnloadOBJPalette();
extern void sub_0806FE84();
extern void sub_080788E0();
extern void sub_08078954();
extern void sub_0805EC60();
extern void sub_08017744(Entity*);
extern void sub_0805E92C();
extern void UnloadHitbox();
extern void sub_0804AA1C();
void UnlinkEntity();

void DeleteEntity(Entity* ent) {
    if (ent->next) {
        sub_080AE068(ent);
        UnloadOBJPalette(ent);
        sub_0806FE84(ent);
        sub_080788E0(ent);
        sub_08078954(ent);
        sub_0805EC60(ent);
        sub_08017744(ent);
        sub_0805E92C(ent);
        UnloadCutsceneData(ent);
        UnloadHitbox(ent);
        zFree(ent->myHeap);
        ent->myHeap = NULL;
        if (ent->kind == ENEMY) {
            sub_0804AA1C(ent);
        }
        COLLISION_OFF(ent);
        ent->spriteSettings.draw = 0;
        ent->field_0x3c = 0;
        ent->bitfield = 0;
        ent->knockbackDuration = 0;
        ent->health = 0;
        UnlinkEntity(ent);
        ent->next = NULL;
        ent->prev = (Entity*)0xffffffff;
    }
}

extern Entity gPlayerEntity;
void ClearDeletedEntity(Entity*);

void ClearAllDeletedEntities(void) {
    Entity* ent = &gPlayerEntity;
    do {
        if ((int)ent->prev < 0) {
            ClearDeletedEntity(ent);
        }
    } while (ent++, ent < (&gPlayerEntity + 80));
}

extern u8 gEntCount;

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

extern Manager gUnk_02033290;

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

extern u8 gManagerCount;

void DeleteManager(Manager* ent) {
    if (!ent->next)
        return;

    sub_0805E92C(ent);
    UnlinkEntity(ent);
    MemClear(ent, sizeof(Temp));
    gManagerCount--;
}

void sub_0805E92C(u32 param_1) {
    if (param_1 == gArea.unk2) {
        gArea.unk2 = 0;
        gArea.unk3 = 0;
        gArea.unk4 = 0;
    }
}

extern Entity gUnk_020369F0;
void sub_0805E98C(void);

void sub_0805E958(void) {
    MemCopy(&gEntityLists, &gUnk_020369F0, 0x48);
    sub_0805E98C();
}

void sub_0805E974(void) {
    MemCopy(&gUnk_020369F0, &gEntityLists, 0x48);
}

void sub_0805E98C(void) {
    LinkedList* list;

    for (list = gEntityLists; list < &gEntityLists[9]; list++) {
        list->last = (Entity*)list;
        list->first = (Entity*)list;
    }
}

void sub_0805E9A8(void) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (i = list->first; (u32)i != (u32)list; i = i->next) {
            i->flags &= ~2;
            if ((i->flags & 0x20) == 0) {
                i->flags |= 0x10;
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
        for (ent = list->first; (u32)ent != (u32)list; ent = next) {
            next = ent->next;
            if (ent->flags & ENT_ASLEEP)
                DeleteEntityAny(ent);
        }
    } while (++list < &gEntityLists[9]);
}

extern void sub_0805E374(Entity*);

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
    sub_0805E374(entity);
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

void UnlinkEntity(Entity* ent) {
    if (ent == gUnk_03003DD0.field_0x8) {
        gUnk_03003DD0.field_0x8 = ent->prev;
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
