/**
 * @file frozenFlower.c
 * @ingroup Objects
 *
 * @brief Frozen Flower object
 */
#include "object.h"

void FrozenFlower_Init(Entity*);
void FrozenFlower_Action1(Entity*);

void FrozenFlower(Entity* this) {
    static void (*const FrozenFlower_Actions[])(Entity*) = {
        FrozenFlower_Init,
        FrozenFlower_Action1,
    };
    FrozenFlower_Actions[this->action](this);
}

void FrozenFlower_Init(Entity* this) {
    this->action = 1;
    this->frameIndex = this->type;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = 7;
}

void FrozenFlower_Action1(Entity* this) {
}
