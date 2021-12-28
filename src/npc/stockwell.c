#include "entity.h"
#include "script.h"
#include "room.h"
#include "message.h"
#include "functions.h"
#include "npc.h"

extern void (*const gUnk_0810FDC8[])(Entity*);

extern void (*const gUnk_0810FDA4[])(Entity*);

extern bool32 sub_08056338(void);

extern void sub_08078850(Entity*, u32, u8, u32*);
extern u32 gUnk_0810FDA0;
extern u16 script_Stockwell;

void Stockwell(Entity* this) {
    gUnk_0810FDA4[this->action](this);
    ExecuteScript(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
    sub_0806ED78(this);
}

void sub_08065080(Entity* this) {
    ScriptExecutionContext* context;

    this->action = 1;
    this->spriteSettings.draw = 1;
    SetDefaultPriority(this, PRIO_MESSAGE);
    InitializeAnimation(this, 4);
    sub_08078778(this);
#ifndef EU
    sub_08078850(this, 0, 0, &gUnk_0810FDA0);
#endif
    context = StartCutscene(this, &script_Stockwell);
    *(ScriptExecutionContext**)&this->cutsceneBeh = context;
}

ASM_FUNC("asm/non_matching/stockwell/sub_080650CC.inc", void sub_080650CC(Entity* this))

void sub_080651AC(Entity* this) {
    GetNextFrame(this);
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->interactType = gMessage.doTextBox & 0x7f;
        this->action = 1;
        InitializeAnimation(this, 4);
    }
}

void sub_080651D8(Entity* this) {
    GetNextFrame(this);
    gUnk_0810FDC8[this->subAction](this);
}

void sub_080651F8(Entity* this) {
    if ((this->frame & 0x20) == 0) {
        this->subAction = 1;
        this->actionDelay = 0x3c;
        InitializeAnimation(this, 1);
        CreateSpeechBubbleExclamationMark(this, 8, 0xffffffe8);
        SetPlayerControl(1);
    }
}

void sub_0806522C(Entity* this) {
    if (--this->actionDelay == 0) {
        ++this->subAction;
        MessageNoOverlap(0x2c16, this);
    }
}

void sub_08065250(Entity* this) {
    switch (sub_08056338()) {
        case 0:
            this->subAction += 1;
            this->actionDelay = 0x1e;
            this->field_0xf = 0;
            CreateSpeechBubbleExclamationMark(this, 8, 0xffffffe8);
            break;
        case 1:
            this->subAction = 7;
            this->actionDelay = 0;
            this->field_0xf = 2;
            break;
    }
}

void sub_0806528C(Entity* this) {
    if (--this->actionDelay == 0) {
        ++this->subAction;
        MessageNoOverlap(0x2c18, this);
    }
}

void sub_080652B0(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->subAction += 1;
        this->actionDelay = 10;
        gRoomVars.animFlags = this->field_0xf;
        CreateItemEntity(0x36, 0, 0);
    }
}

void sub_080652E4(Entity* this) {
    if (this->actionDelay != 0) {
        this->actionDelay -= 1;
    } else {
        if (gPlayerEntity.action != 8) {
            this->subAction += 1;
            MessageNoOverlap(0x2c19, this);
        }
    }
}

void sub_08065314(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->subAction += 1;
        MenuFadeIn(3, 3);
    }
}

void sub_08065338(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        this->action = 1;
        this->subAction = gMessage.doTextBox & 0x7f;
        gRoomVars.animFlags = this->field_0xf;
        InitializeAnimation(this, 4);
    }
}

void sub_08065368(Entity* this) {
    GetNextFrame(this);
}

ASM_FUNC("asm/non_matching/stockwell/sub_08065370.inc",
         void sub_08065370(Entity* this, ScriptExecutionContext* context))

void sub_080654DC(Entity* this) {
    CreateSpeechBubbleQuestionMark(this, 8, 0xffffffe8);
}

void sub_080654EC(Entity* this) {
    CreateSpeechBubbleExclamationMark(this, 8, 0xffffffe8);
}

void sub_080654FC(Entity* this) {
    if ((this->frame & 0x20) != 0) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.flags |= 1;
    }
}

void sub_08065528(Entity* this, ScriptExecutionContext* context) {
    gRoomVars.animFlags = context->intVariable;
}
