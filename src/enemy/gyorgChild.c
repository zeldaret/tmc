/**
 * @file gyorgChild.c
 * @ingroup Enemies
 *
 * @brief Gyorg Child enemy
 */
#include "asm.h"
#include "enemy/gyorg.h"
#include "functions.h"
#include "room.h"

void GyorgChild_OnTick(GyorgChildEntity*);
void GyorgChild_OnCollision(GyorgChildEntity*);
void GyorgChild_OnGrabbed(GyorgChildEntity*);

void (*const GyorgChild_Functions[])(GyorgChildEntity*) = {
    GyorgChild_OnTick,
    GyorgChild_OnCollision,
    (void (*)(GyorgChildEntity*))GenericKnockback,
    (void (*)(GyorgChildEntity*))GenericDeath,
    (void (*)(GyorgChildEntity*))GenericConfused,
    GyorgChild_OnGrabbed,
};

void GyorgChild(Entity* this) {
    if (gRoomTransition.field_0x39 == 0) {
        this->flags &= ~ENT_COLLIDE;
        this->health = 0;
        this->collisionLayer = 2;
    }
    GyorgChild_Functions[GetNextFunction(this)]((GyorgChildEntity*)this);
}

void GyorgChild_Action0(GyorgChildEntity* this);
void GyorgChild_Action1(GyorgChildEntity* this);
void GyorgChild_Action2(GyorgChildEntity* this);
void GyorgChild_Action3(GyorgChildEntity* this);

void GyorgChild_OnTick(GyorgChildEntity* this) {
    static void (*const GyorgChild_Actions[])(GyorgChildEntity*) = {
        GyorgChild_Action0,
        GyorgChild_Action1,
        GyorgChild_Action2,
        GyorgChild_Action3,
    };
    GyorgChild_Actions[super->action](this);
}

void GyorgChild_OnCollision(GyorgChildEntity* this) {
    EnemyFunctionHandlerAfterCollision(super, GyorgChild_Functions);
}

void GyordChild_OnGrabbed_Action0(GyorgChildEntity* this);
void GyorgChild_OnGrabbed_Action1(GyorgChildEntity* this);
void GyorgChild_OnGrabbed_Action3(GyorgChildEntity* this);

void GyorgChild_OnGrabbed(GyorgChildEntity* this) {
    static void (*const GyorgChild_OnGrabbed_Actions[])(GyorgChildEntity*) = {
        GyordChild_OnGrabbed_Action0,
        GyorgChild_OnGrabbed_Action1,
        GyorgChild_OnGrabbed_Action3,
    };
    if (sub_0806F520(super)) {
        GyorgChild_OnGrabbed_Actions[super->subAction](this);
    }
}

void GyordChild_OnGrabbed_Action0(GyorgChildEntity* this) {
    super->subAction = 2;
}

void GyorgChild_OnGrabbed_Action1(GyorgChildEntity* this) {
    sub_0806F4E8(super);
}

void GyorgChild_OnGrabbed_Action3(GyorgChildEntity* this) {
    if (sub_0806F3E4(super)) {
        GenericDeath(super);
    }
}

void GyorgChild_Action0(GyorgChildEntity* this) {
    static const s8 gUnk_080D1EA0[] = {
        80, 1, 64, 1, 48, 1, 32, 1, 16, 1, 0, 0, 16, -1, 32, -1, 48, -1, 64, -1, 80, -1,
    };
    super->gustJarFlags = 1;
    super->spriteOrientation.flipY = 3;
    super->spriteRendering.b3 = 3;
    super->spritePriority.b0 = 7;
    super->animationState = Direction8ToAnimationState(super->direction);
    if (super->type == 0) {
        s32 r;
        InitializeAnimation(super, super->animationState);
        super->action = 1;
        super->flags |= ENT_COLLIDE;
        r = (signed)Random() % 11;
        super->direction += r;
        super->direction -= 5;
        super->direction &= 0x1F;
        r *= 2;
        super->timer = gUnk_080D1EA0[r];
        this->unk_7b = gUnk_080D1EA0[r + 1];
        super->speed = 0x200;
    } else {
        super->action = 2;
        super->timer = 1;
        super->spriteSettings.draw = 0;
    }
}

void GyorgChild_Action1(GyorgChildEntity* this) {
    LinearMoveUpdate(super);
    if (super->timer != 0) {
        if ((--super->timer & 0xF) == 0) {
            super->direction += this->unk_7b;
            super->direction &= 0x1F;
        }
    }
    switch (super->animationState >> 1) {
        case 0:
            if (super->y.HALF.HI > gRoomControls.scroll_y - 0x18) {
                return;
            }
            break;
        case 1:
            if (super->x.HALF.HI < gRoomControls.scroll_x + 0x108) {
                return;
            }
            break;
        case 2:
            if (super->y.HALF.HI < gRoomControls.scroll_y + 0xb8) {
                return;
            }
            break;
        default:
            if (super->x.HALF.HI > gRoomControls.scroll_x - 0x18) {
                return;
            }
            break;
    }
    super->action = 2;
    super->timer = 90;
    super->spriteSettings.draw = 0;
}

void GyorgChild_Action2(GyorgChildEntity* this) {
    if (--super->timer == 0) {
        super->action = 3;
        super->flags |= ENT_COLLIDE;
        Random();
        super->spriteSettings.draw = 1;
        super->spritePriority.b0 = 4;
        super->speed = this->attackSpeed;
        super->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(super);
        super->direction = this->attackDirection;
        super->animationState = super->direction >> 2;
        InitializeAnimation(super, super->animationState);
        switch (super->animationState >> 1) {
            case 0:
            case 2:
                super->x.HALF.HI = gPlayerEntity.base.x.HALF.HI + this->attackOffsetX;
                super->y.HALF.HI = gRoomControls.scroll_y + this->attackOffsetY;
                break;
            case 1:
            default:
                super->x.HALF.HI = gRoomControls.scroll_x + this->attackOffsetX;
                super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI + this->attackOffsetY;
                break;
        }
        if (super->type2 == 0) {
            SoundReq(SFX_198);
        }
    }
}

void GyorgChild_Action3(GyorgChildEntity* this) {
    LinearMoveUpdate(super);
    GetNextFrame(super);
    switch (super->animationState >> 1) {
        case 0:
            if (super->y.HALF.HI > gRoomControls.scroll_y - 0x28) {
                return;
            }
            break;
        case 1:
            if (super->x.HALF.HI < gRoomControls.scroll_x + 0x118) {
                return;
            }
            break;
        case 2:
            if (super->y.HALF.HI < gRoomControls.scroll_y + 0xc8) {
                return;
            }
            break;
        default:
            if (super->x.HALF.HI > gRoomControls.scroll_x - 0x28) {
                return;
            }
            break;
    }
    DeleteThisEntity();
}
