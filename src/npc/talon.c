#include "npc.h"
#include "functions.h"
#include "item.h"

static const SpriteLoadData gUnk_0810FEB0[] = {
    { 0x4b, 0x8b, 0 },
    { 0x4b, 0x8b, 0 },
    { 0, 0, 0 },
};

extern u8 script_TalonGotKey;

void sub_0806574C(Entity* this);
void sub_08065570(Entity* this);
void sub_0806559C(Entity* this);
void sub_08065608(Entity* this);
void sub_08065648(Entity* this);
void sub_080656D4(Entity* this);
void sub_080656A4(Entity* this);
void sub_08065680(Entity* this);

void Talon(Entity* this) {
    static void (*const actionFuncs[])(Entity * this) = {
        sub_08065570,
        sub_0806559C,
    };
    static void (*const scriptedActionFuncs[])(Entity * this) = {
        sub_08065608, sub_08065648, sub_080656D4, sub_080656A4, sub_08065680,
    };
    if (this->flags & ENT_SCRIPTED) {
        scriptedActionFuncs[this->action](this);
    } else {
        actionFuncs[this->action](this);
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
    if (this->interactType != 0) {
        this->interactType = 0;
        ResetPlayerAnimationAndAction();
    }
}

void sub_08065608(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_0810FEB0)) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->field_0x68.HALF.LO = GetFusionToOffer(this);
        AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
        sub_0807DD50(this);
    }
}

void sub_08065648(Entity* this) {
    if (this->interactType == 2) {
        this->field_0x68.HALF.HI = this->action;
        this->action = 4;
        this->interactType = 0;
        sub_0806F118(this);
    } else {
        sub_0807DD94(this, NULL);
    }
}

void sub_08065680(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = this->field_0x68.HALF.HI;
        InitAnimationForceUpdate(this, this->field_0x6a.HALF.LO);
    }
}

void sub_080656A4(Entity* this) {
    if ((gMessage.doTextBox & 0x7F) == 0) {
        this->action = this->field_0x68.HALF.HI;
        InitAnimationForceUpdate(this, this->field_0x6a.HALF.LO);
    }
    UpdateAnimationSingleFrame(this);
}

void sub_080656D4(Entity* this) {
    if (this->interactType == 2) {
        this->field_0x68.HALF.HI = this->action;
        this->action = 4;
        this->interactType = 0;
        sub_0806F118(this);
        sub_0806574C(this);
    } else {
        if (this->interactType != 0) {
            if (GetInventoryValue(ITEM_QST_LONLON_KEY) != 0) {
                StartCutscene(this, (u16*)&script_TalonGotKey);
            } else {
                this->field_0x68.HALF.HI = this->action;
                this->action = 3;
                this->interactType = 0;
                MessageNoOverlap(*(u32*)(*(u32*)&this->cutsceneBeh.HWORD + 4), this);
                sub_0806574C(this);
                return;
            }
        }
        sub_0807DD94(this, NULL);
    }
}

void sub_0806574C(Entity* this) {
    u32 j;

    j = (this->animIndex & ~3) + sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity));
    if (this->animIndex != j) {
        InitAnimationForceUpdate(this, j);
    }
    this->field_0x6a.HALF.LO = this->animIndex;
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
