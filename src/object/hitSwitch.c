/**
 * @file hitSwitch.c
 * @ingroup Objects
 *
 * @brief Hit Switch object
 */
#include "entity.h"
#include "physics.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u8 unk_74;
    /*0x75*/ u8 unk_75;
    /*0x76*/ u8 unk_76;
} HitSwitchEntity;

void HitSwitch(HitSwitchEntity* this) {
    Entity* parent = super->parent;
    if (parent->next == NULL) {
        DeleteThisEntity();
    }

    if (super->action == 0) {
        super->action = 1;
        this->unk_76 = parent->animationState;
        this->unk_74 = super->spriteOffsetX;
        this->unk_75 = super->spriteOffsetY;
        InitializeAnimation(super, super->animationState);
    }

    if (parent->animationState != this->unk_76) {
        DeleteThisEntity();
    }
    super->spriteSettings.draw = parent->spriteSettings.draw;
    CopyPositionAndSpriteOffset(parent, super);
    super->spriteOffsetX += this->unk_74;
    super->spriteOffsetY += this->unk_75;
    if (super->animationState != 2) {
        super->y.HALF.HI++;
        super->spriteOffsetY--;
    } else {
        super->y.HALF.HI--;
        super->spriteOffsetY++;
    }

    GetNextFrame(super);
    if (super->frame & 0x80) {
        DeleteThisEntity();
    }
}
