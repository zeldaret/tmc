#define NENT_DEPRECATED
#include "entity.h"
#include "flags.h"
#include "hitbox.h"
#include "effects.h"

typedef struct {
    Entity base;
    u8 filler[0x1E];
    u16 objFlags;
} ObjectA6Entity;

void sub_0809F920(ObjectA6Entity*);
void sub_0809F964(ObjectA6Entity*);

void ObjectA6(Entity* this) {
    static void (*const actionFuncs[])(ObjectA6Entity*) = {
        sub_0809F920,
        sub_0809F964,
    };

    actionFuncs[this->action]((ObjectA6Entity*)this);
}

void sub_0809F920(ObjectA6Entity* this) {
    if (CheckFlags(this->objFlags)) {
        DeleteThisEntity();
    }

    super->action = 1;
    COLLISION_ON(super);
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = 1;
    super->flags2 = 2;
    super->hitbox = (Hitbox*)&gHitbox_0;
}

void sub_0809F964(ObjectA6Entity* this) {
    Entity* fxEnt;

    if (super->contactFlags == 0xa1) {
        fxEnt = CreateFx(super, FX_MAGIC_STORM, 0);
        if (fxEnt != NULL) {
            fxEnt->spritePriority.b0 = 3;
            fxEnt->spriteOffsetY = -5;
        }
        SetFlag(this->objFlags);
        DeleteThisEntity();
    }
}
