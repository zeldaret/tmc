#include "npc.h"
#include "functions.h"

extern void (*gUnk_0810FEC4[])(Entity* this);
extern void (*gUnk_0810FEBC[])(Entity* this);
extern SpriteLoadData gUnk_0810FEB0;
extern u8 script_0800B41C;
extern u8 gUnk_0810FED8[];

void sub_0806574C(Entity* this);

void Talon(Entity* this) {
    if (this->flags & 2) {
        gUnk_0810FEC4[this->action](this);
    } else {
        gUnk_0810FEBC[this->action](this);
    }
}

void sub_08065570(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_0810FEB0) != 0) {
        InitializeAnimation(this, 0);
        sub_08078778(this);
        this->action = 1;
        this->field_0xf = 1;
        this->animationState = 2;
    }
}

void sub_0806559C(Entity* this) {
    s32 offset;
    s32 result;

    this->actionDelay++;
    if (this->actionDelay >= 9) {
        this->actionDelay = 0;
        result = sub_0806ED9C(this, 0x20, 0x20);
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
        sub_080791D0();
    }
}

void sub_08065608(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_0810FEB0) != 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->field_0x68.HALF.LO = sub_0801E99C(this);
        sub_08078784(this, this->field_0x68.HALF.LO);
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
        goto label;
    } else {
        if (this->interactType != 0) {
            if (GetInventoryValue(0x37) != 0) { // keyLonLon
                StartCutscene(this, (u16*)&script_0800B41C);
                goto label2;
            } else {
                this->field_0x68.HALF.HI = this->action;
                this->action = 3;
                this->interactType = 0;
                MessageNoOverlap(*(u32*)(*(u32*)&this->cutsceneBeh.HWORD + 4), this);
            label:
                sub_0806574C(this);
            }
        } else {
        label2:
            sub_0807DD94(this, NULL);
        }
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
        if (LoadExtraSpriteData(this, &gUnk_0810FEB0) != 0) {
            this->action++;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 6);
        }
    } else {
        GetNextFrame(this);
    }
}
