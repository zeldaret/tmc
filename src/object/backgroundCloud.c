/**
 * @file backgroundCloud.c
 * @ingroup Objects
 *
 * @brief BackgroundCloud object
 */
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ s16 unk_78;
    /*0x7a*/ s16 unk_7a;
} BackgroundCloudEntity;

void BackgroundCloud_Init(BackgroundCloudEntity* this);
void BackgroundCloud_Action1(BackgroundCloudEntity* this);
void BackgroundCloud_Action2(BackgroundCloudEntity* this);

void BackgroundCloud(BackgroundCloudEntity* this) {
    static void (*const BackgroundCloud_Actions[])(BackgroundCloudEntity*) = {
        BackgroundCloud_Init,
        BackgroundCloud_Action1,
        BackgroundCloud_Action2,
    };
    BackgroundCloud_Actions[super->action](this);
}

void BackgroundCloud_Init(BackgroundCloudEntity* this) {
    static const u8 gUnk_08121EB0[] = { 0x30, 0x28, 0x20 };
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->spriteOrientation.flipY = 3;
    super->spriteRendering.b3 = 3;
    super->spritePriority.b0 = super->type;
    super->frameIndex = super->type;
    super->direction = 8;
    super->speed = gUnk_08121EB0[super->type];
    this->unk_78 = gRoomControls.origin_x - 0x60;
    this->unk_7a = gRoomControls.origin_x + gRoomControls.width + 0x60;
    super->animationState = 0;
    super->x.HALF.HI += (Random() & 0xf) << 4;
    super->timer = 0;
    super->subAction = 0;
}

void BackgroundCloud_Action1(BackgroundCloudEntity* this) {
    LinearMoveUpdate(super);

    if (super->x.HALF.HI < this->unk_78 || super->x.HALF.HI > this->unk_7a)
        super->action = 2;
}

void BackgroundCloud_Action2(BackgroundCloudEntity* this) {
    static const u8 gUnk_08121EB3[] = { 0x8, 0x28, 0x48, 0x98, 0 };
    if (super->subAction == 0) {
        super->subAction = 1;
        super->timer = ((Random() & 7) << 3) + 31;

        if ((super->direction & 0x10)) {
            super->x.HALF.HI = this->unk_7a;
        } else {
            super->x.HALF.HI = this->unk_78;
        }

        if (super->type == 2)
            super->y.HALF.HI = gUnk_08121EB3[super->type2 * 2 + (Random() & 1)];
    }

    if (super->subAction == 1) {
        if (--super->timer == 0) {
            super->action = 1;
            super->subAction = 0;
        }
    }
}
