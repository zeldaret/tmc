/**
 * @file hangingSeed.c
 * @ingroup Enemies
 *
 * @brief Hanging Seed enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const HangingSeed_Functions[])(Entity*);
extern void (*const gUnk_080CB588[])(Entity*);

void HangingSeed(Entity* this) {
    EnemyFunctionHandler(this, HangingSeed_Functions);
}

void HangingSeed_OnTick(Entity* this) {
    gUnk_080CB588[this->action](this);
}

void HangingSeed_OnCollision(Entity* this) {
    if (this->contactFlags & CONTACT_NOW) {
        CreateFx(this, FX_BUSH, 0x80);
        DeleteThisEntity();
    }
}

void HangingSeed_OnGrabbed(Entity* this) {
    /* ... */
}

void HangingSeed_Initialize(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->frameIndex = this->type;
    this->spriteRendering.b3 = 1;
    this->spritePriority.b0 = 3;
}

void HangingSeed_Hang(Entity* this) {
    /* ... */
}

// clang-format off
void (*const HangingSeed_Functions[])(Entity*) = {
    HangingSeed_OnTick,
    HangingSeed_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    HangingSeed_OnGrabbed,
};

void (*const gUnk_080CB588[])(Entity*) = {
    HangingSeed_Initialize,
    HangingSeed_Hang,
};
// clang-format on
