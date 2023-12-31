/**
 * @file picoBloom.c
 * @ingroup Objects
 *
 * @brief Pico Bloom object
 */
#include "asm.h"
#include "entity.h"
#include "sound.h"

void PicoBloom_Init(Entity*);
void PicoBloom_Action1(Entity*);
void PicoBloom_Action2(Entity*);

void PicoBloom(Entity* this) {
    static void (*const PicoBloom_Actions[])(Entity*) = {
        PicoBloom_Init,
        PicoBloom_Action1,
        PicoBloom_Action2,
    };

    PicoBloom_Actions[this->action](this);
}

void PicoBloom_Init(Entity* this) {
    static const u8 typeAnimationStates[] = { 3, 0, 3, 3, 3, 3 };
    u32 nextAction;

    nextAction = this->type2;
    if (nextAction != 1) {
        nextAction = 2;
    }
    this->action = nextAction;
    this->timer = (Random() & 0x7f) + 127;
    this->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(this);
    InitializeAnimation(this, typeAnimationStates[this->type] + this->type2);
}

void PicoBloom_Action1(Entity* this) {
    if (--this->timer == 0) {
        this->action++;
    }
}

void PicoBloom_Action2(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->frame &= ~1;
        EnqueueSFX(SFX_21B);
    }
}
