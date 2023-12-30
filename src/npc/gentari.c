/**
 * @file gentari.c
 * @ingroup NPCs
 *
 * @brief Gentari NPC
 */
#include "entity.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} GentariEntity;

void Gentari(GentariEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = TRUE;
            SetEntityPriority(super, PRIO_MESSAGE);
            this->fusionOffer = GetFusionToOffer(super);
            AddInteractableWhenBigFuser(super, this->fusionOffer);
            InitScriptForNPC(super);
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                InitAnimationForceUpdate(
                    super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptAndHandleAnimation(super, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(super)) {
                super->action = 1;
            }
    }
}

void Gentari_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = TRUE;
        SetEntityPriority(this, PRIO_MESSAGE);
        InitAnimationForceUpdate(this, 10);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
