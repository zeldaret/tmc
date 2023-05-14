#include "npc.h"
#include "functions.h"

void CuccoChick_Init(Entity*);
void sub_0806E764(Entity*);
void CuccoChick_Fly(Entity*);
void sub_0806E824(Entity*);

void sub_0806E838(Entity* this);

void sub_0806E884(Entity* this);

void CuccoChick(Entity* this) {
    static void (*const CuccoChick_Actions[])(Entity*) = {
        CuccoChick_Init,
        sub_0806E764,
        CuccoChick_Fly,
        sub_0806E824,
    };
    CuccoChick_Actions[this->action](this);
    sub_0806ED78(this);
}

void CuccoChick_Init(Entity* this) {
    this->action++;
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableAsMinishFuser(this, this->field_0x68.HALF.LO);
    SetDefaultPriority(this, PRIO_MESSAGE);
    this->subAction = 0;
    sub_0806E764(this);
}

void sub_0806E764(Entity* this) {
    if (this->subAction == 0) {
        this->subAction++;
        this->timer = (Random() & 0x1f) + 30;
        this->frameIndex = 0;
    }
    if (--this->timer == 0) {
        this->action = 2;
        this->subAction = 0;
        if ((Random() & 1) != 0) {
            EnqueueSFX(SFX_VO_CHEEP);
        }
    }
    sub_0806E838(this);
}

void CuccoChick_Fly(Entity* this) {
    if (this->subAction == 0) {
        this->subAction++;
        if ((Random() & 1) != 0) {
            this->spriteSettings.flipX ^= 1;
        }
        this->timer = (Random() & 3) + 1;
        this->zVelocity = Q_16_16(1.0);
        this->frameIndex = 1;
    }
    if (GravityUpdate(this, Q_8_8(48.0)) == 0) {
        if (--this->timer == 0) {
            this->action = 1;
            this->subAction = 0;
        } else {
            this->zVelocity = Q_16_16(1.0);
        }
    }
    sub_0806E838(this);
}

void sub_0806E824(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_0806E838(Entity* this) {
    if (this->interactType != 0) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            if (this->interactType == 2) {
                this->action = 3;
                sub_0806F118(this);
            } else {
                sub_0806E884(this);
            }
        } else {
            ResetPlayerAnimationAndAction();
        }
        SoundReq(SFX_VO_CHEEP);
        this->interactType = 0;
    }
}

void sub_0806E884(Entity* this) {
    MessageNoOverlap(TEXT_INDEX(TEXT_MINISH, 0Xb6), this);
}

void CuccoChick_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        this->frameIndex = 1;
    } else {
        if (GravityUpdate(this, Q_8_8(48.0)) == 0) {
            this->zVelocity = Q_16_16(1.0);
        }
    }
}
