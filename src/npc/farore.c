/**
 * @file farore.c
 * @ingroup NPCs
 *
 * @brief Farore NPC
 */
#define NENT_DEPRECATED
#include "entity.h"
#include "npc.h"
#include "kinstone.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 animIndex;
} FaroreEntity;

void Farore(FaroreEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            InitScriptForNPC(super);
            break;
        case 1:
            if (super->interactType == 2) {
                super->action = 2;
                super->interactType = 0;
                InitializeNPCFusion(super);
                this->animIndex = super->animIndex;
                InitAnimationForceUpdate(super,
                                         GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity)));
            } else {
                ExecuteScriptAndHandleAnimation(super, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(super) != 0) {
                super->action = 1;
                InitAnimationForceUpdate(super, this->animIndex);
            }
            break;
    }
}

void Farore_MakeInteractable(Entity* this) {
    u32 kinstoneId = GetFusionToOffer(this);
    if ((gSave.fuserProgress[GetFuserId(this)] != 0) && (gSave.global_progress < 7)) {
        kinstoneId = KINSTONE_NONE;
    }
    AddInteractableWhenBigFuser(this, kinstoneId);
}

void Farore_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
