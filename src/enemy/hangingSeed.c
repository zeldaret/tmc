#include "entity.h"
#include "functions.h"

extern void (*const gHangingSeedFunctions[])(Entity*);
extern void (*const gUnk_080CB588[])(Entity*);

void HangingSeed(Entity* this) {
    EnemyFunctionHandler(this, gHangingSeedFunctions);
}

void HangingSeed_OnTick(Entity* this) {
    gUnk_080CB588[this->action](this);
}

void sub_080216FC(Entity* this) {
    if (this->bitfield & 0x80) {
        CreateFx(this, 3, 0x80);
        DeleteThisEntity();
    }
}

void nullsub_7(Entity* this) {
    /* ... */
}

void HangingSeed_Initialize(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->frameIndex = this->entityType.form;
    this->spriteRendering.b3 = 1;
    this->spritePriority.b0 = 3;
}

void HangingSeed_Hang(Entity* this) {
    /* ... */
}

// clang-format off
void (*const gHangingSeedFunctions[])(Entity*) = {
    HangingSeed_OnTick,
    sub_080216FC,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_7,
};

void (*const gUnk_080CB588[])(Entity*) = {
    HangingSeed_Initialize,
    HangingSeed_Hang,
};
// clang-format on
