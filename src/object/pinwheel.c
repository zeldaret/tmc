/**
 * @file pinwheel.c
 * @ingroup Objects
 *
 * @brief Pinwheel object
 */
#include "entity.h"
#include "flags.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
} PinwheelEntity;

static const u16 gUnk_08125050[] = {
    KUMOUE_02_AWASE_01, KUMOUE_02_AWASE_02, KUMOUE_02_AWASE_03, KUMOUE_02_AWASE_04, KUMOUE_02_AWASE_05, BEGIN_1,
};
extern u32 gUnk_020342F8;

void Pinwheel_Init(PinwheelEntity* this);
void Pinwheel_Action1(PinwheelEntity* this);
void Pinwheel_Action2(PinwheelEntity* this);

void Pinwheel(PinwheelEntity* this) {
    static void (*const Pinwheel_Actions[])(PinwheelEntity*) = {
        Pinwheel_Init,
        Pinwheel_Action1,
        Pinwheel_Action2,
    };
    u16 x = super->health;
    if ((x & 0x7f) != 0) {
        if (ReadBit(&gUnk_020342F8, x - 1) == 0) {
            DeleteThisEntity();
        }
    }
    Pinwheel_Actions[super->action](this);
}

void Pinwheel_Init(PinwheelEntity* this) {
    this->unk_68 = gUnk_08125050[super->type2];
    super->spritePriority.b0 = 7;
    if (CheckLocalFlag(this->unk_68) != 0) {
        super->action = 2;
    } else {
        super->action = 1;
    }
    InitializeAnimation(super, 0);
}

void Pinwheel_Action1(PinwheelEntity* this) {
    if (CheckLocalFlag(this->unk_68) != 0) {
        super->action = 2;
        CreateDust(super);
    }
}
void Pinwheel_Action2(PinwheelEntity* this) {
    GetNextFrame(super);
}
