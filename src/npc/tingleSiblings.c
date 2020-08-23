#include "global.h"
#include "entity.h"
#include "npc.h"
#include "textbox.h"

extern void sub_08064DE4(Entity*);
extern void sub_08064D78(Entity*);
extern void sub_08064EE8(Entity*);

extern void (*const gUnk_0810FBFC[])(Entity*);

void TingleSiblings(Entity* this) {
    if ((this->flags & 2) != 0) {
        sub_08064DE4(this);
    }
    else {
        sub_08064D78(this);
    }
}

void sub_08064D78(Entity* this) {
    gUnk_0810FBFC[this->action](this);
}

void sub_08064D90(Entity* this) {
    InitAnimationForceUpdate(this, 2);
    this->field_0xf = 1;
}

void sub_08064DA0(Entity* this) {
    sub_08064EE8(this);
    if (this->interactType != 0) {
        this->action = 2;
        InitAnimationForceUpdate(this, 6);
        TextboxNoOverlapFollow(0);
    }
}

void sub_08064DCC(Entity* this) {
    sub_08064EE8(this);
    InitAnimationForceUpdate(this, 2);
    this->action = 1;
}
