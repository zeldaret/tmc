/**
 * @file pinwheel.c
 * @ingroup Objects
 *
 * @brief Pinwheel object
 */
#include "entity.h"
#include "flags.h"
#include "global.h"
#include "object.h"

static const u16 gUnk_08125050[] = {
    KUMOUE_02_AWASE_01, KUMOUE_02_AWASE_02, KUMOUE_02_AWASE_03, KUMOUE_02_AWASE_04, KUMOUE_02_AWASE_05, BEGIN_1,
};
extern u32 gUnk_020342F8;

void Pinwheel_Init(Entity*);
void Pinwheel_Action1(Entity*);
void Pinwheel_Action2(Entity*);

void Pinwheel(Entity* this) {
    static void (*const Pinwheel_Actions[])(Entity*) = {
        Pinwheel_Init,
        Pinwheel_Action1,
        Pinwheel_Action2,
    };
    u16 x = this->health;
    if ((x & 0x7f) != 0) {
        if (ReadBit(&gUnk_020342F8, x - 1) == 0) {
            DeleteThisEntity();
        }
    }
    Pinwheel_Actions[this->action](this);
}

void Pinwheel_Init(Entity* this) {
    this->field_0x68.HWORD = gUnk_08125050[this->type2];
    this->spritePriority.b0 = 7;
    if (CheckLocalFlag(this->field_0x68.HWORD) != 0) {
        this->action = 2;
    } else {
        this->action = 1;
    }
    InitializeAnimation(this, 0);
}

void Pinwheel_Action1(Entity* this) {
    if (CheckLocalFlag(this->field_0x68.HWORD) != 0) {
        this->action = 2;
        CreateDust(this);
    }
}
void Pinwheel_Action2(Entity* this) {
    GetNextFrame(this);
}
