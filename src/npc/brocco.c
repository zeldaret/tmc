/**
 * @file brocco.c
 * @ingroup NPCs
 *
 * @brief Brocco NPC
 */
#include "entity.h"
#include "message.h"
#include "npc.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
} BroccoEntity;

void sub_08063544(Entity*);
void sub_0806362C(BroccoEntity*);
void sub_0806355C(Entity*);
void sub_08063584(Entity*);
void sub_08063608(Entity*);

void Brocco(BroccoEntity* this) {
    if ((super->flags & ENT_SCRIPTED) != 0) {
        sub_0806362C(this);
    } else {
        sub_08063544(super);
    }
}

void sub_08063544(Entity* this) {
    static void (*const Brocco_Actions[])(Entity*) = {
        sub_0806355C,
        sub_08063584,
        sub_08063608,
    };
    Brocco_Actions[this->action](this);
}

void sub_0806355C(Entity* this) {
    this->action = this->action + 1;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 4);
    AddInteractableWhenBigObject(this);
}

void sub_08063584(Entity* this) {
    if (GetAnimationStateInRectRadius(this, 0x20, 0x20) >= 0) {
        if (this->subtimer == 0) {
            if ((Random() & 0x3f) == 0) {
                this->subtimer = 1;
                InitAnimationForceUpdate(this, 0);
            }
        }
    }

    if (this->subtimer != 0) {
        UpdateAnimationSingleFrame(this);
        if ((this->frame & ANIM_DONE) != 0) {
            this->subtimer = 0;
        }
    }

    if (this->interactType != INTERACTION_NONE) {
        this->action = 2;
        InitAnimationForceUpdate(this, GetAnimationState(this) + 4);
        MessageFromTarget(this->timer + TEXT_INDEX(TEXT_EMPTY, 0x01));
    }
    sub_0806ED78(this);
}

void sub_08063608(Entity* this) {
    u8 tmp = gMessage.state & MESSAGE_ACTIVE;
    if (tmp == 0) {
        this->action = 1;
        this->subtimer = tmp;
        InitAnimationForceUpdate(this, 4);
    }
}

void sub_0806362C(BroccoEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            this->animIndex = 0;
            sub_0807DD64(super);
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                this->animIndex = super->animIndex;
                InitAnimationForceUpdate(
                    super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)) + 4);
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptForEntity(super, NULL);
                HandleEntity0x82Actions(super);
                UpdateAnimationSingleFrame(super);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(super) == 0) {
                return;
            }
            super->action = 1;
            InitAnimationForceUpdate(super, this->animIndex);
            break;
    }
}

void sub_080636D8(Entity* this) {
    static const Dialog gUnk_0810CAAC[] = {
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FESTIVAL, 0x10) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FESTIVAL, 0x10) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x24), TEXT_INDEX(TEXT_TOWN, 0x23) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x24), TEXT_INDEX(TEXT_TOWN, 0x23) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN2, 0x1f), TEXT_INDEX(TEXT_TOWN2, 0x1e) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN3, 0x1e), TEXT_INDEX(TEXT_TOWN3, 0x1d) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN4, 0x1f), TEXT_INDEX(TEXT_TOWN4, 0x1e) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN5, 0x1f), TEXT_INDEX(TEXT_TOWN5, 0x1e) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN6, 0x19), TEXT_INDEX(TEXT_TOWN6, 0x18) } },
        { 5, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN6, 0x19), TEXT_INDEX(TEXT_TOWN6, 0x18) } },
    };

    ShowNPCDialogue(this, &gUnk_0810CAAC[gSave.global_progress]);
}

void Brocco_MakeInteractable(BroccoEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Brocco_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        this->y.HALF.HI -= 4;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
