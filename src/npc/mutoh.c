#include "global.h"
#include "entity.h"
#include "player.h"
#include "flags.h"
#include "message.h"
#include "npc.h"
#include "item.h"

static const SpriteLoadData gUnk_08110C00[] = {
    { 0x51, 0x3e, 0x4 },
    { 0x1051, 0x3e, 0x4 },
    { 0, 0, 0 },
};

void Mutoh(Entity* this) {
    if (*(u32*)&this->cutsceneBeh == 0) {
        DeleteThisEntity();
    }

    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, gUnk_08110C00)) {
                this->action = 1;
                this->spriteSettings.draw = TRUE;
                SetDefaultPriority(this, PRIO_MESSAGE);
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 4);
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
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

void Mutoh_MakeInteractable(Entity* this) {
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
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
