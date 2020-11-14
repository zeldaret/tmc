#include "global.h"
#include "entity.h"

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

extern Entity* GetEmptyEntity();
OtherEntity* GetEmptyManager();

typedef void* (*Getter)(void);

void* GetEmptyEntityByType(int type) {
    Getter getter = NULL;
    if (type == 9) {
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
extern u32 _EntUpdate;
extern void DeleteEntityAny(Entity*);

void DeleteThisEntity(void) {
    DeleteEntityAny(gUnk_03003DD0.field_0x8);
    _call_via_r0((u32*)&_EntUpdate);
}

void DeleteEntity(Entity*);
void DeleteManager(OtherEntity*);

typedef void (*Deleter)(void*);

void DeleteEntityAny(Entity* ent) {
    Deleter deleter = NULL;
    if (ent->entityType.type == 9) {
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
extern void sub_08017744();
extern void sub_0805E92C();
extern void UnloadCutsceneData();
extern void UnloadBoundingBox();
extern void sub_0801DA0C();
extern void sub_0804AA1C();
extern void UnlinkEntity(); // Unlink

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
        UnloadBoundingBox(ent);
        sub_0801DA0C(ent->otherEntity);
        ent->otherEntity = NULL;
        if ((ent->entityType).type == 3) {
            sub_0804AA1C(ent);
        }
        ent->flags = ent->flags & 0x7f;
        ent->spriteSettings.b.draw = 0;
        ent->field_0x3c = 0;
        ent->bitfield = 0;
        ent->field_0x42 = 0;
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
    return;
}

extern u8 gEntCount;

void ClearDeletedEntity(Entity* ent) {
    DmaClear32(3, ent, sizeof(Entity));
    gEntCount--;
}

typedef struct LinkedList {
    Entity* last;
    Entity* first;
} LinkedList;

extern LinkedList gEntityLists[9];
extern EntityType gUnk_03003DB8;

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

extern void _DmaZero(void*, u32);
extern u8 gManagerCount;

void DeleteManager(OtherEntity* ent) {
    if (!ent->next)
        return;

    sub_0805E92C(ent);
    UnlinkEntity(ent);
    _DmaZero(ent, sizeof(OtherEntity));
    gManagerCount--;
}

#include "area.h"

void sub_0805E92C(u32 param_1) {
    if (param_1 == gArea.unk2) {
        gArea.unk2 = 0;
        gArea.unk3 = 0;
        gArea.unk4 = 0;
    }
}

extern Entity gUnk_020369F0;
extern void _DmaCopy(const void* src, void* dest, size_t size); // dma copy
extern void sub_0805E98C(void);

void sub_0805E958(void) {
    _DmaCopy(&gEntityLists, &gUnk_020369F0, 0x48);
    sub_0805E98C();
}

void sub_0805E974(void) {
    _DmaCopy(&gUnk_020369F0, &gEntityLists, 0x48);
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
            i->flags &= 0xfd;
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

void AppendEntityToList(Entity* ent, int listIndex) {
    LinkedList* list;

    list = &gEntityLists[listIndex];
    ent->next = (Entity*)list;
    ent->prev = list->last;
    list->last->next = ent;
    list->last = ent;
    if (ent->entityType.type != 9) {
        ent->spritePriority.b0 = 4;
        gEntCount++;
    } else {
        gManagerCount++;
    }
    sub_0805E374(ent);
}

void PrependEntityToList(Entity* ent, int listIndex) {
    LinkedList* list;

    UnlinkEntity(ent);
    list = &gEntityLists[listIndex];
    ent->prev = (Entity*)list;
    ent->next = list->first;
    list->first->prev = ent;
    list->first = ent;
}

void UnlinkEntity(Entity* ent) {
    if (ent == gUnk_03003DD0.field_0x8) {
        gUnk_03003DD0.field_0x8 = ent->prev;
    }
    ent->prev->next = ent->next;
    ent->next->prev = ent->prev;
}

bool32 DoesSimilarEntityExist(Entity* ent) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (i = list->first; (u32)i != (u32)list; i = i->next) {
            if ((u32)i != (u32)ent && i->entityType.type == ent->entityType.type &&
                i->entityType.subtype == ent->entityType.subtype) {
                return TRUE;
            }
        }
    } while (++list < &gEntityLists[9]);

    return FALSE;
}

Entity* FindEntityInListBySubtype(int type, int subtype, int listIndex) {
    Entity* it;
    LinkedList* list;

    list = &gEntityLists[listIndex];
    for (it = list->first; (u32)it != (u32)list; it = it->next) {
        if (type == it->entityType.type && subtype == it->entityType.subtype)
            return it;
    }
    return NULL;
}

Entity* FindEntityInListByForm(int type, int subtype, int listIndex, int form, int parameter) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[listIndex];
    for (i = list->first; (u32)i != (u32)list; i = i->next) {
        if (type == i->entityType.type && subtype == i->entityType.subtype && form == i->entityType.form &&
            parameter == i->entityType.parameter)
            return i;
    }
    return NULL;
}

Entity* FindNextEntityOfSameSubtype(Entity* ent, int listIndex) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[listIndex];
    for (i = ent->next; (u32)i != (u32)list; i = i->next) {
        if (i->entityType.type == ent->entityType.type && i->entityType.subtype == ent->entityType.subtype)
            return i;
    }
    return NULL;
}

Entity* FindEntityBySubtype(int type, int subtype) {
    Entity* i;
    LinkedList* list;

    list = &gEntityLists[0];
    do {
        for (i = (Entity*)list->first; (u32)i != (u32)list; i = i->next) {
            if ((type == (i->entityType).type) && (subtype == (i->entityType).subtype))
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
            if (ent->entityType.type == 3)
                DeleteEntity(ent);
        }
    } while (++list < &gEntityLists[9]);
    ClearAllDeletedEntities();
}
