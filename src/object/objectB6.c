#define NENT_DEPRECATED
#include "entity.h"
#include "physics.h"

void ObjectB6(Entity* this) {
    if (this->parent->subAction > 3) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, this->type);
    }
    sub_0806FA90(this->parent, this, 0, this->type);
    this->spriteOffsetY = this->spriteOffsetY - this->type;
    GetNextFrame(this);
}
