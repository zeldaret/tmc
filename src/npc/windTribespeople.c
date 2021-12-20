#include "global.h"
#include "audio.h"
#include "entity.h"
#include "npc.h"
#include "textbox.h"
#include "flags.h"
#include "structures.h"
#include "functions.h"
#include "save.h"
#include "script.h"

extern void sub_0806C7D4(Entity*);

extern void (*const gUnk_08113A7C[])(Entity*);
extern void (*const gUnk_08113A8C[])(Entity*, ScriptExecutionContext*);

extern SpriteLoadData gUnk_08113A1C[];
extern u16 script_08014A80;
extern Dialog gUnk_08113ABC[];
extern u16 gUnk_08113B0C[];

extern Dialog gUnk_08113B28;

extern Dialog gUnk_08113B30;

extern u16 gUnk_08113B12[];

extern u16 gUnk_08113B22[];

extern u16 gUnk_08113B1E[];

extern u16 gUnk_08113B16[];

extern u8 gUnk_08113B38[];

extern SpriteLoadData gUnk_08113A1C[];

void WindTribespeople(Entity* this) {
    gUnk_08113A7C[this->action](this);
}

void sub_0806C798(Entity* this) {
    s32 iVar1;

    iVar1 = LoadExtraSpriteData(this, gUnk_08113A1C + (this->type * 4));
    if (iVar1 != 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->animationState = this->actionDelay;
        sub_0807DD50(this);
        sub_0806C7D4(this);
    }
}

void sub_0806C7D4(Entity* this) {
    u32 iVar1;
    u32 uVar2;

    if (this->interactType == '\x02') {
        this->action = 3;
        this->interactType = '\0';
        sub_0806F118(this);
    } else {
        sub_0807DD94(this, NULL);
        if ((this->type2 == 3) && (!CheckGlobalFlag(WARP_EVENT_END)) && (CheckLocalFlag(0x63)) && (CheckRoomFlag(0))) {
            this->type2 = 7;
            sub_0807DD80(this, &script_08014A80);
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
    context->condition = 0;
    gUnk_08113A8C[this->type2](this, context);
}

void sub_0806C928(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08113ABC[gSave.global_progress]);
}

void sub_0806C944(Entity* this) {
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
    MessageNoOverlap(gUnk_08113B0C[iVar2], this);
}

void sub_0806C978(Entity* this) {
    u32 flag;
    u32 flagAsBool;
    flag = CheckGlobalFlag(0x58);
    flagAsBool = BOOLCAST(flag);
    MessageNoOverlap(gUnk_08113B12[flagAsBool], this);
}

void sub_0806C99C(Entity* this) {
    s32 flag;
    u32 flagAsBool;

    flag = CheckGlobalFlag(0x58);
    flagAsBool = BOOLCAST(flag) & 2;
    if (CheckLocalFlag(99) != 0) {
        flagAsBool += 1;
    }
    MessageNoOverlap(gUnk_08113B16[flagAsBool], this);
}

void sub_0806C9D0(Entity* this) {
    u32 tmp = 0;
    if (CheckLocalFlag(100) == 0) {
        tmp = 1;
    }
    MessageNoOverlap(gUnk_08113B1E[tmp], this);
}

void sub_0806C9F8(Entity* this) {
    u32 flag;
    u32 flagAsBool;
    flag = CheckGlobalFlag(0x58);
    flagAsBool = BOOLCAST(flag);
    MessageNoOverlap(gUnk_08113B22[flagAsBool], this);
}

void sub_0806CA1C(Entity* this) {
    MessageNoOverlap(0x251b, this);
}

void sub_0806CA2C(Entity* this) {
    MessageNoOverlap(0x2527, this);
}

void sub_0806CA3C(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08113B28);
}

void sub_0806CA4C(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08113B30);
}

void sub_0806CA5C(Entity* this, ScriptExecutionContext* context) {
    context->wait = gUnk_08113B38[context->unk_18++];
    if (this->type2 == 10) {
        EnqueueSFX(0xe8);
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
