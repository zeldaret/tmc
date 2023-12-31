/**
 * @file ezloCapFlying.c
 * @ingroup Objects
 *
 * @brief Ezlo Cap Flying object
 */
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[6];
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u8 unk_70[2];
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
} EzloCapFlyingEntity;

void EzloCapFlying_Init(EzloCapFlyingEntity*);
void EzloCapFlying_Action1(EzloCapFlyingEntity*);
void EzloCapFlying_Action1Type0(EzloCapFlyingEntity*);
void EzloCapFlying_Action1Type1(EzloCapFlyingEntity*);
void sub_080936C8(EzloCapFlyingEntity*);

void EzloCapFlying(EzloCapFlyingEntity* this) {
    static void (*const EzloCapFlying_Actions[])(EzloCapFlyingEntity*) = {
        EzloCapFlying_Init,
        EzloCapFlying_Action1,
    };
    if ((gPlayerState.flags & PL_PARACHUTE) == 0) {
        if (super->type == 0) {
            gRoomControls.camera_target = &gPlayerEntity.base;
        }
        DeleteThisEntity();
    }
    EzloCapFlying_Actions[super->action](this);
}

void EzloCapFlying_Init(EzloCapFlyingEntity* this) {
    super->action = 1;
    super->lastFrameIndex = 0xff;
    super->palette.b.b0 = gPlayerEntity.base.palette.b.b0;
    if (super->type == 0) {
        gRoomControls.camera_target = super;
        super->spriteRendering.b0 = 3;
        this->unk_6e = 0x180;
        this->unk_72 = 0x180;
        CreateObjectWithParent(super, EZLO_CAP_FLYING, 1, 0);
    }
    EzloCapFlying_Action1(this);
}

void EzloCapFlying_Action1(EzloCapFlyingEntity* this) {
    static void (*const EzloCapFlying_Action1Types[])(EzloCapFlyingEntity*) = {
        EzloCapFlying_Action1Type0,
        EzloCapFlying_Action1Type1,
    };
    EzloCapFlying_Action1Types[super->type](this);
}

void EzloCapFlying_Action1Type0(EzloCapFlyingEntity* this) {
    u32 tmp;
    if ((s16)this->unk_6e < 0) {
        this->unk_6e = -this->unk_6e;
    }
    switch (gPlayerEntity.base.subAction) {
        case 1:
            this->unk_72 -= 4;
            break;
        case 2:
            if (super->subtimer == 0) {
                if (this->unk_72 > 0x80) {
                    this->unk_72 -= 0x20;
                } else {
                    super->subtimer++;
                    SoundReq(SFX_124);
                }
                if (this->unk_6e < 0x120) {
                    this->unk_6e += 0x40;
                }
            } else if (super->subtimer != 0xff) {
                if (this->unk_72 < 0x100) {
                    this->unk_72 += 0x20;
                } else {
                    this->unk_72 = 0x100;
                }
                if (this->unk_6e > 0x100) {
                    this->unk_6e -= 0x20;
                } else {
                    this->unk_6e = 0x100;
                }
                if (this->unk_6e == 0x100) {
                    super->subtimer = 255;
                }
            } else {
                sub_080936C8(this);
            }
            break;
        case 3:
        default:
            sub_080936C8(this);
            break;
    }
    tmp = gPlayerEntity.base.animationState & 2;
    if (tmp != 0) {
        super->frameIndex = 1;
        if (gPlayerEntity.base.animationState == 2) {
            this->unk_6e = -this->unk_6e;
        }
    } else {
        super->frameIndex = tmp;
    }
    if (super->frameIndex != super->lastFrameIndex) {
        super->lastFrameIndex = super->frameIndex;
        sub_080042D0(super, super->frameIndex, super->spriteIndex);
    }
    CopyPosition(&gPlayerEntity.base, super);

    super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    sub_0806FCF4(super, this->unk_72, 10, 2);
    SetAffineInfo(super, this->unk_6e, this->unk_72, 0);
    sub_0806FEBC(&gPlayerEntity.base, 1, super);
}

void EzloCapFlying_Action1Type1(EzloCapFlyingEntity* this) {
    super->frameIndex = ((gPlayerEntity.base.direction + (gPlayerEntity.base.direction >> 1)) >> 2) + 2;
    if (super->frameIndex != super->lastFrameIndex) {
        super->lastFrameIndex = super->frameIndex;
        sub_080042D0(super, super->frameIndex, super->spriteIndex);
    }
    CopyPosition(&gPlayerEntity.base, super);
    super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    sub_0806FCF4(super, ((EzloCapFlyingEntity*)super->parent)->unk_72, 0x18, 0);
    super->spriteOffsetY = -super->spriteOffsetY;
    sub_0806FEBC(&gPlayerEntity.base, 0, super);
}

void sub_080936C8(EzloCapFlyingEntity* this) {
    s32 tmp = gPlayerEntity.unk_7c.WORD_U;
    this->unk_76 = 0x138 - (gPlayerEntity.unk_7c.WORD_U >> 2);
    this->unk_74 = 8 - (tmp / 0x3c);
    if (super->timer == 0) {
        if (this->unk_76 < this->unk_6e) {
            this->unk_6e -= 8;
            this->unk_72 += 8;
        } else {
            super->timer++;
            this->unk_6e = this->unk_76;
            this->unk_72 = this->unk_76 + 0x30;
        }
    } else {
        if (this->unk_76 + 0x30 > this->unk_6e) {
            this->unk_6e += 8;
            this->unk_72 -= 8;
        } else {
            super->timer = 0;
            this->unk_6e = this->unk_76 + 0x30;
            this->unk_72 = this->unk_76;
        }
    }
}
