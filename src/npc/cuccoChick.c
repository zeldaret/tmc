/**
 * @file cuccoChick.c
 * @ingroup NPCs
 *
 * @brief Cucco Chick NPC
 */
#include "functions.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} CuccoChickEntity;

void CuccoChick_Init(CuccoChickEntity*);
void sub_0806E764(CuccoChickEntity*);
void CuccoChick_Fly(CuccoChickEntity*);
void sub_0806E824(CuccoChickEntity*);

void sub_0806E838(CuccoChickEntity* this);

void sub_0806E884(CuccoChickEntity* this);

void CuccoChick(CuccoChickEntity* this) {
    static void (*const CuccoChick_Actions[])(CuccoChickEntity*) = {
        CuccoChick_Init,
        sub_0806E764,
        CuccoChick_Fly,
        sub_0806E824,
    };
    CuccoChick_Actions[super->action](this);
    sub_0806ED78(super);
}

void CuccoChick_Init(CuccoChickEntity* this) {
    super->action++;
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableAsMinishFuser(super, this->fusionOffer);
    SetEntityPriority(super, PRIO_MESSAGE);
    super->subAction = 0;
    sub_0806E764(this);
}

void sub_0806E764(CuccoChickEntity* this) {
    if (super->subAction == 0) {
        super->subAction++;
        super->timer = (Random() & 0x1f) + 30;
        super->frameIndex = 0;
    }
    if (--super->timer == 0) {
        super->action = 2;
        super->subAction = 0;
        if ((Random() & 1) != 0) {
            EnqueueSFX(SFX_VO_CHEEP);
        }
    }
    sub_0806E838(this);
}

void CuccoChick_Fly(CuccoChickEntity* this) {
    if (super->subAction == 0) {
        super->subAction++;
        if ((Random() & 1) != 0) {
            super->spriteSettings.flipX ^= 1;
        }
        super->timer = (Random() & 3) + 1;
        super->zVelocity = Q_16_16(1.0);
        super->frameIndex = 1;
    }
    if (GravityUpdate(super, Q_8_8(48.0)) == 0) {
        if (--super->timer == 0) {
            super->action = 1;
            super->subAction = 0;
        } else {
            super->zVelocity = Q_16_16(1.0);
        }
    }
    sub_0806E838(this);
}

void sub_0806E824(CuccoChickEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
    }
}

void sub_0806E838(CuccoChickEntity* this) {
    if (super->interactType != INTERACTION_NONE) {
        if (gPlayerState.flags & PL_MINISH) {
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 3;
                InitializeNPCFusion(super);
            } else {
                sub_0806E884(this);
            }
        } else {
            ResetPlayerAnimationAndAction();
        }
        SoundReq(SFX_VO_CHEEP);
        super->interactType = INTERACTION_NONE;
    }
}

void sub_0806E884(CuccoChickEntity* this) {
    MessageNoOverlap(TEXT_INDEX(TEXT_MINISH, 0xB6), super);
}

void CuccoChick_Fusion(CuccoChickEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 1;
        super->frameIndex = 1;
    } else {
        if (GravityUpdate(super, Q_8_8(48.0)) == 0) {
            super->zVelocity = Q_16_16(1.0);
        }
    }
}
