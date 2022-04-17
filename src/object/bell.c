#include "object.h"

void sub_08097D90(Entity*);
void sub_08097DCC(Entity*);

void Bell(Entity* ent) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08097D90,
        sub_08097DCC,
    };
    actionFuncs[ent->action](ent);
}

void sub_08097D90(Entity* ent) {
    ent->action = 1;
    ent->spriteSettings.draw = 1;
    ent->collisionLayer = 1;
    ent->spritePriority.b0 = 0;
    UpdateSpriteForCollisionLayer(ent);
    InitAnimationForceUpdate(ent, 0);
}

void sub_08097DCC(Entity* ent) {
    UpdateAnimationSingleFrame(ent);
}
