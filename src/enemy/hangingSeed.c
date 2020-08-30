#include "entity.h"
#include "functions.h"

extern void (*const gUnk_080CB570[])(Entity*);
extern void (*const gUnk_080CB588[])(Entity*);

void HangingSeed(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CB570);
}

void sub_080216E4(Entity* this) {
    gUnk_080CB588[this->action](this);
}

void sub_080216FC(Entity* this) {
    if (this->bitfield & 0x80) {
        CreateFx(this, 3, 0x80);
        DeleteThisEntity();
    }
}

void nullsub_7(Entity* this) {
}

void sub_08021720(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->frameIndex = this->entityType.form;
    this->spriteRendering.b3 = 1;
    this->spritePriority.b0 = 3;
}

void nullsub_08(Entity* this) {
}

// clang-format off
void (*const gUnk_080CB570[])(Entity*) = {
    sub_080216E4,
    sub_080216FC,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_7,
};

void (*const gUnk_080CB588[])(Entity*) = {
    sub_08021720,
    nullsub_08,
};
// clang-format on

