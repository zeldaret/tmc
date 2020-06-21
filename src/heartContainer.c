#include "global.h"
#include "entity.h"

extern u32 CheckFlags(u32);
extern void DeleteThisEntity();
extern void sub_0808E714(Entity*);

extern void (*const gUnk_08121C48[])(Entity*);

extern BoundingBox gUnk_08121C58;

void HeartContainer(Entity* this) {
    gUnk_08121C48[this->action](this);
}

void sub_0808E6A0(Entity* this) {

    if (CheckFlags(*(u16*)&this->cutsceneBeh)) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->entityType.form = 0x62;
    this->spriteSettings.b.ss0 = 0;
    this->boundingBox = &gUnk_08121C58;
    this->collisionLayer = 3;
    this->scriptedScene = 3;
}

void sub_0808E6E4(Entity* this) {
    if (CheckFlags(this->field_0x86)) {
        this->action = 2;
        this->spriteSettings.b.ss0 = 1;
        this->spriteOrder.b0 = 3;
        sub_0808E714(this);
    }
}
