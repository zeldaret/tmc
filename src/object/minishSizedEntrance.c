#include "global.h"
#include "entity.h"
#include "game.h"
#include "functions.h"

extern void (*const gUnk_08122254[])(Entity*);

void MinishSizedEntrance(Entity* this) {
    gUnk_08122254[this->action](this);
}

void sub_08090EC0(Entity* this) {
    this->action = 1;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
    this->frameIndex = this->type2;
    if (CheckIsDungeon()) {
        this->frameIndex += 4;
        sub_080AE068(this);
        LoadFixedGFX(this, 0x184);
    }
}
