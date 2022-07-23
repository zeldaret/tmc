/**
 * @file eyeSwitch.c
 * @ingroup Objects
 *
 * @brief EyeSwitch object
 */
#define NENT_DEPRECATED
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

void sub_080886A4(EyeSwitchEntity* this);
void sub_08088718(EyeSwitchEntity* this);
void sub_08088760(EyeSwitchEntity* this);
void sub_08088790(EyeSwitchEntity* this);
void sub_080887D8(EyeSwitchEntity* this);

void EyeSwitch(Entity* this) {
    static void (*const actionFuncs[])(EyeSwitchEntity*) = {
        sub_080886A4, sub_08088718, sub_08088760, sub_08088790, sub_080887D8,
    };
    actionFuncs[this->action]((EyeSwitchEntity*)this);
}

void sub_080886A4(EyeSwitchEntity* this) {
    super->animationState = super->type & 3;
    super->spritePriority.b0 = 6;
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = 1;
    super->flags2 = 2;
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

void sub_08088718(EyeSwitchEntity* this) {
    if ((super->contactFlags == 0x95 || super->contactFlags == 0x8e) &&
        (DirectionRoundUp(super->contactedEntity->direction) >> 3 == (super->animationState & 3))) {
        super->action = 2;
        COLLISION_OFF(super);
        EnqueueSFX(SFX_111);
        SetFlag(this->eyeSwitchFlags2);
    }
}

void sub_08088760(EyeSwitchEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 3;
        this->unk70 = super->timer << 1;
        InitializeAnimation(super, super->animationState + 4);
    }
}

void sub_08088790(EyeSwitchEntity* this) {
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

void sub_080887D8(EyeSwitchEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 1;
        COLLISION_ON(super);
        InitializeAnimation(super, super->animationState);
    }
}
