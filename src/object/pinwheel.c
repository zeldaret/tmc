#include "global.h"
#include "entity.h"
#include "flags.h"
#include "object.h"

static const u16 gUnk_08125050[] = {
    KUMOUE_02_AWASE_01, KUMOUE_02_AWASE_02, KUMOUE_02_AWASE_03, KUMOUE_02_AWASE_04, KUMOUE_02_AWASE_05, BEGIN_1,
};
extern u32 gUnk_020342F8;

void sub_080A23DC(Entity*);
void sub_080A2420(Entity*);
void sub_080A243C(Entity*);

void Pinwheel(Entity* this) {
    static void (*const gUnk_0812505C[])(Entity*) = {
        sub_080A23DC,
        sub_080A2420,
        sub_080A243C,
    };
    u16 x = this->health;
    if ((x & 0x7f) != 0) {
        if (ReadBit(&gUnk_020342F8, x - 1) == 0) {
            DeleteThisEntity();
        }
    }
    gUnk_0812505C[this->action](this);
}

void sub_080A23DC(Entity* this) {
    this->field_0x68.HWORD = gUnk_08125050[this->type2];
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
