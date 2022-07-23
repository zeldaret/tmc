/**
 * @file lampParticle.c
 * @ingroup Objects
 *
 * @brief LampParticle object
 */
#define NENT_DEPRECATED
#include "entity.h"
#include "item.h"
#include "player.h"

void LampParticle_Init(Entity*);
void LampParticle_Action1(Entity*);

void LampParticle(Entity* this) {
    static void (*const LampParticle_Actions[])(Entity*) = {
        LampParticle_Init,
        LampParticle_Action1,
    };

    LampParticle_Actions[this->action]((Entity*)this);
}

void LampParticle_Init(Entity* this) {
    this->action = 1;
    this->updatePriority = 6;
    InitializeAnimation(this, this->type);
}

void LampParticle_Action1(Entity* this) {
    if (1 < IsItemEquipped(ITEM_LANTERN_ON)) {
        DeleteThisEntity();
    }
    GetNextFrame(this);

    switch (this->frame) {
        case 0x80:
            DeleteThisEntity();
        case 1:
            this->spriteSettings.draw ^= 1;
            break;
        default:
            this->spriteSettings.draw = 1;
            break;
    }

    if (this->type == 0) {
        this->z.WORD -= Q_16_16(0.5);
    }
}
