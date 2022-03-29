
#include "entity.h"
#include "physics.h"

void sub_080AABB0(Entity*);

void GuruguruBarProjectile(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 0);
    }
    sub_080AABB0(this);
    GetNextFrame(this);
}

void sub_080AABB0(Entity* this) {
    u32 factor;
    const s16* tmp;
    Entity* parent;

    parent = this->parent;
    CopyPosition(parent, this);

    tmp = &gSineTable[parent->animationState];
    factor = this->actionDelay << 8;
    this->x.WORD += tmp[0] * factor;
    this->y.WORD -= tmp[0x40] * factor;
}
