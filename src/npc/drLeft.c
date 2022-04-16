#include "npc.h"
#include "functions.h"
#include "item.h"

void sub_0806BFD8(Entity* this);

void DrLeft(Entity* this) {
    if (this->type == 0) {
        if (this->action == 0) {
            this->action += 1;
            SetDefaultPriority(this, PRIO_MESSAGE);
            sub_0807DD50(this);
        }
        ExecuteScriptForEntity(this, NULL);
        HandleEntity0x82Actions(this);
        GetNextFrame(this);
        sub_0806BFD8(this);
    } else {
        if (this->action == 0) {
            this->action += 1;
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
        0x4d07, 0x4d08, 0x4d09, 0x4d0a, 0x4d0a, 0x4d05, 0x4d06, 0x4d0f,
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
    static const u8 gUnk_081133B4[] = {
        0,
        6,
        8,
        12,
    };
    sub_08078850(this, 1, 0, &gUnk_081133B4);
}
