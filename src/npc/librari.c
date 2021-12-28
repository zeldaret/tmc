#include "global.h"
#include "entity.h"
#include "npc.h"

extern u16 gUnk_08112D48[];

void Librari(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = TRUE;
            this->animationState = this->actionDelay;
            this->field_0x68.HALF.LO = sub_0801E99C(this);
            sub_08078784(this, this->field_0x68.HALF.LO);
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
    u32 index;

    context->condition = 0;
    // flippers
    if (!GetInventoryValue(0x46)) {
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
    MessageNoOverlap(gUnk_08112D48[index], this);
}

extern u16 gUnk_08112D50[];

void sub_0806B2B4(Entity* this) {
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
    MessageNoOverlap(gUnk_08112D50[index], this);
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
