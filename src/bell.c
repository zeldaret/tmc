#include "global.h"
#include "entity.h"

extern void sub_080042B8();
extern void (*gUnk_08123384[])(Entity *);

extern void UpdateSpriteOrderAndFlip(Entity *);
extern void LoadAnimation();


void sub_08097D78(Entity* this){
    gUnk_08123384[this->action](this);
}

void sub_08097D90(Entity* this){
    this->action = 1;
    this->spriteSettings.b.ss0 = 1;
    this->collisionLayer = 1;
    this->ticks.b0 = 0;
    UpdateSpriteOrderAndFlip(this);
    LoadAnimation(this, 0);
}

void sub_08097DCC(Entity* this){
    sub_080042B8(this);
}