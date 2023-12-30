/**
 * @file pina.c
 * @ingroup NPCs
 *
 * @brief Pina NPC
 */
#include "entity.h"
#include "functions.h"
#include "message.h"
#include "npc.h"
#include "object.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
} PinaEntity;

void sub_08063B68(PinaEntity* this);
void sub_08063A80(Entity* this);
void sub_08063A98(Entity* this);
void sub_08063AC0(Entity* this);
void sub_08063B44(Entity* this);

void Pina(PinaEntity* this) {
    if ((super->flags & ENT_SCRIPTED) != 0) {
        sub_08063B68(this);
    } else {
        sub_08063A80(super);
    }
}

void sub_08063A80(Entity* this) {
    static void (*const Pina_Actions[])(Entity*) = {
        sub_08063A98,
        sub_08063AC0,
        sub_08063B44,
    };
    Pina_Actions[this->action](this);
}

void sub_08063A98(Entity* this) {
    this->action++;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 4);
    AddInteractableWhenBigObject(this);
}

void sub_08063AC0(Entity* this) {
    if (GetAnimationStateInRectRadius(this, 0x20, 0x20) >= 0) {
        if (this->subtimer == 0) {
            if ((Random() & 0x3f) == 0) {
                InitAnimationForceUpdate(this, 0);
                this->subtimer = 1;
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

void sub_08063B44(Entity* this) {
    u8 tmp = gMessage.state & MESSAGE_ACTIVE;
    if (tmp == 0) {
        this->action = 1;
        this->subtimer = tmp;
        InitAnimationForceUpdate(this, 4);
    }
}

void sub_08063B68(PinaEntity* this) {
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

void sub_08063C14(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 8);
    }
}

void sub_08063C2C(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 4);
    }
}

void sub_08063C44(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 0);
    }
}

void sub_08063C5C(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        InitAnimationForceUpdate(entity, 9);
    }
}

void sub_08063C74(void) {
    Entity* entity = DeepFindEntityByID(NPC, PINA);
    if (entity != NULL) {
        CreateSpeechBubbleExclamationMark(entity, 8, 0xffffffe8);
    }
}

void sub_08063C90(Entity* this) {
    static const Dialog gUnk_0810CE04[] = {
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x22), TEXT_INDEX(TEXT_TOWN, 0x21) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x22), TEXT_INDEX(TEXT_TOWN, 0x21) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x22), TEXT_INDEX(TEXT_TOWN, 0x21) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x22), TEXT_INDEX(TEXT_TOWN, 0x21) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN2, 0x1d), TEXT_INDEX(TEXT_TOWN2, 0x1c) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN3, 0x1c), TEXT_INDEX(TEXT_TOWN3, 0x1b) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN4, 0x1d), TEXT_INDEX(TEXT_TOWN4, 0x1c) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN5, 0x1d), TEXT_INDEX(TEXT_TOWN5, 0x1c) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN6, 0x17), TEXT_INDEX(TEXT_TOWN6, 0x16) } },
        { 6, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN6, 0x17), TEXT_INDEX(TEXT_TOWN6, 0x16) } },
    };
    ShowNPCDialogue(this, &gUnk_0810CE04[gSave.global_progress]);
}

void Pina_MakeInteractable(PinaEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Pina_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        this->y.HALF.HI -= 4;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
