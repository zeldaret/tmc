/**
 * @file goron.c
 * @ingroup NPCs
 *
 * @brief Goron NPC
 */
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "kinstone.h"
#include "message.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[24];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
} GoronEntity;

void sub_08069310(Entity*);
void sub_08069328(Entity*);
void sub_08069390(Entity*);
void sub_080693C4(GoronEntity*);
void sub_080693D0(GoronEntity*);

void Goron(GoronEntity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08069310,
        sub_08069328,
        sub_08069390,
    };
    static void (*const scriptedActionFuncs[])(GoronEntity*) = {
        sub_080693C4,
        sub_080693D0,
    };
    if (super->flags & ENT_SCRIPTED) {
        scriptedActionFuncs[super->action](this);
    } else {
        actionFuncs[super->action](super);
        sub_0806ED78(super);
    }
}

void sub_08069310(Entity* this) {
    AddInteractableWhenBigObject(this);
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
    if (this->interactType != INTERACTION_NONE) {
        this->action = 2;
        RequestPriority(this);
        InitAnimationForceUpdate(this, 8);
        MessageFromTarget(this->timer + TEXT_INDEX(TEXT_MINISH2, 0x0));
    }
}

void sub_08069390(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        this->action = 1;
        this->interactType = INTERACTION_NONE;
        RevokePriority(this);
        InitAnimationForceUpdate(this, this->animationState);
    }
}

void sub_080693C4(GoronEntity* this) {
    super->action = 1;
    InitScriptForNPC(super);
}

void sub_08069428(Entity* this, s32 offsetX, bool32 createFx65);

void sub_080693D0(GoronEntity* this) {
    ExecuteScriptAndHandleAnimation(super, NULL);
    if (super->animIndex == 8) {
        bool32 createFx65 = (this->unk_82 & 0xF) != 0;

        if (super->frame == 1) {
            super->frame = 0;
            sub_08069428(super, Q_16_16(-8.0), createFx65);
        }
        if (super->frame == 2) {
            super->frame = 0;
            sub_08069428(super, Q_16_16(8.0), createFx65);
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
    return (u8)GetFusionToOffer(this);
}

void sub_0806948C(Entity* this, ScriptExecutionContext* context) {
    context->condition = CheckKinstoneFused((u8)sub_08069480(this));
    gActiveScriptInfo.flags |= 1;
}

void Goron_MakeInteractable(Entity* this) {
    u32 kinstone = (u8)sub_08069480(this);
    if (CheckKinstoneFused(kinstone)) {
        AddInteractableWhenBigObject(this);
    } else {
        AddInteractableWhenBigFuser(this, kinstone);
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

void sub_080694EC(GoronEntity* this) {
    u32 anim;
    super->animationState = 4;
    anim = 2;
    if (!CheckKinstoneFused(KINSTONE_2F))
        anim = 8;
    InitAnimationForceUpdate(super, anim);
    this->unk_80 = anim;
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
