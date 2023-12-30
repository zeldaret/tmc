/**
 * @file ministerPotho.c
 * @ingroup NPCs
 *
 * @brief Minister Potho NPC
 */
#include "entity.h"
#include "flags.h"
#include "item.h"
#include "message.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} MinisterPothoEntity;

void sub_08066864(MinisterPothoEntity*);
void sub_080667E4(Entity*);
void sub_08066808(Entity*);
void sub_0806685C(Entity*);

void MinisterPotho(MinisterPothoEntity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080667E4,
        sub_08066808,
        sub_0806685C,
    };
    if ((super->flags & ENT_SCRIPTED) != 0) {
        sub_08066864(this);
    } else {
        actionFuncs[super->action](super);
        sub_0806ED78(super);
    }
}

void sub_080667E4(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 2);
    AddInteractableWhenBigObject(this);
}

void sub_08066808(Entity* this) {
    s32 tmp = GetAnimationStateInRectRadius(this, 0x28, 0x28);
    if (tmp < 0) {
        tmp = 2;
    } else {
        if (this->subtimer == 0) {
            this->subtimer = 16;
        } else {
            this->subtimer--;
            tmp = this->animIndex;
        }
    }
    if (sub_0806F078(this, tmp) == 0) {
        UpdateAnimationSingleFrame(this);
    }
    if (this->interactType != INTERACTION_NONE) {
        this->action = 2;
        this->interactType = INTERACTION_NONE;
    }
}

void sub_0806685C(Entity* this) {
    this->action = 1;
}

void sub_08066864(MinisterPothoEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            this->fusionOffer = GetFusionToOffer(super);
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
            if (UpdateFuseInteraction(super) != 0) {
                super->action = 1;
            }
            break;
    }
}

void MinisterPotho_MakeInteractable(Entity* this) {
    AddInteractableWhenBigFuser(this, GetFusionToOffer(this));
}

void sub_08066904(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_PROLOGUE, 0x5a),
        TEXT_INDEX(TEXT_VAATI, 0x27),
        TEXT_INDEX(TEXT_VAATI, 0x2a),
        TEXT_INDEX(TEXT_VAATI, 0x2f),
    };
    u32 index;
    if (CheckGlobalFlag(LV1_CLEAR) == 0) {
        index = 0;
    } else if (GetInventoryValue(ITEM_GREEN_SWORD) == 0) {
        index = 1;
    } else if (GetInventoryValue(ITEM_RED_SWORD) == 0) {
        index = 2;
    } else {
        index = 3;
    }
    MessageNoOverlap(messageIndices[index], this);
}

void MinisterPotho_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
