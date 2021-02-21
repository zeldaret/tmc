#include "global.h"
#include "entity.h"

extern void sub_0806F69C(Entity*);
extern u32 sub_080AE4CC(Entity*, u32, u32, u32);

extern void* gUnk_02027EB4;
extern void* gUnk_0200D654;

void ObjectB2(Entity* this) {
    void* pEVar3;

    if (this->action == 0) {
        this->action = 1;
        this->actionDelay = 0x10;
        this->direction = (this->entityType).form << 3;
        if (this->collisionLayer == 2) {
            pEVar3 = &gUnk_0200D654;
        } else {
            pEVar3 = &gUnk_02027EB4;
        }
        this->attachedEntity = pEVar3;
        InitializeAnimation(this, this->entityType.form);
    }
    this->nonPlanarMovement = this->parent->nonPlanarMovement;
    sub_0806F69C(this);
    if (sub_080AE4CC(this->attachedEntity, this->x.HALF.HI, this->y.HALF.HI, 9) != 0) {
        DeleteThisEntity();
    }
    if (this->nonPlanarMovement < 0x41) {
        this->spriteSettings.b.draw ^= 1;

        if (--this->actionDelay == 0) {
            DeleteThisEntity();
        }
    }
    GetNextFrame(this);
}
