/**
 * @file anju.c
 * @ingroup NPCs
 *
 * @brief Anju NPC
 */
#define NENT_DEPRECATED
#include "entity.h"
#include "npc.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} AnjuEntity;

void Anju(AnjuEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            super->animationState = super->timer;
            InitScriptForNPC(super);
            return;
        case 1:
            if (super->interactType == 2) {
                super->action = 2;
                super->interactType = 0;
                InitializeAnimation(super, (super->animIndex & -4) + GetAnimationStateForDirection4(
                                                                         GetFacingDirection(super, &gPlayerEntity)));
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptAndHandleAnimation(super, NULL);
            }
            return;
        case 2:
            if (UpdateFuseInteraction(super)) {
                super->action = 1;
            }
    }
}

void Anju_MakeInteractable(AnjuEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Anju_Fusion(AnjuEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 1;
        InitAnimationForceUpdate(super, 6);
    } else {
        UpdateAnimationSingleFrame(super);
    }
}
