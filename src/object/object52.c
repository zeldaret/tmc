#define NENT_DEPRECATED
#include "entity.h"
#include "flags.h"
#include "room.h"

extern void sub_08078828(Entity*);
extern void sub_080A7C8C(u32 pos, u32 layer);

void Object52(Entity* this) {
    if (this->action == 0) {
        if (CheckLocalFlag(this->type)) {
            DeleteThisEntity();
        }
        this->action = 1;
        this->collisionLayer = 1;
        sub_08078828(this);
    }
    if (this->interactType != 0) {
        sub_080A7C8C(COORD_TO_TILE(this), 2);
        DeleteThisEntity();
    }
}
