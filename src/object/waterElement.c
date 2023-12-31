/**
 * @file waterElement.c
 * @ingroup Objects
 *
 * @brief Water Element object
 */
#include "functions.h"
#include "object.h"

void WaterElement_Init(Entity*);
void WaterElement_Action1(Entity*);

void WaterElement(Entity* this) {
    static void (*const WaterElement_Actions[])(Entity*) = {
        WaterElement_Init,
        WaterElement_Action1,
    };
    WaterElement_Actions[this->action](this);
}

void WaterElement_Init(Entity* this) {
    this->action = 1;
    this->frameIndex = 0;
    this->spritePriority.b0 = 5;
}

void WaterElement_Action1(Entity* this) {
}
