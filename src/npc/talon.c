/**
 * @file talon.c
 * @ingroup NPCs
 *
 * @brief Talon NPC
 */
#include "functions.h"
#include "item.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unk_69;
    /*0x6a*/ u8 unk_6a;
    /*0x6b*/ u8 unused[25];
    /*0x84*/ u32 unk_84;
} TalonEntity;

static const SpriteLoadData gUnk_0810FEB0[] = {
    { 0x4b, 0x8b, 0 },
    { 0x4b, 0x8b, 0 },
    { 0, 0, 0 },
};

extern u8 script_TalonGotKey;

void sub_0806574C(TalonEntity* this);
void sub_08065570(Entity* this);
void sub_0806559C(Entity* this);
void sub_08065608(TalonEntity* this);
void sub_08065648(TalonEntity* this);
void sub_080656D4(TalonEntity* this);
void sub_080656A4(TalonEntity* this);
void sub_08065680(TalonEntity* this);

void Talon(TalonEntity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08065570,
        sub_0806559C,
    };
    static void (*const scriptedActionFuncs[])(TalonEntity*) = {
        sub_08065608, sub_08065648, sub_080656D4, sub_080656A4, sub_08065680,
    };
    if (super->flags & ENT_SCRIPTED) {
        scriptedActionFuncs[super->action](this);
    } else {
        actionFuncs[super->action](super);
    }
}

void sub_08065570(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_0810FEB0)) {
        InitializeAnimation(this, 0);
        AddInteractableWhenBigObject(this);
        this->action = 1;
        this->subtimer = 1;
        this->animationState = 2;
    }
}

void sub_0806559C(Entity* this) {
    s32 offset;
    s32 result;

    this->timer++;
    if (this->timer >= 9) {
        this->timer = 0;
        result = GetAnimationStateInRectRadius(this, 0x20, 0x20);
        if (result < 0) {
            offset = this->animationState + 4;
        } else {
            this->animationState = result;
            offset = result;
        }
    } else {
        offset = this->animIndex;
    }

    if (this->animIndex != offset) {
        InitializeAnimation(this, offset);
    } else {
        GetNextFrame(this);
    }
    sub_0806ED78(this);
    if (this->interactType != INTERACTION_NONE) {
        this->interactType = INTERACTION_NONE;
        ResetPlayerAnimationAndAction();
    }
}

void sub_08065608(TalonEntity* this) {
    if (LoadExtraSpriteData(super, gUnk_0810FEB0)) {
        super->action = 1;
        super->spriteSettings.draw = 1;
        this->fusionOffer = GetFusionToOffer(super);
        AddInteractableWhenBigFuser(super, this->fusionOffer);
        InitScriptForNPC(super);
    }
}

void sub_08065648(TalonEntity* this) {
    if (super->interactType == INTERACTION_FUSE) {
        this->unk_69 = super->action;
        super->action = 4;
        super->interactType = INTERACTION_NONE;
        InitializeNPCFusion(super);
    } else {
        ExecuteScriptAndHandleAnimation(super, NULL);
    }
}

void sub_08065680(TalonEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        super->action = this->unk_69;
        InitAnimationForceUpdate(super, this->unk_6a);
    }
}

void sub_080656A4(TalonEntity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->action = this->unk_69;
        InitAnimationForceUpdate(super, this->unk_6a);
    }
    UpdateAnimationSingleFrame(super);
}

void sub_080656D4(TalonEntity* this) {
    if (super->interactType == INTERACTION_FUSE) {
        this->unk_69 = super->action;
        super->action = 4;
        super->interactType = INTERACTION_NONE;
        InitializeNPCFusion(super);
        sub_0806574C(this);
    } else {
        if (super->interactType != INTERACTION_NONE) {
            if (GetInventoryValue(ITEM_QST_LONLON_KEY) != 0) {
                StartCutscene(super, (u16*)&script_TalonGotKey);
            } else {
                this->unk_69 = super->action;
                super->action = 3;
                super->interactType = INTERACTION_NONE;
                MessageNoOverlap(*(u32*)(*(u32*)&this->unk_84 + 4), super);
                sub_0806574C(this);
                return;
            }
        }
        ExecuteScriptAndHandleAnimation(super, NULL);
    }
}

void sub_0806574C(TalonEntity* this) {
    u32 j;

    j = (super->animIndex & ~3) + GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base));
    if (super->animIndex != j) {
        InitAnimationForceUpdate(super, j);
    }
    this->unk_6a = super->animIndex;
}

void sub_08065780(Entity* this, ScriptExecutionContext* context) {
    static const u8 gUnk_0810FED8[] = {
        10, 20, 30, 18, 28, 38, 12, 24,
    };
    u32 rand;

    rand = Random();
    this->animationState = rand & 6;
    context->wait = gUnk_0810FED8[rand >> 8 & 7];
}

void Talon_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, ((this->frame & 7) + 0xB));
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void Talon_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_0810FEB0)) {
            this->action++;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
