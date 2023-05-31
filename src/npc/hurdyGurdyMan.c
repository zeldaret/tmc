#include "entity.h"
#include "functions.h"
#include "save.h"
#include "npc.h"

static const SpriteLoadData gUnk_081144F0[] = { { 0x163, 0x59, 0x4 }, { 0x4163, 0x59, 0x4 }, { 0, 0, 0 } };

extern u16* gUnk_08001A7C[];

void HurdyGurdyMan(Entity* this) {
    u32 index;
    u16* pointerToArray;

    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, gUnk_081144F0)) {
                this->action = 1;
                this->field_0x68.HALF.HI = 0;
                SetDefaultPriority(this, PRIO_MESSAGE);
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                this->field_0x68.HALF.HI = this->animIndex;
                InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                index = GetFuserId(this);
                pointerToArray = gUnk_08001A7C[index];
                if (this->field_0x68.HALF.LO == 0x32) {
                    pointerToArray = pointerToArray + 3;
                }
                sub_0801DFB4(this, *pointerToArray, pointerToArray[1], (u32)pointerToArray[2]);
                gPlayerState.controlMode = CONTROL_DISABLED;
            } else {
                sub_0807DD94(this, NULL);
            }

            break;
        case 2:
            if ((UpdateFuseInteraction(this) != 0)) {
                this->action = 1;
                InitializeAnimation(this, this->field_0x68.HALF.HI);
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

void HurdyGurdyMan_MakeInteractable(Entity* this) {
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
}

void HurdyGurdyMan_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_081144F0)) {
            this->action++;
            this->spriteSettings.draw = 1;
            SetDefaultPriority(this, PRIO_MESSAGE);
            InitializeAnimation(this, 10);
        }
    } else {
        GetNextFrame(this);
    }
}
