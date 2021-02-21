#include "global.h"
#include "entity.h"
#include "textbox.h"

extern void sub_0806ED78(Entity*);
extern void sub_08063280();

extern void (*gMailboxBehaviors[4])(Entity*);

void Mailbox(Entity* this) {
    gMailboxBehaviors[this->action](this);

    if (this->action != 0) {
        sub_0806ED78(this);
    }
}

void sub_08063210(Entity* this) {
    this->action = 1;
    InitAnimationForceUpdate(this, 0);
}

void sub_08063220(Entity* this) {
    u8 bVar1;

    if (this->interactType != 0) {
        this->action = 2;
        bVar1 = 8;
    } else {
        bVar1 = 0;
    }

    if (this->animIndex != bVar1) {
        InitAnimationForceUpdate(this, bVar1);
    } else {
        sub_08063280(this, bVar1);
    }
}

void sub_08063254(Entity* this, u32 unused) {
    sub_08063280(this, unused);
    if ((this->frames.all & 0x80) != 0) {
        this->action = 3;
        TextboxNoOverlapFollow(0);
    }
}

void sub_08063278(Entity* this, u32 unused) {
    sub_08063280(this, unused);
}

void sub_08063280(Entity* this, u32 unused) {
    Entity* e; // r4@1
    u8 var;    // r2@1

    e = this;
    UpdateAnimationSingleFrame(e);
    var = e->frames.all & 0x7F;
    e->frames.all ^= var;
    if (var == 2)
        CreateFx(e, 49, 0);
}
