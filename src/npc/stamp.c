/**
 * @file stamp.c
 * @ingroup NPCs
 *
 * @brief Stamp NPC
 */
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "kinstone.h"
#include "message.h"
#include "npc.h"

void sub_08062CA4(Entity*);
void sub_08062BD4(Entity*);
void sub_08062BF8(Entity*);
void sub_08062C24(Entity*);
void sub_08062C54(Entity*);
void sub_08062C7C(Entity*);

void Stamp(Entity* this) {
    static void (*const actionFuncs[4])(Entity*) = {
        sub_08062BD4,
        sub_08062BF8,
        sub_08062C24,
        sub_08062C54,
    };
    static void (*const scriptedActionFuncs[2])(Entity*) = {
        sub_08062C7C,
        sub_08062CA4,
    };
    if ((this->flags & ENT_SCRIPTED) != 0) {
        scriptedActionFuncs[this->action](this);
    } else {
        actionFuncs[this->action](this);
    }
}

void sub_08062BD4(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitializeAnimation(this, 0);
    AddInteractableWhenBigObject(this);
}

void sub_08062BF8(Entity* this) {
    GetNextFrame(this);
    if (this->interactType != INTERACTION_NONE) {
        this->interactType = INTERACTION_NONE;
        this->action++;
        RequestPriority(this);
    }
    sub_0806ED78(this);
}

void sub_08062C24(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 128) != 0) {
        InitializeAnimation(this, 4);
        MessageFromTarget(TEXT_INDEX(TEXT_EMPTY, 0x01));
        this->action++;
    }
}

void sub_08062C54(Entity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        this->action = 1;
        InitializeAnimation(this, 0);
        RevokePriority(this);
    }
}

void sub_08062C7C(Entity* this) {
    this->action = 1;
    sub_0807DD64(this);
    InitializeAnimation(this, 0);
    CreateFx(this, FX_SWEAT, 0);
    sub_08062CA4(this);
}

void sub_08062CA4(Entity* this) {
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    GetNextFrame(this);
}

void sub_08062CBC(Entity* this) {
    static const Dialog gUnk_0810C2E4[2] = {
        { 0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_POST, 0x1), TEXT_INDEX(TEXT_POST, 0x0) } },
        { 0, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_POST, 0x3), TEXT_INDEX(TEXT_POST, 0x2) } },
    };
    u32 uVar1;
    if (CheckKinstoneFused(KINSTONE_2C)) {
        uVar1 = 1;
    } else {
        uVar1 = 0;
    }
    ShowNPCDialogue(this, &gUnk_0810C2E4[uVar1]);
}

void sub_08062CE0(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
    }
}
