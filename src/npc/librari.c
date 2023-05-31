#include "global.h"
#include "entity.h"
#include "npc.h"
#include "item.h"

void Librari(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = TRUE;
            this->animationState = this->timer;
            this->field_0x68.HALF.LO = GetFusionToOffer(this);
            AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
            SetDefaultPriority(this, PRIO_MESSAGE);
            sub_0807DD50(this);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                sub_0806F118(this);
            } else {
                ExecuteScriptForEntity(this, NULL);
                HandleEntity0x82Actions(this);
                UpdateAnimationSingleFrame(this);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
    }
}

void sub_0806B260(Entity* this, ScriptExecutionContext* context) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0X19),
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0X1a),
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0X22),
        TEXT_INDEX(TEXT_TOWN_MINISH1, 0X27),
    };
    u32 index;

    context->condition = 0;
    if (!GetInventoryValue(ITEM_FLIPPERS)) {
        if (CheckGlobalFlag(MIZUKAKI_START)) {
            index = 2;
            context->condition = 1;
        } else if (!CheckLocalFlag(0x7a)) {
            index = 0;
            SetLocalFlag(0x7a);
        } else {
            index = 1;
        }
    } else {
        index = 3;
    }
    MessageNoOverlap(messageIndices[index], this);
}

void sub_0806B2B4(Entity* this) {
    static const u16 messageIndices[] = {
        TEXT_INDEX(TEXT_MINISH, 0xad), TEXT_INDEX(TEXT_MINISH, 0xae), TEXT_INDEX(TEXT_MINISH, 0xaf),
        TEXT_INDEX(TEXT_MINISH, 0xb0), TEXT_INDEX(TEXT_MINISH, 0xb1),
    };
    u32 index;

    if (CheckLocalFlag(0xb3)) {
        if (!CheckRoomFlag(0)) {
            index = 1;
            SetRoomFlag(0);
        } else if (!CheckRoomFlag(1)) {
            index = 2;
            SetRoomFlag(1);
        } else if (!CheckRoomFlag(2)) {
            index = 3;
            SetRoomFlag(2);
        } else {
            index = 4;
            ClearRoomFlag(0);
            ClearRoomFlag(1);
            ClearRoomFlag(2);
        }
    } else {
        index = 0;
    }
    MessageNoOverlap(messageIndices[index], this);
}

void Librari_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = TRUE;
        InitAnimationForceUpdate(this, 9);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
