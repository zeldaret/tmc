#include "global.h"
#include "entity.h"
#include "sprite.h"
#include "player.h"
#include "npc.h"
#include "functions.h"
#include "script.h"

extern SpriteLoadData gUnk_08110CA8[];

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
            sub_0805E3A0(this, 2);
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
        SetExtraSpriteFrame(this, 0, this->frames.all & 0xffffff7f);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetExtraSpriteFrame(this, 2, this->frameSpriteSettings & 0x3f);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        SetSpriteSubEntryOffsetData2(this, 1, 2);
        sub_0807000C(this);
    } else {
        SetExtraSpriteFrame(this, 0, this->frames.all & 0xffffff7f);
        SetExtraSpriteFrame(this, 1, this->frameIndex);
        SetSpriteSubEntryOffsetData1(this, 1, 0);
        sub_0807000C(this);
    }
}

void sub_080672B0(Entity* this, ScriptExecutionContext* context) {
    InitializeAnimation(this, context->intVariable + (this->animationState >> 1) + this->type * 8);
}
