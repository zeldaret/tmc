/**
 * @file npc9.c
 * @ingroup NPCs
 *
 * @brief NPC 9
 */
#include "entity.h"
#include "message.h"
#include "npc.h"

void sub_08062AF0(Entity*);
void sub_08062B14(Entity*);
void sub_08062B48(Entity*);
void sub_08062B70(Entity*);

void NPC9(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08062AF0,
        sub_08062B14,
        sub_08062B48,
        sub_08062B70,
    };
    actionFuncs[this->action](this);
}

void sub_08062AF0(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = TRUE;
    InitializeAnimation(this, 0);
    AddInteractableWhenBigObject(this);
}

void sub_08062B14(Entity* this) {
    GetNextFrame(this);
    if (this->interactType != INTERACTION_NONE) {
        this->interactType = INTERACTION_NONE;
        this->action++;
        InitializeAnimation(this, 1);
        RequestPriority(this);
    }
    sub_0806ED78(this);
}

void sub_08062B48(Entity* this) {
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        MessageFromTarget(TEXT_INDEX(TEXT_EMPTY, 0x01)); // invalid
        this->action++;
    }
}

void sub_08062B70(Entity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        InitializeAnimation(this, 2);
        this->action = 1;
        RevokePriority(this);
    }
}
