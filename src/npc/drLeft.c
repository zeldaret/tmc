/**
 * @file drLeft.c
 * @ingroup NPCs
 *
 * @brief Dr Left NPC
 */
#include "functions.h"
#include "item.h"
#include "npc.h"

void sub_0806BFD8(Entity* this);

void DrLeft(Entity* this) {
    if (this->type == 0) {
        if (this->action == 0) {
            this->action++;
            SetEntityPriority(this, PRIO_MESSAGE);
            InitScriptForNPC(this);
        }
        ExecuteScriptForEntity(this, NULL);
        HandleEntity0x82Actions(this);
        GetNextFrame(this);
        sub_0806BFD8(this);
    } else {
        if (this->action == 0) {
            this->action++;
            this->frameIndex = 0;
            SortEntityBelow(this, this);
        }
    }
}

void sub_0806BFD8(Entity* this) {
    switch (this->frameSpriteSettings & 3) {
        case 1:
            InitializeAnimation(this, (Random() & 3) + 0xc);
            break;
        case 2:
            InitializeAnimation(this, 0);
            break;
    }
}

void sub_0806C00C(Entity* this, ScriptExecutionContext* context) {
    if ((this->frame & ANIM_DONE) != 0) {
        context->condition = 1;
    } else {
        context->condition = 0;
    }
}

void sub_0806C028(Entity* this, ScriptExecutionContext* context) {
    InitializeAnimation(this, context->intVariable + this->animationState / 2);
}

void sub_0806C038(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_DR_LEFT, 0x7), TEXT_INDEX(TEXT_DR_LEFT, 0x8), TEXT_INDEX(TEXT_DR_LEFT, 0x9),
        TEXT_INDEX(TEXT_DR_LEFT, 0xa), TEXT_INDEX(TEXT_DR_LEFT, 0xa), TEXT_INDEX(TEXT_DR_LEFT, 0x5),
        TEXT_INDEX(TEXT_DR_LEFT, 0x6), TEXT_INDEX(TEXT_DR_LEFT, 0xf),
    };
    s32 index;

    index = gSave.global_progress - 5;
    if (index != 0) {
        index = 0;
    }
    if (GetInventoryValue(ITEM_FLIPPERS) == 0) {
        if (GetInventoryValue(ITEM_QST_BOOK2) == 0) {
            index = 6;
            if (CheckLocalFlag(LEFT_TALK) == 0) {
                index = 5;
                SetLocalFlag(LEFT_TALK);
            }
        } else {
            index = 7;
            if (GetInventoryValue(ITEM_QST_BOOK2) > 1) {
                index = 0;
            }
        }
    }
    MessageNoOverlap(messageIndices[index], this);
}

void sub_0806C09C(Entity* this) {
    static const Rect gUnk_081133B4 = { 0, 6, 8, 12 };
    SetInteractableObjectCollision(this, 1, 0, &gUnk_081133B4);
}
