/**
 * @file hittableLever.c
 * @ingroup Objects
 *
 * @brief Hittable Lever object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 wasHit; /**< Has this lever been hit before. */
    /*0x72*/ u8 unk_72[0x14];
    /*0x86*/ u16 hitFlag;
} HittableLeverEntity;

extern void (*const HittableLever_Actions[])(HittableLeverEntity*);
extern const Hitbox gUnk_08121180;

void HittableLever_UpdateTile(HittableLeverEntity*);

void HittableLever(HittableLeverEntity* this) {
    if (super->iframes == 0) {
        this->wasHit = 0;
    }
    HittableLever_Actions[super->action](this);
}

void HittableLever_Init(HittableLeverEntity* this) {
    super->action = 1;
    super->flags |= 0x80;
    super->field_0x3c = 7;
    super->hitType = 0x8f;
    super->flags2 = 0xa;
    super->hitbox = (Hitbox*)&gUnk_08121180;
    if (super->type == 0) {
        if (CheckFlags(this->hitFlag)) {
            super->type = 1;
        } else {
            super->type = 0;
        }
    } else {
        SetFlag(this->hitFlag);
    }
    HittableLever_UpdateTile(this);
}

void HittableLever_Idle(HittableLeverEntity* this) {
    if (((super->bitfield & 0x80) != 0) && (this->wasHit == 0)) {
        this->wasHit = 1;
        super->type ^= 1;
        super->iframes = -0x18;
        HittableLever_UpdateTile(this);
        if (CheckFlags(this->hitFlag)) {
            ClearFlag(this->hitFlag);
        } else {
            SetFlag(this->hitFlag);
        }
        SoundReqClipped(super, SFX_117);
    }
}

void HittableLever_UpdateTile(HittableLeverEntity* this) {
    if (super->type != 0) {
        sub_0807B7D8(0x378, COORD_TO_TILE(super), super->collisionLayer);
    } else {
        sub_0807B7D8(0x377, COORD_TO_TILE(super), super->collisionLayer);
    }
}

void (*const HittableLever_Actions[])(HittableLeverEntity*) = {
    HittableLever_Init,
    HittableLever_Idle,
};
const Hitbox gUnk_08121180 = { 0, 1, { 0, 0, 0, 0 }, 4, 3 };
