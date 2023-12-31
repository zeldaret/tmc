
/**
 * @file mutoh.c
 * @ingroup NPCs
 *
 * @brief Mutoh NPC
 */
#include "entity.h"
#include "flags.h"
#include "item.h"
#include "message.h"
#include "npc.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unused[27];
    /*0x84*/ ScriptExecutionContext* context;
} MutohEntity;

static const SpriteLoadData gUnk_08110C00[] = {
    { 0x51, 0x3e, 0x4 },
    { 0x1051, 0x3e, 0x4 },
    { 0, 0, 0 },
};

void Mutoh(MutohEntity* this) {
    if (this->context == NULL) {
        DeleteThisEntity();
    }

    switch (super->action) {
        case 0:
            if (LoadExtraSpriteData(super, gUnk_08110C00)) {
                super->action = 1;
                super->spriteSettings.draw = TRUE;
                SetEntityPriority(super, PRIO_MESSAGE);
                InitScriptForNPC(super);
            }
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                InitAnimationForceUpdate(
                    super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)) + 4);
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

void Mutoh_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, (this->frame & -0x81));
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_080670B4(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_CARPENTERS, 0x2),
        TEXT_INDEX(TEXT_CARPENTERS, 0x3),
    };
    u32 uVar2;

    uVar2 = 0;
    if (GetInventoryValue(ITEM_GUST_JAR) == 0) {
        if (CheckGlobalFlag(TABIDACHI)) {
            uVar2 = 1;
        }
    }
    MessageNoOverlap(messageIndices[uVar2], this);
}

void sub_080670E4(Entity* this) {
    static const Dialog dialogs[] = {
        { 0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x1), TEXT_INDEX(TEXT_MUTOH, 0x0) } },
        { 0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x1), TEXT_INDEX(TEXT_MUTOH, 0x0) } },
        { 0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x1), TEXT_INDEX(TEXT_MUTOH, 0x0) } },
        { 0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x1), TEXT_INDEX(TEXT_MUTOH, 0x0) } },
        { 0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x1), TEXT_INDEX(TEXT_MUTOH, 0x0) } },
        { 0xb, DIALOG_KINSTONE, DIALOG_CHECK_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x4), TEXT_INDEX(TEXT_MUTOH, 0x2) } },
        { 0xb, DIALOG_KINSTONE, DIALOG_CHECK_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x4), TEXT_INDEX(TEXT_MUTOH, 0x3) } },
        { 0xb, DIALOG_KINSTONE, DIALOG_CHECK_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x4), TEXT_INDEX(TEXT_MUTOH, 0x3) } },
        { 0xb, DIALOG_KINSTONE, DIALOG_CHECK_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x4), TEXT_INDEX(TEXT_MUTOH, 0x5) } },
        { 0xb, DIALOG_KINSTONE, DIALOG_CHECK_FLAG, 1, { TEXT_INDEX(TEXT_MUTOH, 0x4), TEXT_INDEX(TEXT_MUTOH, 0x5) } },
    };
    ShowNPCDialogue(this, &dialogs[gSave.global_progress]);
}

void Mutoh_MakeInteractable(MutohEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Mutoh_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_08110C00)) {
            this->action++;
            this->spriteSettings.draw = TRUE;
            InitializeAnimation(this, 2);
        }
    } else {
        GetNextFrame(this);
    }
}
