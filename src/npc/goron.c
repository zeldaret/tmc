#include "global.h"
#include "entity.h"
#include "functions.h"
#include "message.h"
#include "effects.h"
#include "npc.h"

void sub_08069310(Entity*);
void sub_08069328(Entity*);
void sub_08069390(Entity*);
void sub_080693C4(Entity*);
void sub_080693D0(Entity*);

void Goron(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08069310,
        sub_08069328,
        sub_08069390,
    };
    static void (*const scriptedActionFuncs[])(Entity*) = {
        sub_080693C4,
        sub_080693D0,
    };
    if (this->flags & ENT_SCRIPTED) {
        scriptedActionFuncs[this->action](this);
    } else {
        actionFuncs[this->action](this);
        sub_0806ED78(this);
    }
}

void sub_08069310(Entity* this) {
    sub_08078778(this);
    this->action = 1;
    InitAnimationForceUpdate(this, 2);
}

void sub_08069328(Entity* this) {
    if (++this->subtimer > 16) {
        int action;

        this->subtimer = 0;
        action = GetAnimationStateInRectRadius(this, 40, 40);
        if (action >= 0) {
            this->animationState = action;
        }
    }
    if (this->animIndex != this->animationState) {
        InitAnimationForceUpdate(this, this->animationState);
    }
    if (this->interactType != 0) {
        this->action = 2;
        RequestPriority(this);
        InitAnimationForceUpdate(this, 8);
        MessageFromTarget(this->timer + TEXT_INDEX(TEXT_MINISH2, 0x0));
    }
}

void sub_08069390(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((gMessage.doTextBox & 0x7F) == 0) {
        this->action = 1;
        this->interactType = 0;
        RevokePriority(this);
        InitAnimationForceUpdate(this, this->animationState);
    }
}

void sub_080693C4(Entity* this) {
    this->action = 1;
    sub_0807DD50(this);
}

void sub_08069428(Entity* this, s32 offsetX, bool32 createFx65);

void sub_080693D0(Entity* this) {
    sub_0807DD94(this, NULL);
    if (this->animIndex == 8) {
        bool32 createFx65 = (this->field_0x82.HWORD & 0xF) != 0;

        if (this->frame == 1) {
            this->frame = 0;
            sub_08069428(this, Q_16_16(-8.0), createFx65);
        }
        if (this->frame == 2) {
            this->frame = 0;
            sub_08069428(this, Q_16_16(8.0), createFx65);
        }
    }
}

void sub_08069428(Entity* this, s32 offsetX, bool32 createFx65) {
    Entity* fx = CreateFx(this, FX_ROCK, 0);
    if (fx) {
        PositionRelative(this, fx, offsetX, Q_16_16(-16.0));
        SortEntityAbove(this, fx);
    }
    if (createFx65 != 0) {
        fx = CreateFx(this, FX_REFLECT4, 0);
        if (fx) {
            PositionRelative(this, fx, offsetX, Q_16_16(-16.0));
            SortEntityAbove(this, fx);
        }
    }
}

u32 sub_08069480(Entity* this) {
    return (u8)sub_0801E99C(this);
}

void sub_0806948C(Entity* this, ScriptExecutionContext* context) {
    context->condition = CheckKinstoneFused((u8)sub_08069480(this));
    gActiveScriptInfo.flags |= 1;
}

void sub_080694B0(Entity* this) {
    u32 kinstone = (u8)sub_08069480(this);
    if (CheckKinstoneFused(kinstone)) {
        sub_08078778(this);
    } else {
        sub_08078784(this, kinstone);
    }
}

void sub_080694D8(Entity* this) {
    static const Dialog gUnk_08111A94[] = {
        { 0x2f,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TINGLE, 0x13), TEXT_INDEX(TEXT_TINGLE, 0x0e) } },
        { 0x2f,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TINGLE, 0x14), TEXT_INDEX(TEXT_TINGLE, 0x0f) } },
        { 0x2f,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TINGLE, 0x15), TEXT_INDEX(TEXT_TINGLE, 0x10) } },
        { 0x2f,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TINGLE, 0x16), TEXT_INDEX(TEXT_TINGLE, 0x11) } },
        { 0x2f,
          DIALOG_KINSTONE,
          DIALOG_CHECK_FLAG,
          1,
          { TEXT_INDEX(TEXT_TINGLE, 0x17), TEXT_INDEX(TEXT_TINGLE, 0x12) } },
        { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x18) } },
    };
    ShowNPCDialogue(this, &gUnk_08111A94[this->type]);
}

void sub_080694EC(Entity* this) {
    u32 anim;
    this->animationState = 4;
    anim = 2;
    if (!CheckKinstoneFused(47))
        anim = 8;
    InitAnimationForceUpdate(this, anim);
    this->field_0x80.HWORD = anim;
}

void Goron_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
