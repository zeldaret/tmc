#define NENT_DEPRECATED
#include "entity.h"
#include "sound.h"

void sub_0809FEF8(Entity*);
void sub_0809FF28(Entity*);

void ObjectA9(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0809FEF8,
        sub_0809FF28,
        DeleteEntity,
    };

    actionFuncs[this->action]((Entity*)this);
}

void sub_0809FEF8(Entity* this) {
    static const u8 typeAnimationStates[] = { 0x2, 0x0, 0x43, 0x0 };
    static const u16 typeSounds[] = { SFX_124, SFX_197, SFX_11D, SFX_NONE };
    this->action = 1;
    InitializeAnimation(this, typeAnimationStates[this->type]);
    SoundReq(typeSounds[this->type]);
}

void sub_0809FF28(Entity* this) {
    Entity* pEVar1;

    GetNextFrame(this);
    if (this->frame & 0x80) {
        this->action = 2;
        pEVar1 = this->parent;
        pEVar1->flags = this->actionDelay;
        pEVar1->spriteSettings.draw = this->field_0xf;
        ((GenericEntity*)pEVar1)->field_0x6c.HALF.HI &= 0xef;
    }
}
