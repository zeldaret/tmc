#include "global.h"
#include "entity.h"

typedef struct OtherEntity {
    struct OtherEntity* prev;
    struct OtherEntity* next;
    Entity* field_0x8;
    u8 field_0xC[0x34];
} OtherEntity;

extern Entity gUnk_030011E8[7];

Entity* sub_0805E744(void)

{
    Entity* pEVar1 = gUnk_030011E8;
    int i = 0;

    do {
        if (pEVar1->field_0x0 == NULL) {
            return pEVar1;
        }
        pEVar1 = pEVar1 + 1;
    } while (pEVar1 < &gUnk_030011E8[7]);
    return NULL;
}

extern Entity* GetEmptyEntity();
OtherEntity* sub_0805E8D4();

typedef void* (*Getter)(void);

void* sub_0805E768(int type)

{
    Getter getter = NULL;
    if (type == 9) {
        getter = (Getter)sub_0805E8D4;
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
extern u32 gUnk_03005F24;
extern void sub_0805E79C(Entity*);

void DeleteThisEntity(void)

{
    sub_0805E79C(gUnk_03003DD0.field_0x8);
    _call_via_r0((u32*)&gUnk_03005F24);
    return;
}

void DeleteEntity(Entity*);
void sub_0805E900(OtherEntity*);

typedef void (*Deleter)(void*);

void sub_0805E79C(Entity* ent)

{
    Deleter deleter = NULL;
    if (ent->entityType.type == 9) {
        deleter = (Deleter)sub_0805E900;
    } else {
        deleter = (Deleter)DeleteEntity;
    }
    deleter(ent);
}

extern void sub_080AE068();
extern void sub_0801D230();
extern void sub_0806FE84();
extern void sub_080788E0();
extern void sub_08078954();
extern void sub_0805EC60();
extern void sub_08017744();
extern void sub_0805E92C();
extern void sub_0807DB08();
extern void sub_0806FBEC();
extern void sub_0801DA0C();
extern void sub_0804AA1C();
extern void sub_0805EA98(); // Unlink

void DeleteEntity(Entity* ent)

{
    if (ent->field_0x4) {
        sub_080AE068(ent);
        sub_0801D230(ent);
        sub_0806FE84(ent);
        sub_080788E0(ent);
        sub_08078954(ent);
        sub_0805EC60(ent);
        sub_08017744(ent);
        sub_0805E92C(ent);
        sub_0807DB08(ent);
        sub_0806FBEC(ent);
        sub_0801DA0C(ent->otherEntity);
        ent->otherEntity = NULL;
        if ((ent->entityType).type == '\x03') {
            sub_0804AA1C(ent);
        }
        ent->flags = ent->flags & 0x7f;
        ent->spriteSettings = ent->spriteSettings;
        ent->spriteSettings.b.draw = 0;
        ent->field_0x3c = 0;
        ent->bitfield = 0;
        ent->field_0x42 = 0;
        ent->currentHealth = 0;
        sub_0805EA98(ent);
        ent->field_0x4 = NULL;
        ent->field_0x0 = (Entity*)0xffffffff;
    }
}

extern Entity gLinkEntity;
void sub_0805E870(Entity*);

void sub_0805E84C(void)

{
    Entity* pEVar1 = &gLinkEntity;
    do {
        if ((int)pEVar1->field_0x0 < 0) {
            sub_0805E870(pEVar1);
        }
        pEVar1 = pEVar1 + 1;
    } while (pEVar1 < (&gLinkEntity + 80));
    return;
}

extern u8 gUnk_03003DBC;

void sub_0805E870(Entity* ent)

{
    DmaClear32(3, ent, sizeof(Entity));
    gUnk_03003DBC--;
}

typedef struct struct_03003D70 {
    void* field_0x0;
    void* field_0x4;
} struct_03003D70;

extern struct_03003D70 gUnk_03003D70[9];
extern EntityType gUnk_03003DB8;

void sub_0805E89C(void)

{
    Entity* pEVar1;
    Entity* next;
    struct_03003D70* it;

    it = gUnk_03003D70;
    if (it->field_0x4 != 0) {
        do {
            next = it->field_0x4;
            while (pEVar1 = next, (u32)pEVar1 != (u32)it) {
                next = pEVar1->field_0x4;
                sub_0805E79C(pEVar1);
            }
            it++;
        } while (it < (gUnk_03003D70 + 9));
        sub_0805E84C();
    }
}

extern OtherEntity gUnk_02033290;

OtherEntity* sub_0805E8D4(void)

{
    OtherEntity* it;
    for (it = &gUnk_02033290; it < (&gUnk_02033290 + 32); it++) {
        if (it->prev == 0) {
            return it;
        }
    }
    return NULL;
}

extern void _DmaZero(void*, u32);
extern u8 gUnk_020354B4;

void sub_0805E900(OtherEntity* ent)

{
    if (!ent->next)
        return;

    sub_0805E92C(ent);
    sub_0805EA98(ent);
    _DmaZero(ent, 0x40);
    gUnk_020354B4--;
}

#include "area.h"

void sub_0805E92C(u32 param_1)

{
    if (param_1 == gArea.unk2) {
        gArea.unk2 = 0;
        gArea.unk3 = 0;
        gArea.unk4 = 0;
    }
}

extern Entity gUnk_020369F0;
extern void sub_0801D66C(void* dst, void* src, size_t size); // dma copy
extern void sub_0805E98C(void);

void sub_0805E958(void)

{
    sub_0801D66C(&gUnk_03003D70, &gUnk_020369F0, 0x48);
    sub_0805E98C();
}

void sub_0805E974(void)

{
    sub_0801D66C(&gUnk_020369F0, &gUnk_03003D70, 0x48);
}

void sub_0805E98C(void)

{
    struct_03003D70* it;

    for (it = gUnk_03003D70; it < &gUnk_03003D70[9]; it++) {
        it->field_0x0 = it;
        it->field_0x4 = (Entity*)it;
    }
}

void sub_0805E9A8(void)

{
    Entity* entry;
    struct_03003D70* it;

    it = gUnk_03003D70;
    do {
        for (entry = (Entity*)it->field_0x4; (u32)entry != (u32)it; entry = entry->field_0x4) {
            entry->flags &= 0xfd;
            if ((entry->flags & 0x20) == 0) {
                entry->flags |= 0x10;
            }
        }
        it++;
    } while (it < (gUnk_03003D70 + 9));
}

void sub_0805E9F4(void)

{
    Entity* pEVar1;
    Entity* next;
    struct_03003D70* it;

    it = gUnk_03003D70;
    do {
        next = it->field_0x4;
        while (pEVar1 = next, (u32)pEVar1 != (u32)it) {
            next = pEVar1->field_0x4;
            if ((pEVar1->flags & 0x10) != 0) {
                sub_0805E79C(pEVar1);
            }
        }
        it++;
    } while (it < (gUnk_03003D70 + 9));
}

extern void sub_0805E374(Entity*);

void sub_0805EA2C(Entity* ent, int kind)

{
    Entity* pEVar1;
    struct_03003D70* pEVar2;

    pEVar2 = (gUnk_03003D70 + kind);
    ent->field_0x4 = (Entity*)pEVar2;
    pEVar1 = pEVar2->field_0x0;
    ent->field_0x0 = pEVar1;
    pEVar1->field_0x4 = ent;
    pEVar2->field_0x0 = ent;
    if ((ent->entityType).type != 9) {
        ent->spritePriority.b0 = 4;
        gUnk_03003DBC++;
    } else {
        gUnk_020354B4++;
    }
    sub_0805E374(ent);
}

void sub_0805EA78(Entity* ent, int kind)

{
    struct_03003D70* it;

    sub_0805EA98(ent);
    it = &gUnk_03003D70[kind];
    ent->field_0x0 = (Entity*)it;
    ent->field_0x4 = it->field_0x4;
    ((Entity*)it->field_0x4)->field_0x0 = ent;
    it->field_0x4 = ent;
}

void sub_0805EA98(Entity* ent)

{
    if (ent == gUnk_03003DD0.field_0x8) {
        gUnk_03003DD0.field_0x8 = ent->field_0x0;
    }
    ent->field_0x0->field_0x4 = ent->field_0x4;
    ent->field_0x4->field_0x0 = ent->field_0x0;
}

int sub_0805EABC(Entity* ent)

{
    Entity* psVar1;
    struct_03003D70 *it, *end;

    it = gUnk_03003D70;
    end = (gUnk_03003D70 + 9);
    do {
        psVar1 = (Entity*)it->field_0x4;
        while ((u32)psVar1 != (u32)it) {
            if ((u32)psVar1 != (u32)ent && psVar1->entityType.type == ent->entityType.type &&
                psVar1->entityType.subtype == ent->entityType.subtype) {
                return 1;
            }
            psVar1 = psVar1->field_0x4;
        }
        it++;
    } while (it < end);

    return 0;
}

Entity* sub_0805EB00(int type, int subtype, int kind)

{
    Entity* it;
    struct_03003D70* node;

    node = &gUnk_03003D70[kind];
    it = (Entity*)node->field_0x4;
    while ((u32)it != (u32)node) {
        if ((type == (it->entityType).type) && (subtype == (it->entityType).subtype))
            return it;
        it = it->field_0x4;
    }
    return NULL;
}

Entity* sub_0805EB2C(int type, int subtype, int kind, int form, int parameter)

{
    Entity* it;
    struct_03003D70* node;

    node = &gUnk_03003D70[kind];
    it = (Entity*)node->field_0x4;
    while ((u32)it != (u32)node) {
        if (type == it->entityType.type && subtype == it->entityType.subtype && form == it->entityType.form &&
            parameter == it->entityType.parameter)
            return it;
        it = it->field_0x4;
    }
    return NULL;
}

Entity* sub_0805EB64(Entity* ent, int kind)

{
    Entity* it;
    struct_03003D70* end;

    end = &gUnk_03003D70[kind];
    it = ent->field_0x4;
    while ((u32)it != (u32)end) {
        if (it->entityType.type == ent->entityType.type && it->entityType.subtype == ent->entityType.subtype)
            return it;
        it = it->field_0x4;
    }
    return NULL;
}

Entity* sub_0805EB9C(int type, int subtype)

{
    Entity* it2;
    struct_03003D70 *it, *end;

    it = gUnk_03003D70;
    end = (gUnk_03003D70 + 9);
    do {
        it2 = (Entity*)it->field_0x4;
        while ((u32)it2 != (u32)it) {
            if ((type == (it2->entityType).type) && (subtype == (it2->entityType).subtype))
                return it2;
            it2 = it2->field_0x4;
        }
        it++;
    } while (it < end);

    return 0;
}

void sub_0805EBCC(void)

{
    Entity* pEVar1;
    Entity* next;
    struct_03003D70* it;

    it = gUnk_03003D70;
    do {
        next = it->field_0x4;
        while (pEVar1 = next, (u32)pEVar1 != (u32)it) {
            next = pEVar1->field_0x4;
            if (pEVar1->entityType.type == 3)
                DeleteEntity(pEVar1);
        }
        it++;
    } while (it < (gUnk_03003D70 + 9));
    sub_0805E84C();
}
