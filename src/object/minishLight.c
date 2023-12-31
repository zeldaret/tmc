/**
 * @file minishLight.c
 * @ingroup Objects
 *
 * @brief Minish Light object
 */
#include "entity.h"

void MinishLight_Init(Entity*);
void MinishLight_Action1(Entity*);

void MinishLight(Entity* this) {
    static void (*const MinishLight_Actions[])(Entity*) = {
        MinishLight_Init,
        MinishLight_Action1,
    };
    MinishLight_Actions[this->action](this);
}

void MinishLight_Init(Entity* this) {
    this->action = 1;
    this->frameIndex = 0;
    this->timer = 32;
    this->subtimer = 0;

    if (this->type2 != 0) {
        this->spriteSettings.flipX = 1;
    }

    UpdateSpriteForCollisionLayer(this);
}

void MinishLight_Action1(Entity* this) {
    if (--this->timer == 0) {
        if (this->subtimer == 0) {
            if (++this->frameIndex == 3) {
                this->subtimer = 1;
            }
        } else {
            if (--this->frameIndex == 0) {
                this->subtimer = 0;
            }
        }
        this->timer = 32;
    }
}
