#include "global.h"
#include "sound.h"
#include "entity.h"
#include "npc.h"

void sub_0806C798(Entity*);
void sub_0806C7D4(Entity*);
void sub_0806C834(Entity*);
void sub_0806C85C(Entity*);
void sub_0806CA4C(Entity*, ScriptExecutionContext*);
void sub_0806CA3C(Entity*, ScriptExecutionContext*);
void sub_0806CA2C(Entity*, ScriptExecutionContext*);
void sub_0806CA1C(Entity*, ScriptExecutionContext*);
void sub_0806C99C(Entity*, ScriptExecutionContext*);
void sub_0806C9F8(Entity*, ScriptExecutionContext*);
void sub_0806C9D0(Entity*, ScriptExecutionContext*);
void sub_0806C99C(Entity*, ScriptExecutionContext*);
void sub_0806C978(Entity*, ScriptExecutionContext*);
void sub_0806C944(Entity*, ScriptExecutionContext*);
void sub_0806C928(Entity*, ScriptExecutionContext*);

static const SpriteLoadData gUnk_08113A1C[] = {
    { 0x106, 0x51, 0x4 }, { 0x2107, 0x51, 0x4 }, { 0x0, 0x0, 0x0 },    { 0x0, 0x0, 0x0 },     { 0x2107, 0x52, 0x4 },
    { 0x106, 0x52, 0x4 }, { 0x0, 0x0, 0x0 },     { 0x0, 0x0, 0x0 },    { 0x104, 0x53, 0x4 },  { 0x2107, 0x53, 0x4 },
    { 0x0, 0x0, 0x0 },    { 0x0, 0x0, 0x0 },     { 0x105, 0x54, 0x4 }, { 0x2108, 0x54, 0x4 }, { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0 },    { 0x104, 0x55, 0x4 },  { 0xd04, 0x55, 0x4 }, { 0x2508, 0x55, 0x4 }, { 0x0, 0x0, 0x0 },
    { 0x104, 0x56, 0x4 }, { 0x2107, 0x56, 0x4 }, { 0x0, 0x0, 0x0 },    { 0x0, 0x0, 0x0 }
};
extern u16 script_WindTribespeople6;

void WindTribespeople(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0806C798,
        sub_0806C7D4,
        sub_0806C834,
        sub_0806C85C,
    };
    actionFuncs[this->action](this);
}

void sub_0806C798(Entity* this) {
    s32 iVar1;

    iVar1 = LoadExtraSpriteData(this, gUnk_08113A1C + (this->type * 4));
    if (iVar1 != 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->animationState = this->timer;
        sub_0807DD50(this);
        sub_0806C7D4(this);
    }
}

void sub_0806C7D4(Entity* this) {
    u32 iVar1;
    u32 uVar2;

    if (this->interactType == '\x02') {
        this->action = 3;
        this->interactType = 0;
        sub_0806F118(this);
    } else {
        sub_0807DD94(this, NULL);
        if ((this->type2 == 3) && (!CheckGlobalFlag(WARP_EVENT_END)) && (CheckLocalFlag(0x63)) && (CheckRoomFlag(0))) {
            this->type2 = 7;
            sub_0807DD80(this, &script_WindTribespeople6);
        }
    }
}

void sub_0806C834(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        --this->action;
        InitializeAnimation(this, (this->animationState / 2) + 4);
    }
}

void sub_0806C85C(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        this->action = 1;
    }
}

