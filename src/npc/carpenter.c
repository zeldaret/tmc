#include "global.h"
#include "entity.h"
#include "sprite.h"
#include "player.h"
#include "npc.h"
#include "functions.h"
#include "script.h"
#include "flags.h"
#include "textbox.h"

extern SpriteLoadData gUnk_08110CA8[];

extern u16 gUnk_08110CE8[];

extern Dialog gUnk_08110D00;

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
            SetDefaultPriority(this, 2);
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
        SetExtraSpriteFrame(this, 0, this->frame & 0xffffff7f);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetExtraSpriteFrame(this, 2, this->frameSpriteSettings & 0x3f);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        SetSpriteSubEntryOffsetData2(this, 1, 2);
        sub_0807000C(this);
    } else {
        SetExtraSpriteFrame(this, 0, this->frame & 0xffffff7f);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    }
}

void sub_080672B0(Entity* this, ScriptExecutionContext* context) {
    InitializeAnimation(this, context->intVariable + (this->animationState >> 1) + this->type * 8);
}

void sub_080672C8(Entity* this) {
    u32 dialog = 0;
    u32 tmp;
    if (GetInventoryValue(0x11) == 0) {
        tmp = CheckGlobalFlag(TABIDACHI);
        dialog = BOOLCAST(tmp);
    }
    MessageNoOverlap(gUnk_08110CE8[(dialog * 2 + this->type * 6) / 2], this);
}

void sub_08067304(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08110D00);
}

void sub_08067314(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Carpenter_Fusion(Entity* this) {
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, &gUnk_08110CA8[this->type * 4]) != 0) {
            this->action = this->action + 1;
            this->spriteSettings.draw = 1;
            SetDefaultPriority(this, 2);
            InitializeAnimation(this, (u32)this->type * 8 + 2);
        }
    } else {
        GetNextFrame(this);
    }
}
