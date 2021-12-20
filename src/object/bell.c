#include "object.h"

extern void (*gUnk_08123384[])(Entity*);

void Bell(Entity* ent) {
    gUnk_08123384[ent->action](ent);
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
