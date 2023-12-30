/**
 * @file npc26.c
 * @ingroup NPCs
 *
 * @brief NPC 26
 */
#include "entity.h"
#include "npc.h"

static void (*const gUnk_081106D4[])(Entity*);
static void (*const gUnk_081106E0[])(Entity*);

void NPC26(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        gUnk_081106E0[this->action](this);
    } else {
        gUnk_081106D4[this->action](this);
        sub_0806ED78(this);
    }
}

static void sub_080669B8(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitAnimationForceUpdate(this, 2);
    AddInteractableWhenBigObject(this);
}

static void sub_080669DC(Entity* this) {
    s32 sVar1;
    s32 sVar2;

    sVar1 = GetAnimationStateInRectRadius(this, 0x28, 0x28);
    if (sVar1 < 0) {
        sVar1 = 2;
    } else {
        if (this->subtimer == 0) {
            this->subtimer = 16;
        } else {
            this->subtimer = this->subtimer - 1;
            sVar1 = this->animIndex;
        }
    }
    sVar2 = sub_0806F078(this, sVar1);
    if (sVar2 == 0) {
        UpdateAnimationSingleFrame(this);
    }
    if (this->interactType != INTERACTION_NONE) {
        this->action = 2;
        this->interactType = INTERACTION_NONE;
    }
}

static void sub_08066A30(Entity* this) {
    this->action = 1;
}

static void sub_08066A38(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    InitScriptForNPC(this);
}

static void sub_08066A50(Entity* this) {
    ExecuteScriptAndHandleAnimation(this, NULL);
}

static void (*const gUnk_081106D4[])(Entity*) = { sub_080669B8, sub_080669DC, sub_08066A30 };

static void (*const gUnk_081106E0[])(Entity*) = { sub_08066A38, sub_08066A50 };
