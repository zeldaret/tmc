/**
 * @file kingDaltus.c
 * @ingroup NPCs
 *
 * @brief King Daltus NPC
 */
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "npc.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
} KingDaltusEntity;

void sub_08066654(KingDaltusEntity*);
void sub_08066688(KingDaltusEntity*);
void sub_080666DC(KingDaltusEntity*);
void sub_080666E4(KingDaltusEntity*);
void sub_0806670C(KingDaltusEntity*);
void sub_08066718(KingDaltusEntity*);

void KingDaltus(KingDaltusEntity* this) {
    static void (*const actionFuncs[])(KingDaltusEntity*) = {
        sub_08066654,
        sub_08066688,
        sub_080666DC,
    };
    static void (*const scriptedActionFuncs[])(KingDaltusEntity*) = {
        sub_080666E4,
        sub_0806670C,
        sub_08066718,
    };
    if ((super->flags & ENT_SCRIPTED) != 0) {
        if (super->interactType == INTERACTION_FUSE) {
            super->interactType = INTERACTION_NONE;
            super->action = 2;
            InitAnimationForceUpdate(super,
                                     GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
            InitializeNPCFusion(super);
        }
        scriptedActionFuncs[super->action](this);
    } else {
        actionFuncs[super->action](this);
        sub_0806ED78(super);
    }
}

void sub_08066654(KingDaltusEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
    InitAnimationForceUpdate(super, 2);
}

void sub_08066688(KingDaltusEntity* this) {
    s32 tmp = GetAnimationStateInRectRadius(super, 0x28, 0x28);
    if (tmp < 0) {
        tmp = 2;
    } else {
        if (super->subtimer == 0) {
            super->subtimer = 16;
        } else {
            super->subtimer--;
            tmp = super->animIndex;
        }
    }
    if (sub_0806F078(super, tmp) == 0) {
        UpdateAnimationSingleFrame(super);
    }
    if (super->interactType != INTERACTION_NONE) {
        super->action = 2;
        super->interactType = INTERACTION_NONE;
    }
}

void sub_080666DC(KingDaltusEntity* this) {
    super->action = 1;
}

void sub_080666E4(KingDaltusEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    this->fusionOffer = GetFusionToOffer(super);
    InitScriptForNPC(super);
}

void sub_0806670C(KingDaltusEntity* this) {
    ExecuteScriptAndHandleAnimation(super, NULL);
}

void sub_08066718(KingDaltusEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = 1;
    }
}

void KingDaltus_MakeInteractable(KingDaltusEntity* this) {
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void sub_0806673C(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_PROLOGUE, 0x58),
        TEXT_INDEX(TEXT_VAATI, 0x26),
        TEXT_INDEX(TEXT_VAATI, 0x29),
        TEXT_INDEX(TEXT_VAATI, 0x2e),
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

void KingDaltus_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 6);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