void sub_0806C870(Entity* this) {
    u8 bVar1;

    bVar1 = sub_0801E99C(this);
    this->field_0x68.HALF.LO = bVar1;
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void WindTribespeople_Head(Entity* this) {
    u32 uVar1;
    u32 uVar2;
    u8 pbVar3;

    pbVar3 = (this->frame & 0x3F);
    if (this->type == 4) {
        SetExtraSpriteFrame(this, 0, 9);
        SetExtraSpriteFrame(this, 1, pbVar3);
        SetExtraSpriteFrame(this, 2, this->frameIndex);
        SetSpriteSubEntryOffsetData2(this, 2, 0);
        SetSpriteSubEntryOffsetData1(this, 2, 1);
        sub_0807000C(this);
    } else {
        if (this->frame & 0x40) {
            uVar2 = 1;
            uVar1 = 0;
        } else {
            uVar2 = 0;
            uVar1 = 1;
        }
        SetExtraSpriteFrame(this, uVar2, pbVar3);
        SetExtraSpriteFrame(this, uVar1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, uVar1, uVar2);
        sub_0807000C(this);
    }
}

void sub_0806C90C(Entity* this, ScriptExecutionContext* context) {
    static void (*const typeScriptFuncs[])(Entity*, ScriptExecutionContext*) = {
        sub_0806C928, sub_0806C944, sub_0806C978, sub_0806C99C, sub_0806C9D0, sub_0806C928,
        sub_0806C9F8, sub_0806C99C, sub_0806CA1C, sub_0806CA2C, sub_0806CA3C, sub_0806CA4C,
    };
    context->condition = 0;
    typeScriptFuncs[this->type2](this, context);
}

void sub_0806C928(Entity* this, ScriptExecutionContext* context) {
    static const Dialog gUnk_08113ABC[] = {
        { 0x0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { 0x4e20, 0x4e1f } },
        { 0x0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { 0x4e20, 0x4e1f } },
        { 0x0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { 0x4e20, 0x4e1f } },
        { 0x0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { 0x4e20, 0x4e1f } },
        { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e21 } },
        { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e22 } },
        { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e23 } },
        { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e23 } },
        { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e24 } },
        { 0x0, 0x0, DIALOG_NORMAL, 1, { 0x0, 0x4e24 } },
    };
    ShowNPCDialogue(this, &gUnk_08113ABC[gSave.global_progress]);
}

void sub_0806C944(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[] = {
        0x2f02,
        0x2f0e,
        0x2f14,
    };
    int iVar1;
    int iVar2;

    iVar1 = CheckGlobalFlag(WARP_EVENT_END);
    if (iVar1 == 0) {
        iVar2 = 0;
    } else {
        iVar1 = CheckLocalFlag(0x63);
        iVar2 = 2;
        if (iVar1 != 0) {
            iVar2 = 1;
        }
    }
    MessageNoOverlap(messageIndices[iVar2], this);
}

void sub_0806C978(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[] = {
        0x2f05,
        0x2f11,
    };
    u32 flagAsBool = 0;
    if (CheckGlobalFlag(WARP_EVENT_END)) {
        flagAsBool = 1;
    }
    MessageNoOverlap(messageIndices[flagAsBool], this);
}

void sub_0806C99C(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[] = {
        0x2f03,
        0x2f0a,
        0x2f15,
        0x2f0f,
    };
    u32 flagAsBool = 0;

    if (CheckGlobalFlag(WARP_EVENT_END)) {
        flagAsBool = 2;
    }
    if (CheckLocalFlag(99) != 0) {
        flagAsBool += 1;
    }
    MessageNoOverlap(messageIndices[flagAsBool], this);
}

void sub_0806C9D0(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[] = {
        0x2f12,
        0x2f13,
    };
    u32 tmp = 0;
    if (CheckLocalFlag(100) == 0) {
        tmp = 1;
    }
    MessageNoOverlap(messageIndices[tmp], this);
}

void sub_0806C9F8(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[] = {
        0x2f04,
        0x2f10,
        0x0,
    };
    u32 flagAsBool = 0;
    if (CheckGlobalFlag(WARP_EVENT_END)) {
        flagAsBool = 1;
    }
    MessageNoOverlap(messageIndices[flagAsBool], this);
}

void sub_0806CA1C(Entity* this, ScriptExecutionContext* context) {
    MessageNoOverlap(0x251b, this);
}

void sub_0806CA2C(Entity* this, ScriptExecutionContext* context) {
    MessageNoOverlap(0x2527, this);
}

void sub_0806CA3C(Entity* this, ScriptExecutionContext* context) {
    static const Dialog gUnk_08113B28 = { KUMOUE_GIRL_TALK, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { 0x2f19, 0x2f16 } };
    ShowNPCDialogue(this, &gUnk_08113B28);
}

void sub_0806CA4C(Entity* this, ScriptExecutionContext* context) {
    static const Dialog gUnk_08113B30 = {
        KUMOUE_UNCLE_TALK, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { 0x2f18, 0x2f17 }
    };
    ShowNPCDialogue(this, &gUnk_08113B30);
}

void sub_0806CA5C(Entity* this, ScriptExecutionContext* context) {
    static const u8 gUnk_08113B38[] = { 30, 25, 20, 15, 10, 5, 0 };
    context->wait = gUnk_08113B38[context->unk_18++];
    if (this->type2 == 10) {
        EnqueueSFX(SFX_WIND2);
    }
    if (context->wait != 0) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void WindTribespeople_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08113A1C[this->type * 4]) != 0) {
            this->action += 1;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
