/**
 * @file mama.c
 * @ingroup NPCs
 *
 * @brief Mama NPC
 */
#include "entity.h"
#include "npc.h"
#include "save.h"
#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
} MamaEntity;

static const SpriteLoadData gUnk_08113754[] = {
    { 0x101, 0x4e, 0x4 },
    { 0x2101, 0x4e, 0x4 },
    { 0, 0, 0 },
};

bool32 sub_0806C454(Entity* this);

void Mama(MamaEntity* this) {
    switch (super->action) {
        case 0:
            if (sub_0806C454(super) != 0) {
                super->action = 1;
                super->spriteSettings.draw = 1;
                super->animationState = super->timer;
                this->animIndex = 0;
                InitScriptForNPC(super);
            }
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                this->animIndex = super->animIndex;
                InitializeAnimation(super,
                                    GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptForEntity(super, NULL);
                HandleEntity0x82Actions(super);
                GetNextFrame(super);
            }
            break;

        case 2:
            if (UpdateFuseInteraction(super) != 0) {
                super->action = 1;
                InitializeAnimation(super, this->animIndex);
            }
            break;
    }
}

bool32 sub_0806C454(Entity* this) {
    if (!LoadExtraSpriteData(this, gUnk_08113754)) {
        return FALSE;
    } else {
        SetEntityPriority(this, PRIO_MESSAGE);
        return TRUE;
    }
}

void Mama_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, this->frame & 0x7f);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_0806C4A8(Entity* this, ScriptExecutionContext* context) {
    s32 tmp;
    if ((this->frame & ANIM_DONE) != 0) {
        tmp = GetAnimationState(this);
        if (tmp < 0) {
            tmp = 3;
        }
        this->animationState = tmp * 2;
        InitAnimationForceUpdate(this, tmp);
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_0806C4DC(Entity* this) {
    static const Dialog dialogs[] = {
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x03), TEXT_INDEX(TEXT_CAFE, 0x02) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x03), TEXT_INDEX(TEXT_CAFE, 0x02) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x03), TEXT_INDEX(TEXT_CAFE, 0x02) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x03), TEXT_INDEX(TEXT_CAFE, 0x02) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x0d), TEXT_INDEX(TEXT_CAFE, 0x0c) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x1b), TEXT_INDEX(TEXT_CAFE, 0x1a) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x27), TEXT_INDEX(TEXT_CAFE, 0x26) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x33), TEXT_INDEX(TEXT_CAFE, 0x32) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x3f), TEXT_INDEX(TEXT_CAFE, 0x3e) } },
        { 1, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x49), TEXT_INDEX(TEXT_CAFE, 0x48) } },
    };
    ShowNPCDialogue(this, &dialogs[gSave.global_progress]);
}

void Mama_MakeInteractable(MamaEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Mama_Fusion(Entity* this) {
    if (this->action == 0) {
        if (sub_0806C454(this) != 0) {
            this->action++;
            this->spriteSettings.draw = 1;
            this->y.HALF.HI -= 4;
            InitializeAnimation(this, 2);
        }
    } else {
        GetNextFrame(this);
    }
}
