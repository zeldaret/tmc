#include "global.h"
#include "area.h"
#include "entity.h"
#include "utils.h"
#include "script.h"

typedef struct OtherEntity {
    struct OtherEntity* prev;
    struct OtherEntity* next;
    Entity* field_0x8;
    u8 field_0xC[0x34];
} OtherEntity;

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

OtherEntity* GetEmptyManager(void);

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

void DeleteManager(OtherEntity*);

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
        ent->flags = ent->flags & 0x7f;
        ent->spriteSettings.b.draw = 0;
        ent->field_0x3c = 0;
        ent->bitfield = 0;
        ent->knockbackDuration = 0;
        ent->currentHealth = 0;
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

extern OtherEntity gUnk_02033290;

OtherEntity* GetEmptyManager(void) {
    OtherEntity* it;
    for (it = &gUnk_02033290; it < (&gUnk_02033290 + 32); it++) {
        if (it->prev == 0) {
            return it;
        }
    }
    return NULL;
}

extern u8 gManagerCount;

void DeleteManager(OtherEntity* ent) {
    if (!ent->next)
        return;

    sub_0805E92C(ent);
    UnlinkEntity(ent);
    MemClear(ent, sizeof(OtherEntity));
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

void sub_0805E9F4(void) {
    Entity* ent;
    Entity* next;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (ent = list->first; (u32)ent != (u32)list; ent = next) {
            next = ent->next;
            if (ent->flags & 0x10)
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
