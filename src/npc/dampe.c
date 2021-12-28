#include "global.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "flags.h"
#include "textbox.h"
#include "npc.h"

extern u16 gUnk_08113344[];
extern u16 gUnk_0811334A[];

void Dampe(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            SetDefaultPriority(this, PRIO_MESSAGE);
            sub_0807DD50(this);
            return;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)) + 4);
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, 0);
            }
            return;
        case 2:
            UpdateAnimationSingleFrame(this);
            if (UpdateFuseInteraction(this)) {
                this->action = 1;
            }
    }
}

void sub_0806BE3C(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void Dampe_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_0806BE84(Entity* this, ScriptExecutionContext* context) {
    u32 msgIndex;

    context->condition = 0;
    msgIndex = 1;
    if (!CheckLocalFlag(DANPEI_TALK1ST)) {
        msgIndex = 0;
        SetLocalFlag(DANPEI_TALK1ST);
        context->condition = 1;
    }
    // Graveyard key
    if (GetInventoryValue(0x3C) >= 2) {
        msgIndex = 2;
    }
    MessageNoOverlap(gUnk_08113344[msgIndex], this);
}

void sub_0806BEC8(Entity* this, ScriptExecutionContext* context) {
    u32 hasGraveyardKey;
    u32 msgIndex;

    msgIndex = 0;
    context->condition = 0;
    hasGraveyardKey = GetInventoryValue(0x3C);
    if (hasGraveyardKey == 1) {
        msgIndex = 1;
        context->condition = 1;
    } else if (hasGraveyardKey >= 2) {
        msgIndex = 2;
    }

    MessageNoOverlap(gUnk_0811334A[msgIndex], this);
}

void sub_0806BEFC() {
    SetTileType(0x17E, 0x58E, 1);
    SetTileType(0x17F, 0x58F, 1);
    SetTileType(0x180, 0x5CE, 1);
    SetTileType(0x181, 0x5CF, 1);
}

void sub_0806BF44(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if (((this->x.HALF.HI - gRoomControls.roomScrollX) + 0x10U < 0x110) &&
        ((this->y.HALF.HI - gRoomControls.roomScrollY) + 0x18U < 0xD0)) {
        context->condition = 1;
    }
}
