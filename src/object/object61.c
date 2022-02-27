/**
 * @file object61.c
 * @ingroup Objects
 *
 * @brief Object61 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[6];
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u8 unk_70[2];
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
} Object61Entity;

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x14];
    /*0x7c*/ u32 unk_7c;
    /*0x80*/ u8 unk_80[8];
} PlayerEntity;

#define gNewPlayerEntity (*(PlayerEntity*)&gPlayerEntity)

void Object61_Init(Object61Entity*);
void Object61_Action1(Object61Entity*);
void Object61_Action1Type0(Object61Entity*);
void Object61_Action1Type1(Object61Entity*);
void sub_080936C8(Object61Entity*);

void Object61(Object61Entity* this) {
    static void (*const Object61_Actions[])(Object61Entity*) = {
        Object61_Init,
        Object61_Action1,
    };
    if ((gPlayerState.flags & PL_PARACHUTE) == 0) {
        if (super->type == 0) {
            gRoomControls.camera_target = &gPlayerEntity;
        }
        DeleteThisEntity();
    }
    Object61_Actions[super->action](this);
}

void Object61_Init(Object61Entity* this) {
    super->action = 1;
    super->lastFrameIndex = 0xff;
    super->palette.b.b0 = gPlayerEntity.palette.b.b0;
    if (super->type == 0) {
        gRoomControls.camera_target = super;
        super->spriteRendering.b0 = 3;
        this->unk_6e = 0x180;
        this->unk_72 = 0x180;
        CreateObjectWithParent(super, OBJECT_61, 1, 0);
    }
    Object61_Action1(this);
}

void Object61_Action1(Object61Entity* this) {
    static void (*const Object61_Action1Types[])(Object61Entity*) = {
        Object61_Action1Type0,
        Object61_Action1Type1,
    };
    Object61_Action1Types[super->type](this);
}

void Object61_Action1Type0(Object61Entity* this) {
    u32 tmp;
    if ((s16)this->unk_6e < 0) {
        this->unk_6e = -this->unk_6e;
    }
    switch (gPlayerEntity.subAction) {
        case 1:
            this->unk_72 -= 4;
            break;
        case 2:
            if (super->field_0xf == 0) {
                if (this->unk_72 > 0x80) {
                    this->unk_72 -= 0x20;
                } else {
                    super->field_0xf += 1;
                    SoundReq(SFX_124);
                }
                if (this->unk_6e < 0x120) {
                    this->unk_6e += 0x40;
                }
            } else if (super->field_0xf != 0xff) {
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
                    super->field_0xf = 0xff;
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
    tmp = gPlayerEntity.animationState & 2;
    if (tmp != 0) {
        super->frameIndex = 1;
        if (gPlayerEntity.animationState == 2) {
            this->unk_6e = -this->unk_6e;
        }
    } else {
        super->frameIndex = tmp;
    }
    if (super->frameIndex != super->lastFrameIndex) {
        super->lastFrameIndex = super->frameIndex;
        sub_080042D0(super, super->frameIndex, super->spriteIndex);
    }
    CopyPosition(&gPlayerEntity, super);

    super->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    super->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    sub_0806FCF4(super, this->unk_72, 10, 2);
    sub_0805EC9C(super, this->unk_6e, this->unk_72, 0);
    sub_0806FEBC(&gPlayerEntity, 1, super);
}

void Object61_Action1Type1(Object61Entity* this) {
    super->frameIndex = ((gPlayerEntity.direction + (gPlayerEntity.direction >> 1)) >> 2) + 2;
    if (super->frameIndex != super->lastFrameIndex) {
        super->lastFrameIndex = super->frameIndex;
        sub_080042D0(super, super->frameIndex, super->spriteIndex);
    }
    CopyPosition(&gPlayerEntity, super);
    super->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    super->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    sub_0806FCF4(super, ((Object61Entity*)super->parent)->unk_72, 0x18, 0);
    super->spriteOffsetY = -super->spriteOffsetY;
    sub_0806FEBC(&gPlayerEntity, 0, super);
}

void sub_080936C8(Object61Entity* this) {
    s32 tmp = gNewPlayerEntity.unk_7c;
    this->unk_76 = 0x138 - (gNewPlayerEntity.unk_7c >> 2);
    this->unk_74 = 8 - (tmp / 0x3c);
    if (super->actionDelay == 0) {
        if (this->unk_76 < this->unk_6e) {
            this->unk_6e -= 8;
            this->unk_72 += 8;
        } else {
            super->actionDelay++;
            this->unk_6e = this->unk_76;
            this->unk_72 = this->unk_76 + 0x30;
        }
    } else {
        if (this->unk_76 + 0x30 > this->unk_6e) {
            this->unk_6e += 8;
            this->unk_72 -= 8;
        } else {
            super->actionDelay = 0;
            this->unk_6e = this->unk_76 + 0x30;
            this->unk_72 = this->unk_76;
        }
    }
}
