#include "global.h"
#include "entity.h"

extern void sub_0806ED78(Entity*);
extern void InitAnimationForceUpdate();
extern void sub_08063280();
extern void TextboxNoOverlapFollow(u32);
extern void sub_080042B8();
extern void CreateFx();

extern void (*gMailboxBehaviors[4])(Entity*);

void sub_080631E8(Entity* ent) {
    gMailboxBehaviors[ent->action](ent);

    if (ent->action != 0) {
        sub_0806ED78(ent);
    }
}

void sub_08063210(Entity* ent)

{
    ent->action = 1;
    InitAnimationForceUpdate(ent, 0);
    return;
}

void sub_08063220(Entity* ent)

{
    u8 bVar1;

    if (ent->interactType != 0) {
        ent->action = 2;
        bVar1 = 8;
    } else {
        bVar1 = 0;
    }

    if (ent->field_0x58 != bVar1) {
        InitAnimationForceUpdate(ent);
    } else {
        sub_08063280(ent, bVar1);
    }
}

void sub_08063254(Entity* ent)

{
    sub_08063280(ent);
    if ((ent->frames.all & 0x80) != 0) {
        ent->action = 3;
        TextboxNoOverlapFollow(0);
    }
    return;
}

void sub_08063278(Entity* ent)

{
    sub_08063280(ent);
    return;
}

void sub_08063280(Entity* ent)

{
    Entity* e; // r4@1
    u8 var;    // r2@1

    e = ent;
    sub_080042B8();
    var = e->frames.all & 0x7F;
    e->frames.all = e->frames.all ^ var;
    if (var == 2)
        CreateFx(e, 49, 0);
}
