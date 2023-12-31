/**
 * @file mailbox.c
 * @ingroup NPCs
 *
 * @brief Mailbox NPC
 */
#include "effects.h"
#include "entity.h"
#include "message.h"
#include "npc.h"

void sub_08063280(Entity*);
void sub_08063210(Entity*);
void sub_08063220(Entity*);
void sub_08063254(Entity*);
void sub_08063278(Entity*);

void Mailbox(Entity* this) {
    static void (*const gMailboxBehaviors[4])(Entity*) = {
        sub_08063210,
        sub_08063220,
        sub_08063254,
        sub_08063278,
    };
    gMailboxBehaviors[this->action](this);

    if (this->action != 0) {
        sub_0806ED78(this);
    }
}

void sub_08063210(Entity* this) {
    this->action = 1;
    InitAnimationForceUpdate(this, 0);
}

void sub_08063220(Entity* this) {
    u8 bVar1;

    if (this->interactType != INTERACTION_NONE) {
        this->action = 2;
        bVar1 = 8;
    } else {
        bVar1 = 0;
    }

    if (this->animIndex != bVar1) {
        InitAnimationForceUpdate(this, bVar1);
    } else {
        sub_08063280(this);
    }
}

void sub_08063254(Entity* this) {
    sub_08063280(this);
    if ((this->frame & ANIM_DONE) != 0) {
        this->action = 3;
        MessageFromTarget(0);
    }
}

void sub_08063278(Entity* this) {
    sub_08063280(this);
}

void sub_08063280(Entity* this) {
    u8 var; // r2@1

    UpdateAnimationSingleFrame(this);
    var = this->frame & ~ANIM_DONE;
    this->frame ^= var;
    if (var == 2)
        CreateFx(this, FX_MAILBOX_UNUSED, 0);
}
