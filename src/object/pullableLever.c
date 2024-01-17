/**
 * @file pullableLever.c
 * @ingroup Objects
 *
 * @brief Pullable Lever object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 pullLength;
    /*0x72*/ u16 leverPart; // lever part number? [0,1,2]
    /*0x74*/ u8 timer;
    /*0x75*/ u8 unk_75;
    /*0x76*/ u16 necessaryPullLength;
    /*0x78*/ u8 unk_78[6];
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unk_7f;
    /*0x80*/ u16 initialX;
    /*0x82*/ u16 initialY;
    /*0x84*/ u8 unk_84[2];
    /*0x86*/ u16 pulledFlag;
} PullableLeverEntity;

enum PullableLeverPart { HANDLE, MIDDLE, SOCKET };

extern u16 gUnk_02021F00[];

extern void (*const PullableLever_HandleActions[])(PullableLeverEntity*);
extern void (*const PullableLever_MiddleActions[])(PullableLeverEntity*);
extern const s8 PullableLever_InitialOffsets[];
extern void (*const PullableLever_HandleSubActions[])(PullableLeverEntity*);
extern const s8 gUnk_081222B8[];
extern const u8 gUnk_081222C0[];

void sub_08091504(PullableLeverEntity*);
void PullableLever_UpdateLength(PullableLeverEntity*);
void sub_0809153C(PullableLeverEntity*);

void PullableLever(PullableLeverEntity* this) {
    switch (this->leverPart) {
        case HANDLE:
            PullableLever_HandleActions[super->action](this);
            sub_0800445C(super);
            gUnk_02021F00[this->timer] = this->pullLength;
            break;
        case MIDDLE:
            PullableLever_MiddleActions[super->action](this);
            break;
        case SOCKET:
            if (super->action == 0) {
                sub_08091504(this);
            }
            break;
    }
}

void PullableLever_HandleInit(PullableLeverEntity* this) {
    if (gEntCount < 0x46) {
        PullableLeverEntity* entity1 = (PullableLeverEntity*)CreateObject(PULLABLE_LEVER, super->type, super->type2);
        PullableLeverEntity* entity2 = (PullableLeverEntity*)CreateObject(PULLABLE_LEVER, super->type, super->type2);
        (entity1->base).parent = super;
        (entity2->base).parent = super;
        entity1->leverPart = 1;
        entity2->leverPart = 2;
        CopyPosition(super, &entity2->base);
        super->action = 1;
        super->spriteSettings.draw = 1;
        super->speed = 0x60;
        if ((super->type2 & 1)) {
            super->hitbox = (Hitbox*)&gUnk_080FD278;
        } else {
            super->hitbox = (Hitbox*)&gUnk_080FD270;
        }
        super->carryFlags = 1;
        super->x.HALF.HI += PullableLever_InitialOffsets[super->type2 * 2];
        this->initialX = super->x.HALF.HI;
        super->y.HALF.HI += PullableLever_InitialOffsets[super->type2 * 2 + 1];
        this->initialY = super->y.HALF.HI;
        CopyPosition(super, &entity1->base);
        this->necessaryPullLength = this->unk_7e;
        this->timer = super->timer;
        InitializeAnimation(super, super->type2);
    }
}

void PullableLever_HandleAction1(PullableLeverEntity* this) {
    RegisterCarryEntity(super);
    if (this->pullLength != 0) {
        super->direction = super->type2 << 3;
        LinearMoveUpdate(super);
        PullableLever_UpdateLength(this);
    }
}

void PullableLever_HandleAction2(PullableLeverEntity* this) {
    sub_0806FBB4(super);
    PullableLever_HandleSubActions[super->subAction - 5](this);
}

void PullableLever_HandleSubAction0(PullableLeverEntity* this) {
    u16 y;
    u16 x;
    Entity* player = &gPlayerEntity.base;

    if (this->unk_75 == 0) {
        if (-player->animationState + super->type2 * 2 == 0) {
            x = gUnk_081222B8[super->type2 * 2] + super->x.HALF_U.HI;
            y = gUnk_081222B8[super->type2 * 2 + 1] + super->y.HALF_U.HI;
            if (0x10 < GetCollisionDataAtWorldCoords(x, y, player->collisionLayer) - 0xf) {
                player->x.HALF.HI = x;
                player->y.HALF.HI = y;
            }
        }
        this->unk_75 = 1;
        super->subtimer = 2;
    }
    if (player->animationState >> 1 == super->type2) {
        if (gPlayerState.framestate == PL_STATE_PULL) {
            if (gPlayerState.heldObject & 2) {
                if (gPlayerEntity.base.frame & 2) {
                    sub_0809153C(this);
                    if (this->unk_75 == 1) {
                        this->unk_75 = 2;
                        EnqueueSFX(SFX_19E);
                    }
                }
            }
        }
    }
}

