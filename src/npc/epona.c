/**
 * @file epona.c
 * @ingroup NPCs
 *
 * @brief Epona NPC
 */
#include "entity.h"
#include "functions.h"
#include "message.h"
#include "npc.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unk_69;
} EponaEntity;

void sub_08065A64(EponaEntity* this);
void sub_08065AA4(EponaEntity* this);
void sub_080659B8(EponaEntity* this);
void sub_080659F0(EponaEntity* this);
void sub_08065A00(EponaEntity* this);
void sub_08065A10(EponaEntity* this);
void sub_08065A34(EponaEntity* this);

void Epona(EponaEntity* this) {
    static void (*const actionFuncs[])(EponaEntity*) = {
        sub_080659B8, sub_080659F0, sub_08065A00, sub_08065A10, sub_08065A34,
    };
    actionFuncs[super->action](this);
    sub_08065A64(this);
    sub_0806ED78(super);
}

void sub_080659B8(EponaEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->animationState = 6;
    this->unk_69 = -1;
    this->fusionOffer = GetFusionToOffer(super);
    InitAnimationForceUpdate(super, super->animationState / 2);
}

void sub_080659F0(EponaEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_08065AA4(this);
}

void sub_08065A00(EponaEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_08065AA4(this);
}

void sub_08065A10(EponaEntity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->action = 1;
        InitAnimationForceUpdate(super, super->animationState / 2);
    }
}

void sub_08065A34(EponaEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
        InitAnimationForceUpdate(super, super->animationState / 2);
    }
}

void sub_08065A50(EponaEntity* this) {
    static const Dialog typeDialogs[] = {
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0X17), TEXT_INDEX(TEXT_TINGLE, 0x3c) } },
    };
    ShowNPCDialogue(super, &typeDialogs[super->type]);
}

void sub_08065A64(EponaEntity* this) {
    u32 uVar2;

    if ((gPlayerState.flags & PL_MINISH) != 0) {
        uVar2 = TRUE;
    } else {
        uVar2 = FALSE;
    }

    if (uVar2 != this->unk_69) {
        if (uVar2 == 0) {
            AddInteractableWhenBigObject(super);
        } else {
            AddInteractableAsMinishFuser(super, this->fusionOffer);
        }
    }
    this->unk_69 = uVar2;
}

void sub_08065AA4(EponaEntity* this) {
    if (super->interactType != INTERACTION_NONE) {
        if (gPlayerState.flags & PL_MINISH) {
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 4;
                InitializeNPCFusion(super);
            } else {
                super->action = 3;
                SetEntityPriority(super, PRIO_MESSAGE);
                sub_08065A50(this);
            }
            InitAnimationForceUpdate(super,
                                     GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
        } else {
            sub_08065A50(this);
            ResetPlayerAnimationAndAction();
        }
        SoundReq(SFX_VO_EPONA);
        super->interactType = INTERACTION_NONE;
    }
}

void Epona_Fusion(EponaEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 1;
        InitAnimationForceUpdate(super, 7);
    } else {
        UpdateAnimationSingleFrame(super);
    }
}
