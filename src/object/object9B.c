#define NENT_DEPRECATED
#include "entity.h"
#include "physics.h"

void sub_0809E7C0(Entity*);
void sub_0809E7E0(Entity*);
void sub_0809E7FC(Entity*);

void Object9B(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0809E7C0,
        sub_0809E7E0,
    };

    actionFuncs[this->action]((Entity*)this);
}

void sub_0809E7C0(Entity* this) {
    this->action = 1;
    if (this->type2 != 0xff) {
        sub_0809E7FC(this);
    }
    InitializeAnimation(this, this->type);
}

void sub_0809E7E0(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        DeleteThisEntity();
    }
}

void sub_0809E7FC(Entity* this) {
    static const s8 gUnk_081242D8[] = {
        0, -24, 16, -16, 24, 0, 16, 16, 0, 24, -16, 16, -24, 0, -16, -16,
    };
    int iVar1;
    const s8* ptr;

    ptr = &gUnk_081242D8[this->type2 * 2];
    PositionRelative(this->parent, this, ptr[0] << 0x10, ptr[1] << 0x10);
}
