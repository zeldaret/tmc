/**
 * @file eyeSwitch.c
 * @ingroup Objects
 *
 * @brief EyeSwitch object
 */
#include "entity.h"
#include "flags.h"
#include "hitbox.h"
#include "sound.h"

typedef struct {
    Entity base;
    u8 filler[0x8];
    u16 unk70;
    u8 filler2[0x12];
    u16 eyeSwitchFlags;
    u16 eyeSwitchFlags2;
} EyeSwitchEntity;

void EyeSwitch_Init(EyeSwitchEntity* this);
void EyeSwitch_Action1(EyeSwitchEntity* this);
void EyeSwitch_Action2(EyeSwitchEntity* this);
void EyeSwitch_Action3(EyeSwitchEntity* this);
void EyeSwitch_Action4(EyeSwitchEntity* this);

void EyeSwitch(Entity* this) {
    static void (*const EyeSwitch_Actions[])(EyeSwitchEntity*) = {
        EyeSwitch_Init, EyeSwitch_Action1, EyeSwitch_Action2, EyeSwitch_Action3, EyeSwitch_Action4,
    };
    EyeSwitch_Actions[this->action]((EyeSwitchEntity*)this);
}

void EyeSwitch_Init(EyeSwitchEntity* this) {
    super->animationState = super->type & 3;
    super->spritePriority.b0 = 6;
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = 1;
    super->collisionMask = 2;
    super->hitbox = (Hitbox*)&gHitbox_1;
    if (CheckFlags(this->eyeSwitchFlags)) {
        super->action = 3;
        InitializeAnimation(super, super->animationState + 4);
    } else {
        super->action = 1;
        super->flags = super->flags | 0x80;
        InitializeAnimation(super, super->animationState);
    }
}

void EyeSwitch_Action1(EyeSwitchEntity* this) {
    if ((super->contactFlags == (CONTACT_NOW | 0x15) || super->contactFlags == (CONTACT_NOW | 0xe)) &&
        (DirectionRoundUp(super->contactedEntity->direction) >> 3 == (super->animationState & 3))) {
        super->action = 2;
        COLLISION_OFF(super);
        EnqueueSFX(SFX_111);
        SetFlag(this->eyeSwitchFlags2);
    }
}

void EyeSwitch_Action2(EyeSwitchEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 3;
        this->unk70 = super->timer << 1;
        InitializeAnimation(super, super->animationState + 4);
    }
}

void EyeSwitch_Action3(EyeSwitchEntity* this) {
    if (super->timer != 0) {
        if ((this->eyeSwitchFlags2 != this->eyeSwitchFlags) && (CheckFlags(this->eyeSwitchFlags))) {
            super->timer = 0;
        } else {
            if (--this->unk70 == 0) {
                super->action = 4;
                ClearFlag(this->eyeSwitchFlags2);
            }
        }
    }
}

void EyeSwitch_Action4(EyeSwitchEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 1;
        COLLISION_ON(super);
        InitializeAnimation(super, super->animationState);
    }
}
