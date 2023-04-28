#include "global.h"
#include "entity.h"
#include "player.h"
#include "npc.h"
#include "item.h"

static const SpriteLoadData gUnk_08110CA8[] = {
    { 0x51, 0x3f, 0x4 }, { 0x1451, 0x3f, 0x4 }, { 0x4001, 0x3f, 0x4 }, { 0, 0, 0 },
    { 0x51, 0x3f, 0x4 }, { 0x1451, 0x3f, 0x4 }, { 0x4001, 0x3f, 0x4 }, { 0, 0, 0 },
    { 0x51, 0x3f, 0x4 }, { 0x1451, 0x3f, 0x4 }, { 0, 0, 0 },           { 0, 0, 0 },
    { 0x51, 0x3f, 0x4 }, { 0x1451, 0x3f, 0x4 }, { 0, 0, 0 },           { 0, 0, 0 },
};

void Carpenter(Entity* this) {
    if (*(u32*)&this->cutsceneBeh == 0) {
        DeleteThisEntity();
    }
    switch (this->action) {
        case 0:
            if (!LoadExtraSpriteData(this, gUnk_08110CA8 + this->type * 4))
                break;
            this->action = 1;
            this->field_0x68.HALF.HI = 0;
            SetDefaultPriority(this, PRIO_MESSAGE);
            sub_0807DD64(this);

        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                this->field_0x68.HALF.HI = this->animIndex;
                InitializeAnimation(this,
                                    sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 4 + (this->type * 8));
                sub_0806F118(this);
            } else {
                ExecuteScriptForEntity(this, 0);
                HandleEntity0x82Actions(this);
                GetNextFrame(this);
            }
            break;
        case 2:
            if (!UpdateFuseInteraction(this))
                break;
            this->action = 1;
            InitializeAnimation(this, this->field_0x68.HALF.HI);
            break;
    }
}

void Carpenter_Head(Entity* this) {
    if (this->type < 2) {
        SetExtraSpriteFrame(this, 0, this->frame & ~0x80);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetExtraSpriteFrame(this, 2, this->frameSpriteSettings & 0x3f);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        SetSpriteSubEntryOffsetData2(this, 1, 2);
        sub_0807000C(this);
    } else {
        SetExtraSpriteFrame(this, 0, this->frame & ~0x80);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    }
}

void sub_080672B0(Entity* this, ScriptExecutionContext* context) {
    InitializeAnimation(this, context->intVariable + (this->animationState >> 1) + this->type * 8);
}

void sub_080672C8(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_CARPENTERS, 0xd),  TEXT_INDEX(TEXT_CARPENTERS, 0xe),  0x0,
        TEXT_INDEX(TEXT_CARPENTERS, 0x18), TEXT_INDEX(TEXT_CARPENTERS, 0x19), 0x0,
        TEXT_INDEX(TEXT_CARPENTERS, 0x23), TEXT_INDEX(TEXT_CARPENTERS, 0x23), 0x0,
        TEXT_INDEX(TEXT_CARPENTERS, 0x26), TEXT_INDEX(TEXT_CARPENTERS, 0x26), 0x0,
    };
    u32 dialog = 0;
    u32 tmp;
    if (GetInventoryValue(ITEM_GUST_JAR) == 0) {
        if (CheckGlobalFlag(TABIDACHI)) {
            dialog = 1;
        }
    }
    MessageNoOverlap(messageIndices[(dialog * 2 + this->type * 6) / 2], this);
}

void sub_08067304(Entity* this) {
    static const Dialog dialog = {
        0xb, DIALOG_KINSTONE, DIALOG_CHECK_FLAG, 1, { TEXT_INDEX(TEXT_TOWN3, 0x42), TEXT_INDEX(TEXT_TOWN3, 0x41) }
    };
    ShowNPCDialogue(this, &dialog);
}

void Carpenter_MakeInteractable(Entity* this) {
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
}

void Carpenter_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08110CA8[this->type * 4])) {
            this->action = this->action + 1;
            this->spriteSettings.draw = 1;
            SetDefaultPriority(this, PRIO_MESSAGE);
            InitializeAnimation(this, (u32)this->type * 8 + 2);
        }
    } else {
        GetNextFrame(this);
    }
}
