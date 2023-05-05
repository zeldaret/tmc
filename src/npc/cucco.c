#include "npc.h"
#include "functions.h"
#include "kinstone.h"

void (*const Cucco_Actions[])(Entity*);
const u16 Cucco_Sounds[];
const u16 Cucco_Messages[];

void sub_0806E4EC(Entity*);
void Cucco_ShowMessage(Entity*);
void sub_0806E65C(Entity* this);

void Cucco(Entity* this) {
    Cucco_Actions[this->action](this);
}

void Cucco_Init(Entity* this) {
    this->action++;
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableAsMinishFuser(this, this->field_0x68.HALF.LO);
    SetDefaultPriority(this, PRIO_MESSAGE);
    this->subAction = 0;
    sub_0806E4EC(this);
}

void sub_0806E4EC(Entity* this) {
    if (this->subAction == 0) {
        this->subAction++;
        this->timer = (Random() & 0x1f) + 60;
        InitAnimationForceUpdate(this, 0);
    }
    if (--this->timer == 0) {
        if ((Random() & 1) != 0) {
            this->action = 3;
        } else {
            this->action = 2;
        }
        this->subAction = 0;
        if ((Random() & 1) != 0) {
            EnqueueSFX(Cucco_Sounds[Random() & 3]);
        }
    }
    sub_0806E65C(this);
    UpdateAnimationSingleFrame(this);
}

void Cucco_Fly(Entity* this) {
    if (this->subAction == 0) {
        this->subAction++;
        if (Random() & 1) {
            this->spriteSettings.flipX ^= 1;
        }

        this->timer = (Random() & 1) + 1;
        this->zVelocity = Q_16_16(1.5);
        InitAnimationForceUpdate(this, 1);
    }

    if (GravityUpdate(this, Q_8_8(40.0)) == 0) {
        if (--this->timer == 0) {
            this->action = 1;
            this->subAction = 0;
        } else {
            this->zVelocity = Q_16_16(1.5);
        }
    }

    sub_0806E65C(this);
    UpdateAnimationSingleFrame(this);
}

void Cucco_Idle(Entity* this) {
    if (this->subAction == 0) {
        this->subAction++;
        if (Random() & 1) {
            this->spriteSettings.flipX ^= 1;
        }

        InitAnimationForceUpdate(this, (Random() & 1) + 2);
    }

    if (this->frame & ANIM_DONE) {
        this->action = 1;
        this->subAction = 0;
    }

    sub_0806E65C(this);
    UpdateAnimationSingleFrame(this);
}

void sub_0806E648(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_0806E65C(Entity* this) {
    if (this->interactType != 0) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            if (this->interactType == 2) {
                this->action = 4;
                sub_0806F118(this);
            } else {
                Cucco_ShowMessage(this);
            }
        } else {
            ResetPlayerAnimationAndAction();
        }
        SoundReq(SFX_VO_CUCCO_CALL);
        this->interactType = 0;
    }
}

void Cucco_ShowMessage(Entity* this) {
    u32 val = 0;
    u32 index = GetFuserId(this);
    if (gSave.fuserOffers[index] == KINSTONE_FUSER_DONE) {
        val = 1;
    }

    MessageNoOverlap(Cucco_Messages[val], this);
}

void Cucco_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 1);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void (*const Cucco_Actions[])(Entity*) = {
    Cucco_Init, sub_0806E4EC, Cucco_Fly, Cucco_Idle, sub_0806E648,
};

const u16 Cucco_Sounds[] = { SFX_VO_CUCCO1, SFX_VO_CUCCO2, SFX_VO_CUCCO3, SFX_VO_CUCCO4 };
const u16 Cucco_Messages[] = { TEXT_INDEX(TEXT_MINISH, 0xb4), TEXT_INDEX(TEXT_MINISH, 0xb5) };
