#include "global.h"
#include "entity.h"
#include "npc.h"
#include "functions.h"

extern void sub_0806B41C(Entity*);
extern void sub_0806B3CC(Entity*);

extern u16* gUnk_08001A7C[40];
extern u16 gUnk_08112E54[4];
extern Dialog gUnk_08112E2C[5];
extern SpriteLoadData gUnk_08112E1C;

void Percy_Head(Entity* this) {
    SetExtraSpriteFrame(this, 0, (this->frameSpriteSettings & 0x3f) + 0x13);
    SetExtraSpriteFrame(this, 1, (this->frame & 0x7f) + 0xb);
    SetExtraSpriteFrame(this, 2, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 2, 1);
    SetSpriteSubEntryOffsetData2(this, 2, 0);
    sub_0807000C(this);
}

void Percy(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_0806B41C(this);
    } else {
        sub_0806B3CC(this);
    }
}

void sub_0806B3CC(Entity* this) {
    if (this->action == 0) {
        if (!LoadExtraSpriteData(this, &gUnk_08112E1C)) {
            return;
        }
        this->action = 1;
        InitializeAnimation(this, 0);
        sub_08078778(this);
    }
    GetNextFrame(this);
    if (this->interactType != 0) {
        this->interactType = 0;
        MessageFromTarget(0);
    }
    sub_0806ED78(this);
}

void sub_0806B41C(Entity* this) {
    u16* tmp;
    u32 idx;

    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, &gUnk_08112E1C)) {
                this->action = 1;
                this->spriteSettings.draw = 1;
                if (this->type2 == 2) {
                    CreateFx(this, FX_SWEAT, 0);
                }
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitializeAnimation(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 4);
                idx = sub_08002632(this);
                tmp = gUnk_08001A7C[idx];
                if (this->field_0x68.HALF.LO == 33)
                    tmp += 3;
                sub_0801DFB4(this, tmp[0], tmp[1], tmp[2]);
                gPlayerState.controlMode = CONTROL_DISABLED;
            } else {
                sub_0807DD94(this, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
            break;
    }
}

void sub_0806B4F0(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08112E2C[this->type2]);
}

void sub_0806B504(Entity* this) {
    int idx;

    idx = 1;
    if (CheckKinstoneFused(0x21)) {
        idx = 3;
    } else if (!CheckLocalFlag(URO_POEMN_TALK)) {
        idx = 0;
        SetLocalFlag(URO_POEMN_TALK);
    }

    MessageNoOverlap(gUnk_08112E54[idx], this);
}

void sub_0806B540(Entity* this) {
    ScriptExecutionContext* context;

    context = *(ScriptExecutionContext**)&this->cutsceneBeh;
    switch (context->unk_18) {
        case 0:
            MessageNoOverlap(0x2312, this);
            if (CheckLocalFlag(0x3f) != 0) {
                return;
            }
            context->unk_18 += 1;
            SetLocalFlag(0x3f);
            break;
        case 1:
            if ((gMessage.doTextBox & 0x7f) == 0) {
                context->unk_18 = 2;
                MessageNoOverlap(0x2315, this);
            }
            break;
        case 2:
            if ((gMessage.doTextBox & 0x7f) == 0) {
                context->unk_18 = 3;
                if (gSave.stats.filler3[0] != 0) {
                    sub_080A7C18(0x58, 0, 0);
                } else {
                    sub_080A7C18(0x3f, 100, 0);
                }
                SetRoomFlag(0xf);
            }
            break;
        case 3:
            if ((gPlayerEntity.action != PLAYER_ITEMGET)) {
                context->wait = 0x2d;
                return;
            }
            break;
    }

    gActiveScriptInfo.commandSize = 0;
}

void sub_0806B60C(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Percy_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08112E1C) != 0) {
            this->action += 1;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 2);
        }
    } else {
        GetNextFrame(this);
    }
}
