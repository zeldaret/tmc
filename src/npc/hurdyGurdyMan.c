/**
 * @file hurdyGurdyMan.c
 * @ingroup NPCs
 *
 * @brief Hurdy Gurdy Man NPC
 */
#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unk_69;
} HurdyGurdyManEntity;

static const SpriteLoadData gUnk_081144F0[] = { { 0x163, 0x59, 0x4 }, { 0x4163, 0x59, 0x4 }, { 0, 0, 0 } };

extern u16* gUnk_08001A7C[];

void HurdyGurdyMan(HurdyGurdyManEntity* this) {
    u32 index;
    u16* pointerToArray;

    switch (super->action) {
        case 0:
            if (LoadExtraSpriteData(super, gUnk_081144F0)) {
                super->action = 1;
                this->unk_69 = 0;
                SetEntityPriority(super, PRIO_MESSAGE);
                InitScriptForNPC(super);
            }
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                this->unk_69 = super->animIndex;
                InitializeAnimation(super,
                                    GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                index = GetFuserId(super);
                pointerToArray = gUnk_08001A7C[index];
                if (this->fusionOffer == 0x32) {
                    pointerToArray = pointerToArray + 3;
                }
                InitializeFuseInfo(super, *pointerToArray, pointerToArray[1], (u32)pointerToArray[2]);
                gPlayerState.controlMode = CONTROL_DISABLED;
            } else {
                ExecuteScriptAndHandleAnimation(super, NULL);
            }

            break;
        case 2:
            if ((UpdateFuseInteraction(super) != 0)) {
                super->action = 1;
                InitializeAnimation(super, this->unk_69);
            }
            break;
    }
}

void HurdyGurdyMan_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, (this->frame & ~ANIM_DONE) + 8);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_0806E418(Entity* this) {
    static const Dialog dialogs[] = {
        { 0x59,
          DIALOG_LOCAL_FLAG,
          DIALOG_TOGGLE_FLAG,
          1,
          { TEXT_INDEX(TEXT_CAFE, 0x52), TEXT_INDEX(TEXT_CAFE, 0x51) } },
        { 0x59,
          DIALOG_LOCAL_FLAG,
          DIALOG_TOGGLE_FLAG,
          1,
          { TEXT_INDEX(TEXT_CAFE, 0x52), TEXT_INDEX(TEXT_CAFE, 0x51) } },
        { 0x59,
          DIALOG_LOCAL_FLAG,
          DIALOG_TOGGLE_FLAG,
          1,
          { TEXT_INDEX(TEXT_CAFE, 0x54), TEXT_INDEX(TEXT_CAFE, 0x53) } },
        { 0x59,
          DIALOG_LOCAL_FLAG,
          DIALOG_TOGGLE_FLAG,
          1,
          { TEXT_INDEX(TEXT_CAFE, 0x56), TEXT_INDEX(TEXT_CAFE, 0x55) } },
        { 0x59,
          DIALOG_LOCAL_FLAG,
          DIALOG_TOGGLE_FLAG,
          1,
          { TEXT_INDEX(TEXT_CAFE, 0x58), TEXT_INDEX(TEXT_CAFE, 0x57) } },
        { 0x59,
          DIALOG_LOCAL_FLAG,
          DIALOG_TOGGLE_FLAG,
          1,
          { TEXT_INDEX(TEXT_CAFE, 0x5a), TEXT_INDEX(TEXT_CAFE, 0x59) } },
        { 0x59,
          DIALOG_LOCAL_FLAG,
          DIALOG_TOGGLE_FLAG,
          1,
          { TEXT_INDEX(TEXT_CAFE, 0x5c), TEXT_INDEX(TEXT_CAFE, 0x5b) } },
        { 0x59, DIALOG_LOCAL_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_CAFE, 0x5e), TEXT_INDEX(TEXT_CAFE, 0x5d) } }
    };
    s32 tmp = gSave.global_progress - 2;
    if (tmp < 0) {
        tmp = 0;
    }
    ShowNPCDialogue(this, &dialogs[tmp]);
}

void HurdyGurdyMan_MakeInteractable(HurdyGurdyManEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void HurdyGurdyMan_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_081144F0)) {
            this->action++;
            this->spriteSettings.draw = 1;
            SetEntityPriority(this, PRIO_MESSAGE);
            InitializeAnimation(this, 10);
        }
    } else {
        GetNextFrame(this);
    }
}
