#include "global.h"
#include "entity.h"
#include "functions.h"

extern u32 ReadBit(u32*, u32);
extern void DeleteThisEntity();
extern u32 CheckLocalFlag(u32);

extern u32 gUnk_020342F8;
extern u16 gUnk_08125050[];
extern void (*gUnk_0812505C[])(Entity*);

void Pinwheel(Entity* this) {
    u16 x = this->currentHealth;
    if ((x & 0x7f) != 0) {
        if (ReadBit(&gUnk_020342F8, x - 1) == 0) {
            DeleteThisEntity();
        }
    }
    gUnk_0812505C[this->action](this);
}

void sub_080A23DC(Entity* this) {
    this->field_0x68.HWORD = gUnk_08125050[this->entityType.parameter];
    this->spritePriority.b0 = 7;
    if (CheckLocalFlag(this->field_0x68.HWORD) != 0) {
        this->action = 2;
    } else {
        this->action = 1;
    }
    InitializeAnimation(this, 0);
}

void sub_080A2420(Entity* this) {
    if (CheckLocalFlag(this->field_0x68.HWORD) != 0) {
        this->action = 2;
        CreateDust(this);
    }
}
void sub_080A243C(Entity* this) {
    GetNextFrame(this);
}
