/**
 * @file farmers.c
 * @ingroup NPCs
 *
 * @brief Farmers NPC
 */
#include "entity.h"
#include "functions.h"
#include "npc.h"
#include "script.h"

static const SpriteLoadData gUnk_08113140[] = {
    { 0xf7, 0x48, 0x4 }, { 0x40f7, 0x48, 0x4 }, { 0, 0, 0 }, { 0xf8, 0x49, 0x4 }, { 0x40f8, 0x49, 0x4 }, { 0, 0, 0 },
};

void sub_0806BC58(Entity* this);

void Farmers(Entity* this) {
    if (this->action == 0) {
        if (!LoadExtraSpriteData(this, &gUnk_08113140[this->type * 3])) {
            return;
        }
        this->action++;
        this->spriteSettings.flipX = this->timer;
        if (this->spriteSettings.flipX == 0) {
            this->animationState = 6;
        } else {
            this->animationState = 2;
        }
        this->timer = this->animationState;
        sub_0806BC58(this);
        sub_0807DD64(this);
    }
    ExecuteScriptForEntity(this, 0);
    HandleEntity0x82Actions(this);
    GetNextFrame(this);
}

void sub_0806BC58(Entity* this) {
    SetEntityPriority(this, PRIO_MESSAGE);
}

void Farmers_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, this->frame & 0x7f);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_0806BC94(Entity* this, ScriptExecutionContext* context) {
    u32 offset = 0;
    if (this->spriteSettings.flipX) {
        offset = 8;
    }
    InitializeAnimation(this, context->intVariable + offset + (this->animationState >> 1));
}

void sub_0806BCB8(Entity* this) {
    this->animationState = this->timer;
}

void Farmers_MarkEenieFuserDoner(Entity* this) {
    if (this->type == 0) {
        MarkFuserDone(this);
    }
}

void Farmers_MakeInteractable(Entity* this) {
    AddInteractableWhenBigFuser(this, GetFusionToOffer(this));
}

void sub_0806BCE8(Entity* this) {
    static const Dialog gUnk_08113158[] = {
        { 0x29,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_FARMERS, 0x7), TEXT_INDEX(TEXT_FARMERS, 0x2) } },
        { 0x29,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_FARMERS, 0x11), TEXT_INDEX(TEXT_FARMERS, 0xd) } },
    };
    ShowNPCDialogue(this, &gUnk_08113158[this->type]);
}

void Farmers_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08113140[this->type * 3])) {
            this->action++;
            this->spriteSettings.draw = 1;
            this->spriteSettings.flipX = 0;
            sub_0806BC58(this);
            InitAnimationForceUpdate(this, 3);
        }
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
