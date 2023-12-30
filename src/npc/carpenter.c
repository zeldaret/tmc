/**
 * @file carpenter.c
 * @ingroup NPCs
 *
 * @brief Carpenter NPC
 */
#include "entity.h"
#include "item.h"
#include "npc.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 animIndex;
    /*0x6a*/ u8 unused[26];
    /*0x84*/ ScriptExecutionContext* context;
} CarpenterEntity;

static const SpriteLoadData gUnk_08110CA8[] = {
    { 0x51, 0x3f, 0x4 }, { 0x1451, 0x3f, 0x4 }, { 0x4001, 0x3f, 0x4 }, { 0, 0, 0 },
    { 0x51, 0x3f, 0x4 }, { 0x1451, 0x3f, 0x4 }, { 0x4001, 0x3f, 0x4 }, { 0, 0, 0 },
    { 0x51, 0x3f, 0x4 }, { 0x1451, 0x3f, 0x4 }, { 0, 0, 0 },           { 0, 0, 0 },
    { 0x51, 0x3f, 0x4 }, { 0x1451, 0x3f, 0x4 }, { 0, 0, 0 },           { 0, 0, 0 },
};

void Carpenter(CarpenterEntity* this) {
    if (this->context == NULL) {
        DeleteThisEntity();
    }
    switch (super->action) {
        case 0:
            if (!LoadExtraSpriteData(super, gUnk_08110CA8 + super->type * 4))
                break;
            super->action = 1;
            this->animIndex = 0;
            SetEntityPriority(super, PRIO_MESSAGE);
            sub_0807DD64(super);

        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                this->animIndex = super->animIndex;
                InitializeAnimation(super,
                                    GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)) + 4 +
                                        (super->type * 8));
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptForEntity(super, 0);
                HandleEntity0x82Actions(super);
                GetNextFrame(super);
            }
            break;
        case 2:
            if (!UpdateFuseInteraction(super))
                break;
            super->action = 1;
            InitializeAnimation(super, this->animIndex);
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

void Carpenter_MakeInteractable(CarpenterEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Carpenter_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08110CA8[this->type * 4])) {
            this->action++;
            this->spriteSettings.draw = 1;
            SetEntityPriority(this, PRIO_MESSAGE);
            InitializeAnimation(this, (u32)this->type * 8 + 2);
        }
    } else {
        GetNextFrame(this);
    }
}
