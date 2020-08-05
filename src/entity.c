#include "global.h"
#include "entity.h"

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
extern Entity* sub_0805E8D4();

Entity* sub_0805E768(int type)

{
    Entity* (*getter)(void) = NULL;
    if (type == 9) {
        getter = sub_0805E8D4;
    } else {
        getter = GetEmptyEntity;
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
extern void gUnk_03005F24();
extern void sub_0805E79C(Entity*);

void DeleteThisEntity(void)

{
    sub_0805E79C(gUnk_03003DD0.field_0x8);
    _call_via_r0((u32*)&gUnk_03005F24);
    return;
}

extern void DeleteEntity(Entity*);
extern void sub_0805E900(Entity*);

void sub_0805E79C(Entity* ent)

{
    void (*deleter)(Entity*) = NULL;
    if (ent->entityType.type == 9) {
        deleter = sub_0805E900;
    } else {
        deleter = DeleteEntity;
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
        ent->field_0x0 = (u32*)0xffffffff;
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