void PullableLever_HandleSubAction1(PullableLeverEntity* this) {
    super->action = 1;
    this->unk_75 = 0;
}

void PullableLever_MiddleInit(PullableLeverEntity* this) {
    super->action = 1;
    super->spritePriority.b0 = 5;
    InitializeAnimation(super, super->parent->type2 + 8);
    UpdateSpriteForCollisionLayer(super);
}

void PullableLever_MiddleAction1(PullableLeverEntity* this) {
    u16 tmp;
    PullableLeverEntity* parent = ((PullableLeverEntity*)super->parent);
    if (parent->pullLength < 8) {
        super->spriteSettings.draw = 0;
    } else {
        super->spriteSettings.draw = 1;
        tmp = (((PullableLeverEntity*)super->parent)->pullLength - 8) & 7;
        switch (super->type2) {
            case 0:
                super->y.HALF.HI = (super->parent->y.HALF.HI - tmp) - 0x11;
                break;
            case 1:
                super->x.HALF.HI = tmp + super->parent->x.HALF.HI + 0x11;
                break;
            case 2:
                super->y.HALF.HI = tmp + super->parent->y.HALF.HI + 0x11;
                break;
            case 3:
                super->x.HALF.HI = (super->parent->x.HALF.HI - tmp) - 0x11;
                break;
        }
        tmp = (parent->pullLength - 8) >> 4;
        if (tmp != super->animationState) {
            super->animationState = tmp;
            InitializeAnimation(super, tmp * 4 + super->type2 + 8);
        }
    }
}

void sub_08091504(PullableLeverEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->spritePriority.b0 = 6;
    InitializeAnimation(super, super->type2 + 4);
    UpdateSpriteForCollisionLayer(super);
}

void sub_0809153C(PullableLeverEntity* this) {
    s16 prevX;
    s16 prevY;
    u32 dir;
    s16 diff;
    s32 radius;

    Entity* player = &gPlayerEntity.base;
    dir = gUnk_081222C0[super->type2];
    if (this->necessaryPullLength <= this->pullLength) {
        return;
    }
    prevX = player->x.HALF.HI;
    prevY = player->y.HALF.HI;
    sub_080044AE(&gPlayerEntity.base, super->speed, dir);
    if ((prevX == gPlayerEntity.base.x.HALF.HI) && (prevY == gPlayerEntity.base.y.HALF.HI)) {
        return;
    }

    switch (super->type2) {
        case 0:
            diff = player->y.HALF.HI - prevY;
            break;
        case 1:
            diff = prevX - gPlayerEntity.base.x.HALF.HI;
            break;
        case 2:
            diff = prevY - gPlayerEntity.base.y.HALF.HI;
            break;
        case 3:
            diff = gPlayerEntity.base.x.HALF.HI - prevX;
            break;
    }
    radius = (diff << 0x18);
    super->x.WORD += gSineTable[dir * 8] * (radius >> 0x10);
    super->y.WORD -= gSineTable[dir * 8 + 0x40] * (radius >> 0x10);
    PullableLever_UpdateLength(this);
    if (this->necessaryPullLength <= this->pullLength) {
        EnqueueSFX(SFX_BUTTON_PRESS);
        SetFlag(this->pulledFlag);
    } else {
        if (--super->subtimer == 0) {
            super->subtimer = 16;
            EnqueueSFX(SFX_10F);
        }
    }
}

void PullableLever_UpdateLength(PullableLeverEntity* this) {
    switch (super->type2) {
        case 0:
            this->pullLength = super->y.HALF.HI - this->initialY;
            break;
        case 1:
            this->pullLength = this->initialX - super->x.HALF.HI;
            break;
        case 2:
            this->pullLength = this->initialY - super->y.HALF.HI;
            break;
        case 3:
            this->pullLength = super->x.HALF.HI - this->initialX;
            break;
    }

    if (CheckFlags(this->pulledFlag) && (this->pullLength == 0)) {
        ClearFlag(this->pulledFlag);
    }
}

void (*const PullableLever_HandleActions[])(PullableLeverEntity*) = {
    PullableLever_HandleInit,
    PullableLever_HandleAction1,
    PullableLever_HandleAction2,
};
void (*const PullableLever_MiddleActions[])(PullableLeverEntity*) = {
    PullableLever_MiddleInit,
    PullableLever_MiddleAction1,
};
const s8 PullableLever_InitialOffsets[] = {
    0, 9, -9, 0, 0, -9, 9, 0,
};
void (*const PullableLever_HandleSubActions[])(PullableLeverEntity*) = {
    PullableLever_HandleSubAction0,
    PullableLever_HandleSubAction1,
};
const s8 gUnk_081222B8[] = {
    0, 10, -8, 0, 0, -10, 8, 0,
};
const u8 gUnk_081222C0[] = {
    16,
    24,
    0,
    8,
};
