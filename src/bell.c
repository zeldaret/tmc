#include "entity.h"
#include "global.h"

extern void sub_080042B8();
extern void (*gUnk_08123384[])(Entity*);

extern void UpdateSpriteOrderAndFlip(Entity*);
extern void LoadAnimation();

void sub_08097D78(Entity* ent) {
    gUnk_08123384[ent->action](ent);
}

void sub_08097D90(Entity* ent) {
    ent->action = 1;
    ent->spriteSettings.b.ss0 = 1;
    ent->collisionLayer = 1;
    ent->ticks.b0 = 0;
    UpdateSpriteOrderAndFlip(ent);
    LoadAnimation(ent, 0);
}

void sub_08097DCC(Entity* ent) {
    sub_080042B8(ent);
}
