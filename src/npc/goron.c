#include "global.h"
#include "entity.h"
#include "functions.h"
#include "message.h"
#include "effects.h"
#include "npc.h"

extern void (*gUnk_08111A80[])(Entity*);
extern void (*gUnk_08111A8C[])(Entity*);
extern Dialog gUnk_08111A94[];

void Goron(Entity* this) {
    if (this->flags & ENT_SCRIPTED) {
        gUnk_08111A8C[this->action](this);
    } else {
        gUnk_08111A80[this->action](this);
        sub_0806ED78(this);
    }
}

void sub_08069310(Entity* this) {
    sub_08078778(this);
    this->action = 1;
    InitAnimationForceUpdate(this, 2);
}

void sub_08069328(Entity* this) {
    if (((u32)(++this->field_0xf << 24) >> 24) > 16) {
        int action;

        this->field_0xf = 0;
        action = sub_0806ED9C(this, 40, 40);
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
        MessageFromTarget(this->actionDelay + (0x90 << 5));
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
        u32 var0 = this->field_0x82.HWORD & 0xF;
        bool32 createFx65 = BOOLCAST(var0); // = !var0

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
    return (sub_0801E99C(this) << 24) >> 24;
}

void sub_0806948C(Entity* this, ScriptExecutionContext* context) {
    context->condition = CheckKinstoneFused((sub_08069480(this) << 24) >> 24);
    gActiveScriptInfo.flags |= 1;
}

void sub_080694B0(Entity* this) {
    u32 kinstone = (sub_08069480(this) << 24) >> 24;
    if (CheckKinstoneFused(kinstone)) {
        sub_08078778(this);
    } else {
        sub_08078784(this, kinstone);
    }
}

void sub_080694D8(Entity* this) {
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
