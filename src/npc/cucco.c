/**
 * @file cucco.c
 * @ingroup NPCs
 *
 * @brief Cucco NPC
 */
#include "functions.h"
#include "kinstone.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} CuccoEntity;

void (*const Cucco_Actions[])(CuccoEntity*);
const u16 Cucco_Sounds[];
const u16 Cucco_Messages[];

void sub_0806E4EC(CuccoEntity*);
void Cucco_ShowMessage(Entity*);
void sub_0806E65C(Entity* this);

void Cucco(CuccoEntity* this) {
    Cucco_Actions[super->action](this);
}

void Cucco_Init(CuccoEntity* this) {
    super->action++;
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableAsMinishFuser(super, this->fusionOffer);
    SetEntityPriority(super, PRIO_MESSAGE);
    super->subAction = 0;
    sub_0806E4EC(this);
}

void sub_0806E4EC(CuccoEntity* this) {
    if (super->subAction == 0) {
        super->subAction++;
        super->timer = (Random() & 0x1f) + 60;
        InitAnimationForceUpdate(super, 0);
    }
    if (--super->timer == 0) {
        if ((Random() & 1) != 0) {
            super->action = 3;
        } else {
            super->action = 2;
        }
        super->subAction = 0;
        if ((Random() & 1) != 0) {
            EnqueueSFX(Cucco_Sounds[Random() & 3]);
        }
    }
    sub_0806E65C(super);
    UpdateAnimationSingleFrame(super);
}

void Cucco_Fly(CuccoEntity* this) {
    if (super->subAction == 0) {
        super->subAction++;
        if (Random() & 1) {
            super->spriteSettings.flipX ^= 1;
        }

        super->timer = (Random() & 1) + 1;
        super->zVelocity = Q_16_16(1.5);
        InitAnimationForceUpdate(super, 1);
    }

    if (GravityUpdate(super, Q_8_8(40.0)) == 0) {
        if (--super->timer == 0) {
            super->action = 1;
            super->subAction = 0;
        } else {
            super->zVelocity = Q_16_16(1.5);
        }
    }

    sub_0806E65C(super);
    UpdateAnimationSingleFrame(super);
}

void Cucco_Idle(CuccoEntity* this) {
    if (super->subAction == 0) {
        super->subAction++;
        if (Random() & 1) {
            super->spriteSettings.flipX ^= 1;
        }

        InitAnimationForceUpdate(super, (Random() & 1) + 2);
    }

    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->subAction = 0;
    }

    sub_0806E65C(super);
    UpdateAnimationSingleFrame(super);
}

void sub_0806E648(CuccoEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
    }
}

void sub_0806E65C(Entity* this) {
    if (this->interactType != INTERACTION_NONE) {
        if (gPlayerState.flags & PL_MINISH) {
            if (this->interactType == INTERACTION_FUSE) {
                this->action = 4;
                InitializeNPCFusion(this);
            } else {
                Cucco_ShowMessage(this);
            }
        } else {
            ResetPlayerAnimationAndAction();
        }
        SoundReq(SFX_VO_CUCCO_CALL);
        this->interactType = INTERACTION_NONE;
    }
}

void Cucco_ShowMessage(Entity* this) {
    u32 val = 0;
    u32 index = GetFuserId(this);
    if (gSave.kinstones.fuserOffers[index] == KINSTONE_FUSER_DONE) {
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

void (*const Cucco_Actions[])(CuccoEntity*) = {
    Cucco_Init, sub_0806E4EC, Cucco_Fly, Cucco_Idle, sub_0806E648,
};

const u16 Cucco_Sounds[] = { SFX_VO_CUCCO1, SFX_VO_CUCCO2, SFX_VO_CUCCO3, SFX_VO_CUCCO4 };
const u16 Cucco_Messages[] = { TEXT_INDEX(TEXT_MINISH, 0xb4), TEXT_INDEX(TEXT_MINISH, 0xb5) };
