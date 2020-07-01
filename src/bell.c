#include "entity.h"
#include "global.h"

extern void UpdateAnimationSingleFrame();
extern void (*gUnk_08123384[])(Entity*);

extern void UpdateSpriteOrderAndFlip(Entity*);
extern void InitAnimationForceUpdate();

void Bell(Entity* ent) {
    gUnk_08123384[ent->action](ent);
}

void sub_08097D90(Entity* ent) {
    ent->action = 1;
    ent->spriteSettings.b.ss0 = 1;
    ent->collisionLayer = 1;
    ent->ticks.b0 = 0;
    UpdateSpriteOrderAndFlip(ent);
    InitAnimationForceUpdate(ent, 0);
}

void sub_08097DCC(Entity* ent) {
    UpdateAnimationSingleFrame(ent);
}
