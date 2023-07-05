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

void Stamp(Entity* ent) {
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
    if ((ent->flags & ENT_SCRIPTED) != 0) {
        scriptedActionFuncs[ent->action](ent);
    } else {
        actionFuncs[ent->action](ent);
    }
}

void sub_08062BD4(Entity* ent) {
    ent->action = 1;
    ent->spriteSettings.draw = 1;
    InitializeAnimation(ent, 0);
    AddInteractableWhenBigObject(ent);
}

void sub_08062BF8(Entity* ent) {
    GetNextFrame(ent);
    if (ent->interactType != 0) {
        ent->interactType = 0;
        ent->action++;
        RequestPriority(ent);
    }
    sub_0806ED78(ent);
}

void sub_08062C24(Entity* ent) {
    GetNextFrame(ent);
    if ((ent->frame & 128) != 0) {
        InitializeAnimation(ent, 4);
        MessageFromTarget(TEXT_INDEX(TEXT_EMPTY, 0x01));
        ent->action++;
    }
}

void sub_08062C54(Entity* ent) {
    if ((gMessage.doTextBox & 127) == 0) {
        ent->action = 1;
        InitializeAnimation(ent, 0);
        RevokePriority(ent);
    }
}

void sub_08062C7C(Entity* ent) {
    ent->action = 1;
    sub_0807DD64(ent);
    InitializeAnimation(ent, 0);
    CreateFx(ent, FX_SWEAT, 0);
    sub_08062CA4(ent);
}

void sub_08062CA4(Entity* ent) {
    ExecuteScriptForEntity(ent, NULL);
    HandleEntity0x82Actions(ent);
    GetNextFrame(ent);
}

void sub_08062CBC(Entity* ent) {
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
    ShowNPCDialogue(ent, &gUnk_0810C2E4[uVar1]);
}

void sub_08062CE0(Entity* ent) {
    if (ent->action == 0) {
        ent->action = 1;
    }
}
